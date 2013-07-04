#SingleInstance,force
#Persistent
#Include uia.ahk
CoordMode,mouse,screen
global $t:={} ; store tree node
,$u:=new IUIAutomation
,$e:=new IUIAutomationElement
,$c:=new IUIAutomationCondition
,$r:=new IUIAutomationCacheRequest
,$x:=ComObjCreate("MSXML2.DOMDocument")
$x.setProperty("SelectionLanguage","XPath")
gui,1:add,TreeView,w300 h600 gtvevent
gui,1:add,edit,w500 h600 X+5 yp vedit1 ReadOnly -wrap HScroll
return

F8::
  MouseGetPos,x,y,hwnd
	BuildElementTree(hwnd)
	gui,1:show
	return

tvevent:
	if A_GuiEvent = S
		ShowSelection(TV_GetSelection())
	return

BuildElementTree(hwnd){
	static init:=1,root,_r
	if init{
		init:=0, root:=$u.5, $r.(_r:=$u.20).TreeScope:=7, t:={}
		loop 111
			t.Insert(29999+A_Index)
		$r.3(t)
	}
	for k,v in $t
		ObjRelease(v)
	$t:={},	TV_Delete()
	if $u.3(_e:=$u.10(hwnd,_r),root)
		return
	$t[id:=TV_Add($e.(_e).55)]:=_e
	AddChildren(_e,id)
}
AddChildren(element,id){
	/*	test
	static init:=1,_r,condition
	if init{
		init:=0,$r.(_r:=$u.20).TreeScope:=1,t:={}
		loop 111
			t.Insert(29999+A_Index)
		$r.3(t)
		condition:=$u.23(30016,variant(p,0xB,0))
	}
	if array:=$e.(element).8(2,condition,_r)
	msgbox % $e.(array).length()
	ObjRelease(array)
	*/
	if !array:=$e.(element).19
		return
	loop % $e.(array).length()
		$t[newId:=TV_Add("""" $e.(newElement:=$e.(array).element(A_Index-1)).55 """ " $e.54,id)]:=newElement
		,AddChildren(newElement,newId)
	ObjRelease(array)
}
ShowSelection(id){
	global edit1
	$e.($t[id])
	cont:="Name:                               " $e.12(30005) "`n" 
		. "ControlType:                        " UIA_ControlType($e.12(30003)) "`n" ;
		. "LocalizedControlType:               " $e.12(30004) "`n" ;
		. "BoundingRectangle:                  " BoundingRectangle($e.12(30001)) "`n" ;
		. "IsEnabled:                          " Bool($e.12(30010)) "`n" ;
		. "IsOffscreen:                        " Bool($e.12(30022)) "`n" ;
		. "IsKeyboardFocusable:                " Bool($e.12(30009)) "`n" ;
		. "HasKeyboardFocus:                   " Bool($e.12(30008)) "`n" ;
		. "AccessKey:                          " $e.12(30007) "`n" ;
		. "ProcessId:                          " $e.12(30002) "`n" ;
		. "RuntimeId:                          " RuntimeId($e.12(30000)) "`n" ;
		. "AutomationId:                       " $e.12(30011) "`n" ;
		. "FrameworkId:                        " $e.12(30024) "`n" ;
		. "ClassName:                          " $e.12(30012) "`n" ;
		. "NativeWindowHandle:                 " $e.12(30020) "`n" ;
		. "IsContentElement:                   " $e.12(30017) "`n" ;
		. "ProviderDescription:                " $e.12(30107) "`n" ;
		. "IsPassword:                         " $e.12(30019) "`n" ;
		. "HelpText:                           " $e.12(30013) "`n" ;
		. "IsDockPatternAvailable:             " $e.12(30027) "`n" ;
	cont.="IsExpandCollapsePatternAvailable:   " $e.12(30028) "`n" ;
		. "IsGridItemPatternAvailable:         " $e.12(30029) "`n" ;
		. "IsGridPatternAvailable:             " $e.12(30030) "`n" ;
		. "IsInvokePatternAvailable:           " $e.12(30031) "`n" ;
		. "IsItemContainerPatternAvailable:    " $e.12(30108) "`n" ;
		. "IsLegacyIAccessiblePatternAvailable:" $e.12(30090) "`n" ;
		. "IsMultipleViewPatternAvailable:     " $e.12(30032) "`n" ;
		. "IsRangeValuePatternAvailable:       " $e.12(30033) "`n" ;
		. "IsScrollItemPatternAvailable:       " $e.12(30035) "`n" ;
		. "IsScrollPatternAvailable:           " $e.12(30034) "`n" ;
		. "IsSelectionItemPatternAvailable:    " $e.12(30036) "`n" ;
		. "IsSelectionPatternAvailable:        " $e.12(30037) "`n" ;
		. "IsSynchronizedInputPatternAvailable:" $e.12(30110) "`n" ;
		. "IsTableItemPatternAvailable:        " $e.12(30039) "`n" ;
		. "IsTablePatternAvailable:            " $e.12(30038) "`n" ;
		. "IsTextPatternAvailable:             " $e.12(30040) "`n" ;
		. "IsTogglePatternAvailable:           " $e.12(30041) "`n" ;
		. "IsTransformPatternAvailable:        " $e.12(30042) "`n" ;
		. "IsValuePatternAvailable:            " $e.12(30043) "`n" ;
		. "IsVirtualizedItemPatternAvailable:  " $e.12(30109) "`n" ;
		. "IsWindowPatternAvailable:           " $e.12(30044) "`n" ;
	GuiControl,1:,edit1,% cont
}
;;
;;Output Function
;;
RuntimeId(p){
	SetFormat,integer,hex
	VarSetCapacity(a,4)
	for k,v in p
		NumPut(v,a,"int")
		,s.=SubStr(NumGet(a,"uint"),3) "."
	StringTrimRight,s,s,1
	SetFormat,integer,d
	return s
}
BoundingRectangle(t){
	return (IsObject(t)?"l:" SubStr(t.1,1,InStr(t.1,".")-1) " t:" SubStr(t.2,1,InStr(t.2,".")-1) " r:" SubStr(t.3,1,InStr(t.3,".")-1) " b:" SubStr(t.4,1,InStr(t.4,".")-1):)
}
Bool(b){
	return b?"True":"False"
}
;;
;;Tree Functions
;;
AnalysisTree(id){
	$x.loadxml("")
	AnalysisNode(id)
}
AnalysisNode(id){
	; check Control Type
	if !newId:=TV_GetChild(id)
		return
	loop {
		ct:=$e.($t[newId]).12(30003)
		if (ct=50000){ ;Button
			
		}else if (ct=50001){ ;Calendar
		
		}else if (ct=50002){ ;CheckBox
		
		}else if (ct=50003){ ;ComboBox
		
		}else if (ct=50004){ ;Edit
			
		}else if (ct=50005){ ;link
		
		}else if (ct=50006){ ;Image
		
		}else if (ct=50007){ ;ListItem
		
		}else if (ct=50008){ ;ListView
		
		}else if (ct=50009){ ;Menu
		
		}else if (ct=50010){ ;MenuBar
			GetMenuBar(newId)
		}else if (ct=50011){ ;MenuItem
		
		}else if (ct=50012){ ;ProgressBar
		
		}else if (ct=50013){ ;Radio
		
		}else if (ct=50017){ ;StatusBar
		
		}else if (ct=50018){ ;Tab
		
		}else if (ct=50019){ ;Tab Item
		
		}else if (ct=50020){ ;Text
		
		}else if (ct=50021){ ;ToolBar
		
		}else if (ct=50023){ ;TreeView
		
		}else if (ct=50032){ ;Window
		
		}else if (ct=50033){ ;pane
		
		}else if (ct=50034){ ;Header
		
		}else if (ct=50035){ ;HeaderItem
		
		}else if (ct=50037){ ;TitleBar
		
		}else{
			
		}
		
		if !newId:=TV_GetNext(newId)
			break
	}
}

Winget(id){
	if !hwnd:=$e.($t[id]).12(30020)
		return 
	SetFormat,integer,hex
	WinGet,style,style,ahk_id %hwnd%
	WinGet,exstyle,exstyle,ahk_id %hwnd%
	WinGetClass,class,ahk_id %hwnd%
	SetFormat,integer,d
	return {hwnd:hwnd,class:class,style:style,exstyle:exstyle}
}

GetMenuBar(id){
	
}
;;
;;xml to AHK code
;;
xml2ahk(){
	
}
