;;;;;;;;;;;;;;;;;
;;UIA_Constants;;
;;;;;;;;;;;;;;;;;
/*
global UiaConstant:={0:0
; enum TreeScope
	,TreeScope_Element:0x1,TreeScope_Children:0x2,TreeScope_Descendants:0x4,TreeScope_Parent:0x8,TreeScope_Ancestors:0x10,TreeScope_Subtree:0x7
; enum PropertyConditionFlags	
	,PropertyConditionFlags_None:0,PropertyConditionFlags_IgnoreCase:1
; enum AutomationElementMode
	,AutomationElementMode_None:0,AutomationElementMode_Full:1}
UIA_PropertyId:={30000:"UIA_RuntimeIdPropertyId",30001:"UIA_BoundingRectanglePropertyId",30002:"UIA_ProcessIdPropertyId",30003:"UIA_ControlTypePropertyId",30004:"UIA_LocalizedControlTypePropertyId",30005:"UIA_NamePropertyId",30006:"UIA_AcceleratorKeyPropertyId",30007:"UIA_AccessKeyPropertyId",30008:"UIA_HasKeyboardFocusPropertyId",30009:"UIA_IsKeyboardFocusablePropertyId",30010:"UIA_IsEnabledPropertyId",30011:"UIA_AutomationIdPropertyId",30012:"UIA_ClassNamePropertyId",30013:"UIA_HelpTextPropertyId",30014:"UIA_ClickablePointPropertyId",30015:"UIA_CulturePropertyId",30016:"UIA_IsControlElementPropertyId",30017:"UIA_IsContentElementPropertyId",30018:"UIA_LabeledByPropertyId",30019:"UIA_IsPasswordPropertyId",30020:"UIA_NativeWindowHandlePropertyId",30021:"UIA_ItemTypePropertyId",30022:"UIA_IsOffscreenPropertyId",30023:"UIA_OrientationPropertyId",30024:"UIA_FrameworkIdPropertyId",30025:"UIA_IsRequiredForFormPropertyId",30026:"UIA_ItemStatusPropertyId",30027:"UIA_IsDockPatternAvailablePropertyId",30028:"UIA_IsExpandCollapsePatternAvailablePropertyId",30029:"UIA_IsGridItemPatternAvailablePropertyId",30030:"UIA_IsGridPatternAvailablePropertyId",30031:"UIA_IsInvokePatternAvailablePropertyId",30032:"UIA_IsMultipleViewPatternAvailablePropertyId",30033:"UIA_IsRangeValuePatternAvailablePropertyId",30034:"UIA_IsScrollPatternAvailablePropertyId",30035:"UIA_IsScrollItemPatternAvailablePropertyId",30036:"UIA_IsSelectionItemPatternAvailablePropertyId",30037:"UIA_IsSelectionPatternAvailablePropertyId",30038:"UIA_IsTablePatternAvailablePropertyId",30039:"UIA_IsTableItemPatternAvailablePropertyId",30040:"UIA_IsTextPatternAvailablePropertyId",30041:"UIA_IsTogglePatternAvailablePropertyId",30042:"UIA_IsTransformPatternAvailablePropertyId",30043:"UIA_IsValuePatternAvailablePropertyId",30044:"UIA_IsWindowPatternAvailablePropertyId",30045:"UIA_ValueValuePropertyId",30046:"UIA_ValueIsReadOnlyPropertyId",30047:"UIA_RangeValueValuePropertyId",30048:"UIA_RangeValueIsReadOnlyPropertyId",30049:"UIA_RangeValueMinimumPropertyId",30050:"UIA_RangeValueMaximumPropertyId",30051:"UIA_RangeValueLargeChangePropertyId",30052:"UIA_RangeValueSmallChangePropertyId",30053:"UIA_ScrollHorizontalScrollPercentPropertyId",30054:"UIA_ScrollHorizontalViewSizePropertyId",30055:"UIA_ScrollVerticalScrollPercentPropertyId",30056:"UIA_ScrollVerticalViewSizePropertyId",30057:"UIA_ScrollHorizontallyScrollablePropertyId",30058:"UIA_ScrollVerticallyScrollablePropertyId",30059:"UIA_SelectionSelectionPropertyId",30060:"UIA_SelectionCanSelectMultiplePropertyId",30061:"UIA_SelectionIsSelectionRequiredPropertyId",30062:"UIA_GridRowCountPropertyId",30063:"UIA_GridColumnCountPropertyId",30064:"UIA_GridItemRowPropertyId",30065:"UIA_GridItemColumnPropertyId",30066:"UIA_GridItemRowSpanPropertyId",30067:"UIA_GridItemColumnSpanPropertyId",30068:"UIA_GridItemContainingGridPropertyId",30069:"UIA_DockDockPositionPropertyId",30070:"UIA_ExpandCollapseExpandCollapseStatePropertyId",30071:"UIA_MultipleViewCurrentViewPropertyId",30072:"UIA_MultipleViewSupportedViewsPropertyId",30073:"UIA_WindowCanMaximizePropertyId",30074:"UIA_WindowCanMinimizePropertyId",30075:"UIA_WindowWindowVisualStatePropertyId",30076:"UIA_WindowWindowInteractionStatePropertyId",30077:"UIA_WindowIsModalPropertyId",30078:"UIA_WindowIsTopmostPropertyId",30079:"UIA_SelectionItemIsSelectedPropertyId",30080:"UIA_SelectionItemSelectionContainerPropertyId",30081:"UIA_TableRowHeadersPropertyId",30082:"UIA_TableColumnHeadersPropertyId",30083:"UIA_TableRowOrColumnMajorPropertyId",30084:"UIA_TableItemRowHeaderItemsPropertyId",30085:"UIA_TableItemColumnHeaderItemsPropertyId",30086:"UIA_ToggleToggleStatePropertyId",30087:"UIA_TransformCanMovePropertyId",30088:"UIA_TransformCanResizePropertyId",30089:"UIA_TransformCanRotatePropertyId",30090:"UIA_IsLegacyIAccessiblePatternAvailablePropertyId",30091:"UIA_LegacyIAccessibleChildIdPropertyId",30092:"UIA_LegacyIAccessibleNamePropertyId",30093:"UIA_LegacyIAccessibleValuePropertyId",30094:"UIA_LegacyIAccessibleDescriptionPropertyId",30095:"UIA_LegacyIAccessibleRolePropertyId",30096:"UIA_LegacyIAccessibleStatePropertyId",30097:"UIA_LegacyIAccessibleHelpPropertyId",30098:"UIA_LegacyIAccessibleKeyboardShortcutPropertyId",30099:"UIA_LegacyIAccessibleSelectionPropertyId",30100:"UIA_LegacyIAccessibleDefaultActionPropertyId",30101:"UIA_AriaRolePropertyId",30102:"UIA_AriaPropertiesPropertyId",30103:"UIA_IsDataValidForFormPropertyId",30104:"UIA_ControllerForPropertyId",30105:"UIA_DescribedByPropertyId",30106:"UIA_FlowsToPropertyId",30107:"UIA_ProviderDescriptionPropertyId",30108:"UIA_IsItemContainerPatternAvailablePropertyId",30109:"UIA_IsVirtualizedItemPatternAvailablePropertyId",30110:"UIA_IsSynchronizedInputPatternAvailablePropertyId"}

*/
;;
;;Base Interface;;not completed
;;
class IBase
{
	__new(){
		clsid:=this.clsid&&iid:=this.iid?this.__:=ComObjCreate(clsid,iid):this._p:=0
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this.__)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
}
;;;;;;;;;;;;;;;;;
;;IUIAutomation;;
;;;;;;;;;;;;;;;;;
class IUIAutomation ;extends IUnknown
{
	__new(){
		;DllCall("ole32\CoInitializeEx", "Uint", 0,"uint",8) ; Multithread flag
		;DllCall("ole32\CoCreateInstance","Uint",guid(CLSID,"{ff48dba4-60ef-4201-aa87-54103eef594e}"),"Uint",0,"Uint",5,"Uint",guid(iid,"{30cbe57d-d9d0-452a-ab13-7ac5ac4825ee}"),"UintP", ppv)
		;this.__:=ppv
		this.__:=ComObjCreate("{ff48dba4-60ef-4201-aa87-54103eef594e}","{30cbe57d-d9d0-452a-ab13-7ac5ac4825ee}")
		this._i:={0:"QueryInterface",1:"AddRef",2:"Release",3:"CompareElements",4:"CompareRuntimeIds",5:"GetRootElement",6:"ElementFromHandle",7:"ElementFromPoint",8:"GetFocusedElement",9:"GetRootElementBuildCache",10:"ElementFromHandleBuildCache",11:"ElementFromPointBuildCache",12:"GetFocusedElementBuildCache",13:"CreateTreeWalker",14:"ControlViewWalker",15:"ContentViewWalker",16:"RawViewWalker",17:"RawViewCondition",18:"ControlViewCondition",19:"ContentViewCondition",20:"CreateCacheRequest",21:"CreateTrueCondition",22:"CreateFalseCondition",23:"CreatePropertyCondition",24:"CreatePropertyConditionEx",25:"CreateAndCondition",26:"CreateAndConditionFromArray",27:"CreateAndConditionFromNativeArray",28:"CreateOrCondition",29:"CreateOrConditionFromArray",30:"CreateOrConditionFromNativeArray",31:"CreateNotCondition",32:"AddAutomationEventHandler",33:"RemoveAutomationEventHandler",34:"AddPropertyChangedEventHandlerNativeArray",35:"AddPropertyChangedEventHandler",36:"RemovePropertyChangedEventHandler",37:"AddStructureChangedEventHandler",38:"RemoveStructureChangedEventHandler",39:"AddFocusChangedEventHandler",40:"RemoveFocusChangedEventHandler",41:"RemoveAllEventHandlers",42:"IntNativeArrayToSafeArray",43:"IntSafeArrayToNativeArray",44:"RectToVariant",45:"VariantToRect",46:"SafeArrayToRectNativeArray",47:"CreateProxyFactoryEntry",48:"ProxyFactoryMapping",49:"GetPropertyProgrammaticName",50:"GetPatternProgrammaticName",51:"PollForPotentialSupportedPatterns",52:"PollForPotentialSupportedProperties",53:"CheckNotSupported",54:"ReservedNotSupportedValue",55:"ReservedMixedAttributeValue",56:"ElementFromIAccessible",57:"ElementFromIAccessibleBuildCache"}
		this._e:={root:5,desktop:5}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName){
				return this[this._i[aName]](aParam*)
			}
		else if (aName=""){
			aP:=aParam.1
			if aP is Integer
				this._p:=aP
			else
				this._if:=aP
		}else if this._e.haskey(aName)
			return this[this._e[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this._p)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
		else if this._e.haskey(aName)
			return this[this._e[aName]]()
	}
	; 比较两个el是否相同
	CompareElements(el1,el2){
		_Error(DllCall(vt(this.__,3),"ptr",this.__,"ptr",el1,"ptr",el2,"int*",areSame),"CompareElements")
		return areSame
	}
	; 比较runtimeid是否相同
	CompareRuntimeIds(runtimeId1,runtimeId2){
		_Error(DllCall(vt(this.__,4),"ptr",this.__,"ptr",runtimeId1,"ptr",runtimeId2,"int*",areSame),"CompareRuntimeIds")
		return areSame
	}
	; 获取桌面元素
	GetRootElement(){
		_Error(DllCall(vt(this.__,5),"ptr",this.__,"ptr*",root),"GetRootElement")
		return root
	}
	; 根据窗口句柄获得元素
	ElementFromHandle(hwnd){
		_Error(DllCall(vt(this.__,6),"ptr",this.__,"ptr",hwnd,"ptr*",element),"ElementFromHandle")
		return element
	}
	; 根据坐标获取元素
	ElementFromPoint(pt){
		_Error(DllCall(vt(this.__,7),"ptr",this.__,"int64",pt,"ptr*",element),"ElementFromPoint")
		return element
	}
	; 获得焦点元素
	GetFocusedElement(){
		_Error(DllCall(vt(this.__,8),"ptr",this.__,"ptr*",element),"GetFocusedElement")
		return element
	}
	; 获取桌面元素 Cache
	GetRootElementBuildCache(cacheRequest){
		_Error(DllCall(vt(this.__,9),"ptr",this.__,"ptr",cacheRequest,"ptr*",root),"GetRootElementBuildCache")
		return root
	}
	; 根据窗口句柄获得元素 cache
	ElementFromHandleBuildCache(hwnd,cacheRequest){
		_Error(DllCall(vt(this.__,10),"ptr",this.__,"ptr",hwnd,"ptr",cacheRequest,"ptr*",element),"ElementFromHandleBuildCache")
		return element
	}
	; 根据坐标获取元素 cache
	ElementFromPointBuildCache(pt,cacheRequest){
		_Error(DllCall(vt(this.__,11),"ptr",this.__,"int64",pt,"ptr",cacheRequest,"ptr*",element),"ElementFromPointBuildCache")
		return element
	}
	; 获得焦点元素 cache
	GetFocusedElementBuildCache(cacheRequest,Byref element){
		_Error(DllCall(vt(this.__,12),"ptr",this.__,"ptr",cacheRequest,"ptr*",element),"GetFocusedElementBuildCache")
		return element
	}
	; 创建walker
	CreateTreeWalker(pCondition){
		_Error(DllCall(vt(this.__,13),"ptr",this.__,"ptr",pCondition,"ptr*",walker),"CreateTreeWalker")
		return walker
	}
	; 获取控件walker
	ControlViewWalker(walker){
		_Error(DllCall(vt(this.__,14),"ptr",this.__,"ptr*",walker),"ControlViewWalker")
		return walker
	}
	; 获取内容walker
	ContentViewWalker(walker){
		_Error(DllCall(vt(this.__,15),"ptr",this.__,"ptr*",walker),"ContentViewWalker")
		return walker
	}
	; 获取元素walker
	RawViewWalker(walker){
		_Error(DllCall(vt(this.__,16),"ptr",this.__,"ptr*",walker),"RawViewWalker")
		return walker
	}
	; 获取元素条件
	RawViewCondition(condition){
		_Error(DllCall(vt(this.__,17),"ptr",this.__,"ptr*",condition),"RawViewCondition")
		return condition
	}
	; 获取控件条件
	ControlViewCondition(condition){
		_Error(DllCall(vt(this.__,18),"ptr",this.__,"ptr*",condition),"ControlViewCondition")
		return condition
	}
	; 获取内容条件
	ContentViewCondition(condition){
		_Error(DllCall(vt(this.__,19),"ptr",this.__,"ptr*",condition),"ContentViewCondition")
		return condition
	}
	; 创建cache
	CreateCacheRequest(){
		_Error(DllCall(vt(this.__,20),"ptr",this.__,"ptr*",cacheRequest),"CreateCacheRequest")
		return cacheRequest
	}
	; 创建True条件
	CreateTrueCondition(){
		_Error(DllCall(vt(this.__,21),"ptr",this.__,"ptr*",newCondition),"CreateTrueCondition")
		return newCondition
	}
	; 创建False条件
	CreateFalseCondition(){
		_Error(DllCall(vt(this.__,22),"ptr",this.__,"ptr*",newCondition),"CreateFalseCondition")
		return newCondition
	}
	; 创建属性条件
	CreatePropertyCondition(propertyId,value){
		_Error(DllCall(vt(this.__,23),"ptr",this.__,"int",propertyId,"ptr",value,"ptr*",newCondition),"CreatePropertyCondition")
		return newCondition
	}
	; 创建属性条件ex
	CreatePropertyConditionEx(propertyId,value,flags){
		_Error(DllCall(vt(this.__,24),"ptr",this.__,"int",propertyId,"ptr",value,"int",flags,"ptr*",newCondition),"CreatePropertyConditionEx")
		return newCondition
	}
	; 创建and条件
	CreateAndCondition(condition1,condition2){
		_Error(DllCall(vt(this.__,25),"ptr",this.__,"ptr",condition1,"ptr",condition2,"ptr*",newCondition),"CreateAndCondition")
		return newCondition
	}
	; 从array中创建and条件
	CreateAndConditionFromArray(conditions){
		_Error(DllCall(vt(this.__,26),"ptr",this.__,"ptr",conditions,"ptr*",newCondition),"CreateAndConditionFromArray")
		return newCondition
	}
	; 从native array中创建and条件
	CreateAndConditionFromNativeArray(conditions,conditionCount){
		_Error(DllCall(vt(this.__,27),"ptr",this.__,"ptr",conditions,"int",conditionCount,"ptr*",newCondition),"CreateAndConditionFromNativeArray")
		return newCondition
	}
	; 创建or条件
	CreateOrCondition(condition1,condition2){
		_Error(DllCall(vt(this.__,28),"ptr",this.__,"ptr",condition1,"ptr",condition2,"ptr*",newCondition),"CreateOrCondition")
		return newCondition
	}
	; 从array中创建or条件
	CreateOrConditionFromArray(conditions){
		_Error(DllCall(vt(this.__,29),"ptr",this.__,"ptr",conditions,"ptr*",newCondition),"CreateOrConditionFromArray")
		return newCondition
	}
	; 从native array中创建or条件
	CreateOrConditionFromNativeArray(conditions,conditionCount){
		_Error(DllCall(vt(this.__,30),"ptr",this.__,"ptr",conditions,"ptr",conditionCount,"ptr*",newCondition),"CreateOrConditionFromNativeArray")
		return newCondition
	}
	; 创建not条件
	CreateNotCondition(condition){
		_Error(DllCall(vt(this.__,31),"ptr",this.__,"ptr",condition,"ptr*",newCondition),"CreateNotCondition")
		return newCondition
	}
	; 添加自动化事件响应
	AddAutomationEventHandler(eventId,element,scope,cacheRequest,handler){
		return _Error(DllCall(vt(this.__,32),"ptr",this.__,"int",eventId,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler),"AddAutomationEventHandler")
	}
	; 移除自动化事件响应
	RemoveAutomationEventHandler(eventId,element,handler){
		return _Error(DllCall(vt(this.__,33),"ptr",this.__,"int",eventId,"ptr",element,"ptr",handler),"RemoveAutomationEventHandler")
	}
	; 从NativeArray添加属性变化事件响应
	AddPropertyChangedEventHandlerNativeArray(element,scope,cacheRequest,handler,propertyArray,propertyCount){
		return _Error(DllCall(vt(this.__,34),"ptr",this.__,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler,"ptr",propertyArray,"int",propertyCount),"AddPropertyChangedEventHandlerNativeArray")
	}
	; 添加属性变化事件响应
	AddPropertyChangedEventHandler(element,scope,cacheRequest,handler,propertyArray){
		return _Error(DllCall(vt(this.__,35),"ptr",this.__,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler,"ptr",propertyArray),"AddPropertyChangedEventHandler")
	}
	; 移除属性变化事件响应
	RemovePropertyChangedEventHandler(element,handler){
		return _Error(DllCall(vt(this.__,36),"ptr",this.__,"ptr",element,"ptr",handler),"RemovePropertyChangedEventHandler")
	}
	; 添加结构变化事件响应
	AddStructureChangedEventHandler(element,scope,cacheRequest,handler){
		return _Error(DllCall(vt(this.__,37),"ptr",this.__,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler),"AddStructureChangedEventHandler")
	}
	; 移除结构变化事件响应
	RemoveStructureChangedEventHandler(element,handler){
		return _Error(DllCall(vt(this.__,38),"ptr",this.__,"ptr",element,"ptr",handler),"RemoveStructureChangedEventHandler")
	}
	; 添加焦点变化事件响应
	AddFocusChangedEventHandler(cacheRequest,handler){
		return _Error(DllCall(vt(this.__,39),"ptr",this.__,"ptr",cacheRequest,"ptr",handler),"AddFocusChangedEventHandler")
	}
	; 移除焦点变化事件响应
	RemoveFocusChangedEventHandler(handler){
		return _Error(DllCall(vt(this.__,40),"ptr",this.__,"ptr",handler),"RemoveFocusChangedEventHandler")
	}
	; 焦点所有事件响应
	RemoveAllEventHandlers(){
		return _Error(DllCall(vt(this.__,41),"ptr",this.__),"RemoveAllEventHandlers")
	}
	; NativeArray转SafeArray
	IntNativeArrayToSafeArray(array,arrayCount){
		_Error(DllCall(vt(this.__,42),"ptr",this.__,"ptr",array,"int",arrayCount,"ptr*",safeArray),"IntNativeArrayToSafeArray")
		return safeArray
	}
	; SafeArray转NativeArray
	IntSafeArrayToNativeArray(intArray,Byref array,Byref arrayCount){
		_Error(DllCall(vt(this.__,43),"ptr",this.__,"ptr",intArray,"ptr*",array,"int*",arrayCount),"IntSafeArrayToNativeArray")
		return 
	}
	; RectTo转Variant
	RectToVariant(rc){
		_Error(DllCall(vt(this.__,44),"ptr",this.__,"ptr",rc,"ptr*",var),"RectToVariant")
		return var
	}
	; Variant转Rect
	VariantToRect(var){
		_Error(DllCall(vt(this.__,45),"ptr",this.__,"ptr",var,"ptr*",rc),"VariantToRect")
		return rc
	}
	; SafeArray转RectNativeArray
	SafeArrayToRectNativeArray(rects,Byref rectArray,Byref rectArrayCount){
		_Error(DllCall(vt(this.__,46),"ptr",this.__,"ptr",rects,"ptr*",rectArray,"int*",rectArrayCount),"SafeArrayToRectNativeArray")
		return 
	}
	; 
	CreateProxyFactoryEntry(factory){
		_Error(DllCall(vt(this.__,47),"ptr",this.__,"ptr",factory,"ptr*",factoryEntry),"CreateProxyFactoryEntry")
		return factoryEntry
	}
	; 
	ProxyFactoryMapping(){
		_Error(DllCall(vt(this.__,48),"ptr",this.__,"ptr*",factoryMapping),"ProxyFactoryMapping")
		return factoryMapping
	}
	; 获取属性名称
	GetPropertyProgrammaticName(property){
		_Error(DllCall(vt(this.__,49),"ptr",this.__,"int",property,"ptr*",name),"GetPropertyProgrammaticName")
		return StrGet(name,"utf-16")
	}
	; 获取模式名称
	GetPatternProgrammaticName(pattern){
		_Error(DllCall(vt(this.__,50),"ptr",this.__,"int",pattern,"ptr*",name),"GetPatternProgrammaticName")
		return StrGet(name,"utf-16")
	}
	; 
	PollForPotentialSupportedPatterns(pElement,Byref patternIds,Byref patternNames){
		_Error(DllCall(vt(this.__,51),"ptr",this.__,"ptr",pElement,"ptr*",patternIds,"ptr*",patternNames),"PollForPotentialSupportedPatterns")
		return 
	}
	; 
	PollForPotentialSupportedProperties(pElement,Byref propertyIds,Byref propertyNames){
		_Error(DllCall(vt(this.__,52),"ptr",this.__,"ptr",pElement,"ptr*",propertyIds,"ptr*",propertyNames),"PollForPotentialSupportedProperties")
		return 
	}
	; 
	CheckNotSupported(value){
		_Error(DllCall(vt(this.__,53),"ptr",this.__,"ptr",value,"int*",isNotSupported),"CheckNotSupported")
		return isNotSupported
	}
	; 
	ReservedNotSupportedValue(){
		_Error(DllCall(vt(this.__,54),"ptr",this.__,"ptr*",notSupportedValue),"ReservedNotSupportedValue")
		return notSupportedValue
	}
	; 
	ReservedMixedAttributeValue(){
		_Error(DllCall(vt(this.__,55),"ptr",this.__,"ptr*",mixedAttributeValue),"ReservedMixedAttributeValue")
		return mixedAttributeValue
	}
	; 获取acc元素
	ElementFromIAccessible(accessible,childId){
		_Error(DllCall(vt(this.__,56),"ptr",this.__,"ptr",accessible,"int",childId,"ptr*",element),"ElementFromIAccessible")
		return element
	}
	; 获取acc元素 cache
	ElementFromIAccessibleBuildCache(accessible,childId,cacheRequest){
		_Error(DllCall(vt(this.__,57),"ptr",this.__,"ptr",accessible,"int",childId,"ptr",cacheRequest,"ptr*",element),"ElementFromIAccessibleBuildCache")
		return element
	}
}
;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationElement;;
;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAutomationElement
{
	__new(){
		this._p:=0
		this._i:={0:"QueryInterface",1:"AddRef",2:"Release",3:"SetFocus",4:"GetRuntimeId",5:"FindFirst",6:"FindAll",7:"FindFirstBuildCache",8:"FindAllBuildCache",9:"BuildUpdatedCache",10:"GetCurrentPropertyValue",11:"GetCurrentPropertyValueEx",12:"GetCachedPropertyValue",13:"GetCachedPropertyValueEx",14:"GetCurrentPatternAs",15:"GetCachedPatternAs",16:"GetCurrentPattern",17:"GetCachedPattern",18:"GetCachedParent",19:"GetCachedChildren",84:"GetClickablePoint"}
		this._n:={20:0,21:0,22:1,23:1,24:1,25:1,26:0,27:0,28:0,29:1,30:1,31:1,32:0,33:0,34:0,35:0,36:0,37:1,38:0,39:0,40:1,41:0,42:1,43:2,44:0,45:1,46:1,47:1,48:1,49:1,50:1,51:1,52:1,53:1,54:1,55:1,56:1,57:1,58:1,59:1,60:1,61:1,62:1,63:1,64:1,65:1,66:1,67:1,68:1,69:1,70:1,71:1,72:1,73:1,74:1,75:1,76:1,77:1,78:1,79:1,80:1,81:1,82:1,83:1}
		this._t:={CurrentProcessId:20,CurrentControlType:21,CurrentHasKeyboardFocus:26,CurrentIsKeyboardFocusable:27,CurrentIsEnabled:28,CurrentCulture:32,CurrentIsControlElement:33,CurrentIsContentElement:34,CurrentIsPassword:35,CurrentNativeWindowHandle:36,CurrentIsOffscreen:38,CurrentOrientation:39,CurrentIsRequiredForForm:41,CurrentLabeledBy:44}
		this._s:={CurrentLocalizedControlType:22,CurrentName:23,CurrentAcceleratorKey:24,CurrentAccessKey:25,CurrentAutomationId:29,CurrentClassName:30,CurrentHelpText:31,CurrentItemType:37,CurrentFrameworkId:40,CurrentItemStatus:42,CurrentAriaRole:45,CurrentAriaProperties:46,CurrentIsDataValidForForm:47,CurrentControllerFor:48,CurrentDescribedBy:49,CurrentFlowsTo:50,CurrentProviderDescription:51,CachedProcessId:52,CachedControlType:53,CachedLocalizedControlType:54,CachedName:55,CachedAcceleratorKey:56,CachedAccessKey:57,CachedHasKeyboardFocus:58,CachedIsKeyboardFocusable:59,CachedIsEnabled:60,CachedAutomationId:61,CachedClassName:62,CachedHelpText:63,CachedCulture:64,CachedIsControlElement:65,CachedIsContentElement:66,CachedIsPassword:67,CachedNativeWindowHandle:68,CachedItemType:69,CachedIsOffscreen:70,CachedOrientation:71,CachedFrameworkId:72,CachedIsRequiredForForm:73,CachedItemStatus:74,CachedBoundingRectangle:75,CachedLabeledBy:76,CachedAriaRole:77,CachedAriaProperties:78,CachedIsDataValidForForm:79,CachedControllerFor:80,CachedDescribedBy:81,CachedFlowsTo:82,CachedProviderDescription:83}
		this._6:={CurrentBoundingRectangle:43}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
			else if this._n.haskey(aName){
				DllCall(vt(this._p,aName),"ptr",this._p,this._n[aName]=2?"int64*":"ptr*",retVal)
				return this._n[aName]?StrGet(retVal):retVal
			}
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}else if this._t.haskey(aName){
			DllCall(vt(this._p,this._t[aName]),"ptr",this._p,"ptr*",retVal)
			return retVal
		}else if this._s.haskey(aName){
			DllCall(vt(this._p,this._s[aName]),"ptr",this._p,"ptr*",retVal)
			return StrGet(retVal)
		}else if this._6.haskey(aName){
			DllCall(vt(this._p,this._s[aName]),"ptr",this._p,"int64*",retVal)
			return retVal
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
		else if this._n.haskey(aName){
			DllCall(vt(this._p,aName),"ptr",this._p,this._n[aName]=2?"int64*":"ptr*",retVal)
			return this._n[aName]?StrGet(retVal):retVal
		}else if this._t.haskey(aName){
			DllCall(vt(this._p,this._t[aName]),"ptr",this._p,"ptr*",retVal)
			return retVal
		}else if this._s.haskey(aName){
			DllCall(vt(this._p,this._s[aName]),"ptr",this._p,"ptr*",retVal)
			return StrGet(retVal)
		}else if this._6.haskey(aName){
			DllCall(vt(this._p,this._s[aName]),"ptr",this._p,"int64*",retVal)
			return retVal
		}else msgbox %aName% does not exist.
	}

	SetFocus(){
	return _Error(DllCall(vt(this._p,3),"ptr",this.ptr),"SetFocus")
	}

	GetRuntimeId(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",runtimeId),"GetRuntimeId")
	return runtimeId
	}

	FindFirst(scope,condition){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int",scope,"ptr",condition,"ptr*",found),"FindFirst")
	return found
	}

	FindAll(scope,condition){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int",scope,"ptr",condition,"ptr*",found),"FindAll")
	return found
	}

	FindFirstBuildCache(scope,condition,cacheRequest){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int",scope,"ptr",condition,"ptr",cacheRequest,"ptr*",found),"FindFirstBuildCache")
	return found
	}

	FindAllBuildCache(scope,condition,cacheRequest){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int",scope,"ptr",condition,"ptr",cacheRequest,"ptr*",found),"FindAllBuildCache")
	return found
	}

	BuildUpdatedCache(cacheRequest){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",cacheRequest,"ptr*",updatedElement),"BuildUpdatedCache")
	return updatedElement
	}

	GetCurrentPropertyValue(propertyId){
	static _,_v:=variant(_)
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"int",propertyId,"ptr",_v),"GetCurrentPropertyValue")
	return this.Value(_v)
	}

	GetCurrentPropertyValueEx(propertyId,ignoreDefaultValue){
	static _,_v:=variant(_)
	return _Error(DllCall(vt(this._p,11),"ptr",this._p,"int",propertyId,"int",ignoreDefaultValue,"ptr",_v),"GetCurrentPropertyValueEx")
	return this.Value(_v)
	}

	GetCachedPropertyValue(propertyId){
	static _,_v:=variant(_)
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"int",propertyId,"ptr",_v),"GetCachedPropertyValue")
	return this.Value(_v)
	}

	GetCachedPropertyValueEx(propertyId,ignoreDefaultValue,retVal){
	static _,_v:=variant(_)
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"int",propertyId,"int",ignoreDefaultValue,"ptr",_v),"GetCachedPropertyValueEx")
	return this.Value(_v)
	}

	GetCurrentPatternAs(patternId,riid){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"int",patternId,"ptr",riid,"ptr*",patternObject),"GetCurrentPatternAs")
	return patternObject
	}

	GetCachedPatternAs(patternId,riid){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"int",patternId,"ptr",riid,"ptr*",patternObject),"GetCachedPatternAs")
	return patternObject
	}

	GetCurrentPattern(patternId){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"int",patternId,"ptr*",patternObject),"GetCurrentPattern")
	return patternObject
	}

	GetCachedPattern(patternId){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"int",patternId,"ptr*",patternObject),"GetCachedPattern")
	return patternObject
	}

	GetCachedParent(){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"ptr*",parent),"GetCachedParent")
	return parent
	}

	GetCachedChildren(){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr*",children),"GetCachedChildren")
	return children
	}
	
	GetClickablePoint(Byref clickable,Byref gotClickable){
	_Error(DllCall(vt(this._p,84),"ptr",this._p,"int64*",clickable,"int*",gotClickable),"GetClickablePoint")
	return
	}
