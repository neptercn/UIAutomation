/*
  Show how to recieve callback of FocusChanged event.
*/
#SingleInstance,force
#Persistent
#Include uia.ahk
global $u:=new IUIAutomation,$e:=new IUIAutomationElement
$u.39(0,uia_OnEvent(pEvent,"OnFocus"))
return
OnFocus(self,sender){
	Critical
	ToolTip % $e.(sender).23
}
