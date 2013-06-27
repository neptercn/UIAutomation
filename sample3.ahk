/*
  Show how to recieve callback of FocusChanged event.
*/
#SingleInstance,force
#Persistent
#Include uia.ahk
global event
,$u:=new IUIAutomation
,$e:=new IUIAutomationElement
,$c:=new IUIAutomationCacheRequest
$u.39(0,uia_event(pEvent,"OnFocus"))
return
OnFocus(self,sender){
	Critical
	ToolTip % $e.(sender).23
}