;;;;;;;;;;;;;;
;;propertyid;;
;;;;;;;;;;;;;;
	Value(v){ ; v:variant
		if (type:=NumGet(v+0,"ushort"))&0x2000{
			return SafeArray(NumGet(v+8),type&0xFF)
		}else {
			out:=type=2?NumGet(v+8,"short")	; 16 位有符号整数
			:type=3?NumGet(v+8,"int")	; 32 位有符号整数
			:type=4?NumGet(v+8,"float")	; 32 位浮点数
			:type=5?NumGet(v+8,"double")	; 64 位浮点数
			:type=8?StrGet(NumGet(v+8),"utf-16")	; COM 字符串 (带长度前缀的 Unicode 字符串)
			:type=0xA?NumGet(v+8,"uint")	; Error 码 (32 位整数)
			:type=0xB?NumGet(v+8,"short")	; 布尔值 True (-1) 或 False (0)
			:type=0x10?NumGet(v+8,"char")	; 8 位有符号整数
			:type=0x11?NumGet(v+8,"uchar")	; 8 位无符号整数
			:type=0x12?NumGet(v+8,"ushort")	; 16 位无符号整数
			:type=0x13?NumGet(v+8,"uint")	; 32 位无符号整数
			:type=0x14?NumGet(v+8,"int64")	; 64 位有符号整数
			:type=0x15?NumGet(v+8,"uint64")	; 64 位无符号整数
			:NumGet(v+8)
			return out
		}
	}

