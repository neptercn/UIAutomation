#SingleInstance,force
#Persistent
#Include uia.ahk
CoordMode,mouse,screen
global event
,$u:=new IUIAutomation
,$e:=new IUIAutomationElement
,$c:=new IUIAutomationCondition
,$r:=new IUIAutomationCacheRequest
gui,add,TreeView,w300 h400
gui,show
return
F8::
MouseGetPos,x,y,hwnd
BuildElementTree(hwnd)
return
BuildElementTree(hwnd){
  TV_Delete()
	$r.(_r:=$u.20).TreeScope:=7 
	$r.3(30005)
	if $u.3(_e:=$u.10(hwnd,_r),desktop:=$u.5),ObjRelease(desktop) 
		return
	id:=TV_Add($e.(_e).55)
	AddChildren(_e,id)
}
AddChildren(element,id){
	array:=$e.(element).19
	loop % $e.(array).length()
		i:=TV_Add($e.(newElement:=$e.(array).element(A_Index-1)).55,id)
		,AddChildren(newElement,i)
		,ObjRelease(newElement)
	ObjRelease(array)
}