;;;;;;;;;;;;;;;;
;;ElementArray;;
;;;;;;;;;;;;;;;;
	Length(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",length),"get_Length")
	return length
  }

  Element(index){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int",index,"ptr*",element),"GetElement")
	return element
  }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationCacheRequest;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAutomationCacheRequest
{
	__new(){
		this._p:=0,this._i:={3:"AddProperty",4:"AddPattern",5:"Clone"}
	}
	__get(aName){
		if (aName="TreeScope"){
			_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",scope),"get_TreeScope")
			return scope
		}else if (aName="TreeFilter"){
			_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr*",filter),"get_TreeFilter")
			return filter
		}else if (aName="AutomationElementMode"){
			_Error(DllCall(vt(this._p,10),"ptr",this._p,"int*",mode),"get_AutomationElementMode")
			return mode
		}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName="")&&(this._p:=aParam.1)
			return this
	}
	__set(aName,aValue){
		if (aName="TreeScope")
			return _Error(DllCall(vt(this._p,7),"ptr",this._p,"int",aValue),"put_TreeScope")
		else if (aName="TreeFilter")
			return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",aValue),"put_TreeFilter")
		else if (aName="AutomationElementMode")
			return _Error(DllCall(vt(this._p,11),"ptr",this._p,"int",aValue),"put_AutomationElementMode")
	}
  AddProperty(propertyId){
	if IsObject(propertyId)
		loop % propertyId.maxindex()
			_Error(DllCall(vt(this._p,3),"ptr",this._p,"int",propertyId[A_Index]),"AddProperty")
	else return _Error(DllCall(vt(this._p,3),"ptr",this._p,"int",propertyId),"AddProperty")
  }
  AddPattern(patternId){
	if IsObject(patternId)
		loop % patternId.maxindex()
			_Error(DllCall(vt(this._p,3),"ptr",this._p,"int",patternId[A_Index]),"AddProperty")
	else return _Error(DllCall(vt(this._p,4),"ptr",this._p,"int",patternId),"AddPattern")
  }
  Clone(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",clonedRequest),"Clone")
	return clonedRequest
  }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationCondition;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAutomationCondition
{
	__new(){
		this._p:=0,this._i:=0,this._t:={property:"property_",bool:"bool_",and:"and_",or:"or_",not:"not_"}
	}
	__get(aName){
		if !instr(aName,"_")
			return this[this._i aName]()
		else return this[aName]()
	}
	__call(aName,aParam*){
		if (aName="")&&(this._p:=aParam.1)&&(this._i:=this._t[aParam.2])
			return this
		else if !instr(aName,"_")
			return this[this._i aName](aParam*)
	}
	property_id(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",propertyId),"get_PropertyId")
		return propertyId
	}
	property_value(){
		_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",variant(propertyValue)),"get_PropertyValue")
		;return propertyValue
	}
	property_flags(){
		_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",flags),"get_PropertyConditionFlags")
		return flags
	}
	bool_value(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",boolVal),"get_BooleanValue")
		return boolVal
	}
	and_count(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",childCount),"get_ChildCount")
		return childCoun
	}
	and_ChildrenAsNativeArray(Byref childArray,Byref childArrayCount){
		_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",childArray,"int*",childArrayCount),"GetChildrenAsNativeArray")
		return
	}
	and_Children(){
		_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",childArray),"GetChildren")
		return childArray
	}
	or_count(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",childCount),"get_ChildCount")
		return childCoun
	}
	or_ChildrenAsNativeArray(Byref childArray,Byref childArrayCount){
		_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",childArray,"int*",childArrayCount),"GetChildrenAsNativeArray")
		return
	}
	or_Children(){
		_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",childArray),"GetChildren")
		return childArray
	}
	not_Child(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",condition),"GetChild")
		return condition
	}
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationTreeWalker;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAutomationTreeWalker
{
	__new(){
		this._p:=0,this._i:={3:"GetParentElement",4:"GetFirstChildElement",5:"GetLastChildElement",6:"GetNextSiblingElement",7:"GetPreviousSiblingElement",8:"NormalizeElement",9:"GetParentElementBuildCache",10:"GetFirstChildElementBuildCache",11:"GetLastChildElementBuildCache",12:"GetNextSiblingElementBuildCache",13:"GetPreviousSiblingElementBuildCache",14:"NormalizeElementBuildCache",15:"get_Condition"}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
	ParentElement(element){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",element,"ptr*",parent),"ParentElement")
	return parent
	}

	FirstChildElement(element){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",element,"ptr*",first),"FirstChildElement")
	return first
	}

	LastChildElement(element){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",element,"ptr*",last),"LastChildElement")
	return last
	}

	NextSiblingElement(element){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",element,"ptr*",next),"NextSiblingElement")
	return next
	}

	PreviousSiblingElement(element){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",element,"ptr*",previous),"PreviousSiblingElement")
	return previous
	}

	NormalizeElement(element){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",element,"ptr*",normalized),"NormalizeElement")
	return normalized
	}

	ParentElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",parent),"ParentElementBuildCache")
	return parent
	}

	FirstChildElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",first),"FirstChildElementBuildCache")
	return first
	}

	LastChildElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",last),"LastChildElementBuildCache")
	return last
	}

	NextSiblingElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",next),"NextSiblingElementBuildCache")
	return next
	}

	PreviousSiblingElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",previous),"PreviousSiblingElementBuildCache")
	return previous
	}

	NormalizeElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",normalized),"NormalizeElementBuildCache")
	return normalized
	}

	Condition(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"ptr*",condition),"_Condition")
	return condition
	}
}

;;;;;;;;;;;;;;;;;;;;;
;;Wrapped Functions;;
;;;;;;;;;;;;;;;;;;;;;
; ControlType
UIA_ControlType(n){
	static ControlType:={50000:"UIA_ButtonControlTypeId",50001:"UIA_CalendarControlTypeId",50002:"UIA_CheckBoxControlTypeId",50003:"UIA_ComboBoxControlTypeId",50004:"UIA_EditControlTypeId",50005:"UIA_HyperlinkControlTypeId",50006:"UIA_ImageControlTypeId",50007:"UIA_ListItemControlTypeId",50008:"UIA_ListControlTypeId",50009:"UIA_MenuControlTypeId",50010:"UIA_MenuBarControlTypeId",50011:"UIA_MenuItemControlTypeId",50012:"UIA_ProgressBarControlTypeId",50013:"UIA_RadioButtonControlTypeId",50014:"UIA_ScrollBarControlTypeId",50015:"UIA_SliderControlTypeId",50016:"UIA_SpinnerControlTypeId",50017:"UIA_StatusBarControlTypeId",50018:"UIA_TabControlTypeId",50019:"UIA_TabItemControlTypeId",50020:"UIA_TextControlTypeId",50021:"UIA_ToolBarControlTypeId",50022:"UIA_ToolTipControlTypeId",50023:"UIA_TreeControlTypeId",50024:"UIA_TreeItemControlTypeId",50025:"UIA_CustomControlTypeId",50026:"UIA_GroupControlTypeId",50027:"UIA_ThumbControlTypeId",50028:"UIA_DataGridControlTypeId",50029:"UIA_DataItemControlTypeId",50030:"UIA_DocumentControlTypeId",50031:"UIA_SplitButtonControlTypeId",50032:"UIA_WindowControlTypeId",50033:"UIA_PaneControlTypeId",50034:"UIA_HeaderControlTypeId",50035:"UIA_HeaderItemControlTypeId",50036:"UIA_TableControlTypeId",50037:"UIA_TitleBarControlTypeId",50038:"UIA_SeparatorControlTypeId"}
	return ControlType[n]
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationEventHandle;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
UIA_event(ByRef ptr,name){
	if !IsFunc(name){
		msgbox %name% ia not a function.
		return
	}
	VarSetCapacity(ptr,A_PtrSize*5)
	,NumPut(&ptr+A_PtrSize,ptr)
	,NumPut(RegisterCallback("_UIA_QueryInterface","F"),ptr,A_PtrSize*1)
	,NumPut(RegisterCallback("_UIA_AddRef","F"),ptr,A_PtrSize*2)
	,NumPut(RegisterCallback("_UIA_Release","F"),ptr,A_PtrSize*3)
	,NumPut(RegisterCallback(name,"F"),ptr,A_PtrSize*4)
	return &ptr
}
_UIA_QueryInterface(pSelf, pRIID, pObj){
	DllCall("ole32\StringFromIID","ptr",pRIID,"ptr*",sz),str:=StrGet(sz)
	return (str="{00000000-0000-0000-C000-000000000046}")||(str="{146c3c17-f12e-4e22-8c27-f894b9b79c69}")||(str="{40cd37d4-c756-4b0c-8c6f-bddfeeb13b50}")||(str="{e81d1b4e-11c5-42f8-9754-e7036c79f054}")||(str="{c270f6b5-5c69-4290-9745-7a7f97169468}")?NumPut(pSelf,pObj+0)*0:0x80004002 ; E_NOINTERFACE
}
_UIA_AddRef(pSelf){
}
_UIA_Release(pSelf){
}
;;;;;;;;;;;;;;;;;;
;;Base Functions;;
;;;;;;;;;;;;;;;;;;
variant(ByRef var,type=0,val=0){ ; //not completed, type not defined
	static t:={2:"short",3:"int",4:"float",5:"double",0xA:"int",0xB:"short",0x10:"uchar",0x11:"char",0x12:"ushort",0x13:"uint",0x14:"int64",0x15:"uint64",0x17:"uptr"}
	return (VarSetCapacity(var,8+2*A_PtrSize)+NumPut(type,var,0,"short")+NumPut(val,var,8,t[type]?t[type]:"uptr"))*0+&var
}
vt(p,n){
	return NumGet(NumGet(p+0,"ptr")+n*A_PtrSize,"ptr")
}
SafeArray(p,type){ ; //not completed, only 1 dim, type not defined
	/*
	cDims:=NumGet(p+0,"ushort")
	fFeatures:=NumGet(p+2,"ushort")
	cbElements:=NumGet(p+4,"uint")
	cLocks:=NumGet(p+8,"uint")
	pvData:=NumGet(p+8+A_PtrSize,"ptr")
	;dim 1
	cElements:=NumGet(p+8+2*A_PtrSize,"uint") 
	lLbound:=NumGet(p+12+2*A_PtrSize,"uint")
	;dim 2
	cElements:=NumGet(p+16+2*A_PtrSize,"uint") 
	lLbound:=NumGet(p+20+2*A_PtrSize,"uint")
	
	r1:=NumGet(pvData+0)
	*/
	0+(type=2)?(s:=2,t:="short")	; 16 位有符号整数
	:type=3?(s:=4,t:="int")	; 32 位有符号整数
	:type=4?(s:=4,t:="float")	; 32 位浮点数
	:type=5?(s:=8,t:="double")	; 64 位浮点数
	:type=0xA?(s:=4,t:="uint")	; Error 码 (32 位整数)
	:type=0xB?(s:=1,t:="short")	; 布尔值 True (-1) 或 False (0)
	:type=0x10?(s:=1,t:="char")	; 8 位有符号整数
	:type=0x11?(s:=1,t:="uchar")	; 8 位无符号整数
	:type=0x12?(s:=2,t:="ushort")	; 16 位无符号整数
	:type=0x13?(s:=4,t:="uint")	; 32 位无符号整数
	:type=0x14?(s:=8,t:="int64")	; 64 位有符号整数
	:type=0x15?(s:=8,t:="uint64")	; 64 位无符号整数
	:(s:=A_PtrSize,t:="uptr")
	item:={},pv:=NumGet(p+8+A_PtrSize,"ptr")
	loop % NumGet(p+8+2*A_PtrSize,"uint")
		item.Insert((type=8)?StrGet(NumGet(pv+(A_Index-1)*s,t),"utf-16"):NumGet(pv+(A_Index-1)*s,t)) ; COM 字符串 (带长度前缀的 Unicode 字符串)
	return item
}
GUID(ByRef GUID, sGUID){
    VarSetCapacity(GUID, 16, 0)
    return DllCall("ole32\CLSIDFromString", "wstr", sGUID, "ptr", &GUID) >= 0 ? &GUID : ""
}
_error(a,b){
	static err:={0x8000FFFF:"Catastrophic failure error.",0x80004001:"Not implemented error.",0x8007000E:"Out of memory error.",0x80070057:"One or more arguments are not valid error.",0x80004002:"Interface not supported error.",0x80004003:"Pointer not valid error.",0x80070006:"Handle not valid error.",0x80004004:"Operation aborted error.",0x80004005:"Unspecified error.",0x80070005:"General access denied error.",0x800401E5:"The object identified by this moniker could not be found."
		,0x80040201:"UIA_E_ELEMENTNOTAVAILABLE",0x80040200:"UIA_E_ELEMENTNOTENABLED",0x80131509:"UIA_E_INVALIDOPERATION",0x80040202:"UIA_E_NOCLICKABLEPOINT",0x80040204:"UIA_E_NOTSUPPORTED",0x80040203:"UIA_E_PROXYASSEMBLYNOTLOADED"} ; //not completed
	if a && (a&=0xFFFFFFFF)
		msgbox, % b " : " (err.haskey(a)?err[a]:a)
	return a
}
