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
		ObjRelease(this.__)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
		else if this._e.haskey(aName)
			return this[this._e[aName]]()
	}
	; Compares two UI Automation elements to determine whether they represent the same underlying UI element.
	CompareElements(el1,el2){
		_Error(DllCall(vt(this.__,3),"ptr",this.__,"ptr",el1,"ptr",el2,"int*",areSame),"CompareElements")
		return areSame
	}
	; Compares two integer arrays containing run-time identifiers (IDs) to determine whether their content is the same and they belong to the same UI element.
	CompareRuntimeIds(runtimeId1,runtimeId2){
		_Error(DllCall(vt(this.__,4),"ptr",this.__,"ptr",runtimeId1,"ptr",runtimeId2,"int*",areSame),"CompareRuntimeIds")
		return areSame
	}
	; Retrieves the UI Automation element that represents the desktop.
	GetRootElement(){
		_Error(DllCall(vt(this.__,5),"ptr",this.__,"ptr*",root),"GetRootElement")
		return root
	}
	; Retrieves a UI Automation element for the specified window.
	ElementFromHandle(hwnd){
		_Error(DllCall(vt(this.__,6),"ptr",this.__,"ptr",hwnd,"ptr*",element),"ElementFromHandle")
		return element
	}
	; Retrieves the UI Automation element at the specified point on the desktop.
	ElementFromPoint(pt){
		_Error(DllCall(vt(this.__,7),"ptr",this.__,"int64",pt,"ptr*",element),"ElementFromPoint")
		return element
	}
	; Retrieves the UI Automation element that has the input focus.
	GetFocusedElement(){
		_Error(DllCall(vt(this.__,8),"ptr",this.__,"ptr*",element),"GetFocusedElement")
		return element
	}
	; Retrieves the UI Automation element that has the input focus, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	GetRootElementBuildCache(cacheRequest){
		_Error(DllCall(vt(this.__,9),"ptr",this.__,"ptr",cacheRequest,"ptr*",root),"GetRootElementBuildCache")
		return root
	}
	; Retrieves a UI Automation element for the specified window, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	ElementFromHandleBuildCache(hwnd,cacheRequest){
		_Error(DllCall(vt(this.__,10),"ptr",this.__,"ptr",hwnd,"ptr",cacheRequest,"ptr*",element),"ElementFromHandleBuildCache")
		return element
	}
	; Retrieves the UI Automation element at the specified point on the desktop, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	ElementFromPointBuildCache(pt,cacheRequest){
		_Error(DllCall(vt(this.__,11),"ptr",this.__,"int64",pt,"ptr",cacheRequest,"ptr*",element),"ElementFromPointBuildCache")
		return element
	}
	; Retrieves the UI Automation element that has the input focus, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	GetFocusedElementBuildCache(cacheRequest){
		_Error(DllCall(vt(this.__,12),"ptr",this.__,"ptr",cacheRequest,"ptr*",element),"GetFocusedElementBuildCache")
		return element
	}
	; Retrieves a tree walker object that can be used to traverse the Microsoft UI Automation tree.
	CreateTreeWalker(pCondition){
		_Error(DllCall(vt(this.__,13),"ptr",this.__,"ptr",pCondition,"ptr*",walker),"CreateTreeWalker")
		return walker
	}
	; Retrieves an IUIAutomationTreeWalker interface used to discover control elements.
	ControlViewWalker(){
		_Error(DllCall(vt(this.__,14),"ptr",this.__,"ptr*",walker),"ControlViewWalker")
		return walker
	}
	; Retrieves an IUIAutomationTreeWalker interface used to discover content elements.
	ContentViewWalker(){
		_Error(DllCall(vt(this.__,15),"ptr",this.__,"ptr*",walker),"ContentViewWalker")
		return walker
	}
	; Retrieves a tree walker object used to traverse an unfiltered view of the UI Automation tree.
	RawViewWalker(){
		_Error(DllCall(vt(this.__,16),"ptr",this.__,"ptr*",walker),"RawViewWalker")
		return walker
	}
	; Retrieves a predefined IUIAutomationCondition interface that selects all UI elements in an unfiltered view.
	RawViewCondition(){
		_Error(DllCall(vt(this.__,17),"ptr",this.__,"ptr*",condition),"RawViewCondition")
		return condition
	}
	; Retrieves a predefined IUIAutomationCondition interface that selects control elements.
	ControlViewCondition(){
		_Error(DllCall(vt(this.__,18),"ptr",this.__,"ptr*",condition),"ControlViewCondition")
		return condition
	}
	; Retrieves a predefined IUIAutomationCondition interface that selects content elements.
	ContentViewCondition(){
		_Error(DllCall(vt(this.__,19),"ptr",this.__,"ptr*",condition),"ContentViewCondition")
		return condition
	}
	; Creates a cache request.
	; After obtaining the IUIAutomationCacheRequest interface, use its methods to specify properties and control patterns to be cached when a UI Automation element is obtained. 
	CreateCacheRequest(){
		_Error(DllCall(vt(this.__,20),"ptr",this.__,"ptr*",cacheRequest),"CreateCacheRequest")
		return cacheRequest
	}
	; Retrieves a predefined condition that selects all elements.
	CreateTrueCondition(){
		_Error(DllCall(vt(this.__,21),"ptr",this.__,"ptr*",newCondition),"CreateTrueCondition")
		return newCondition
	}
	; Creates a condition that is always false.
	; This method exists only for symmetry with IUIAutomation::CreateTrueCondition. A false condition will never enable a match with UI Automation elements, and it cannot usefully be combined with any other condition.
	CreateFalseCondition(){
		_Error(DllCall(vt(this.__,22),"ptr",this.__,"ptr*",newCondition),"CreateFalseCondition")
		return newCondition
	}
	; Creates a condition that selects elements that have a property with the specified value.
	CreatePropertyCondition(propertyId,value){
		_Error(DllCall(vt(this.__,23),"ptr",this.__,"int",propertyId,"ptr",UIA_Property(ptr,propertyId,value),"ptr*",newCondition),"CreatePropertyCondition")
		return newCondition
	}
	; Creates a condition that selects elements that have a property with the specified value, using optional flags.
	CreatePropertyConditionEx(propertyId,value,flags){
		_Error(DllCall(vt(this.__,24),"ptr",this.__,"int",propertyId,"ptr",UIA_Property(ptr,propertyId,value),"int",flags,"ptr*",newCondition),"CreatePropertyConditionEx")
		return newCondition
	}
	
	; The Create**Condition** method calls AddRef on each pointers. This means you can call Release on those pointers after the call to Create**Condition** returns without invalidating the pointer returned from Create**Condition**. When you call Release on the pointer returned from Create**Condition**, UI Automation calls Release on those pointers.

	; Creates a condition that selects elements that match both of two conditions.
	CreateAndCondition(condition1,condition2){
		_Error(DllCall(vt(this.__,25),"ptr",this.__,"ptr",condition1,"ptr",condition2,"ptr*",newCondition),"CreateAndCondition")
		return newCondition
	}
	; Creates a condition that selects elements based on multiple conditions, all of which must be true.
	CreateAndConditionFromArray(conditions){
		_Error(DllCall(vt(this.__,26),"ptr",this.__,"ptr",conditions,"ptr*",newCondition),"CreateAndConditionFromArray")
		return newCondition
	}
	; Creates a condition that selects elements based on multiple conditions, all of which must be true.
	CreateAndConditionFromNativeArray(conditions,conditionCount){
		_Error(DllCall(vt(this.__,27),"ptr",this.__,"ptr",conditions,"int",conditionCount,"ptr*",newCondition),"CreateAndConditionFromNativeArray")
		return newCondition
	}
	; Creates a combination of two conditions where a match exists if either of the conditions is true. 
	; 
	CreateOrCondition(condition1,condition2){
		_Error(DllCall(vt(this.__,28),"ptr",this.__,"ptr",condition1,"ptr",condition2,"ptr*",newCondition),"CreateOrCondition")
		return newCondition
	}
	; Creates a combination of two or more conditions where a match exists if any of the conditions is true. 
	CreateOrConditionFromArray(conditions){
		_Error(DllCall(vt(this.__,29),"ptr",this.__,"ptr",conditions,"ptr*",newCondition),"CreateOrConditionFromArray")
		return newCondition
	}
	; Creates a combination of two or more conditions where a match exists if any one of the conditions is true.
	CreateOrConditionFromNativeArray(conditions,conditionCount){
		_Error(DllCall(vt(this.__,30),"ptr",this.__,"ptr",conditions,"ptr",conditionCount,"ptr*",newCondition),"CreateOrConditionFromNativeArray")
		return newCondition
	}
	; Creates a condition that is the negative of a specified condition.
	CreateNotCondition(condition){
		_Error(DllCall(vt(this.__,31),"ptr",this.__,"ptr",condition,"ptr*",newCondition),"CreateNotCondition")
		return newCondition
	}
	
	; Note:  Before implementing an event handler, you should be familiar with the threading issues described in Understanding Threading Issues. http://msdn.microsoft.com/en-us/library/ee671692(v=vs.85).aspx
	; A UI Automation client should not use multiple threads to add or remove event handlers. Unexpected behavior can result if one event handler is being added or removed while another is being added or removed in the same client process.
	; It is possible for an event to be delivered to an event handler after the handler has been unsubscribed, if the event is received simultaneously with the request to unsubscribe the event. The best practice is to follow the Component Object Model (COM) standard and avoid destroying the event handler object until its reference count has reached zero. Destroying an event handler immediately after unsubscribing for events may result in an access violation if an event is delivered late.
	
	; Registers a method that handles Microsoft UI Automation events.
	AddAutomationEventHandler(eventId,element,scope,cacheRequest,handler){
		return _Error(DllCall(vt(this.__,32),"ptr",this.__,"int",eventId,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler),"AddAutomationEventHandler")
	}
	; Removes the specified UI Automation event handler.
	RemoveAutomationEventHandler(eventId,element,handler){
		return _Error(DllCall(vt(this.__,33),"ptr",this.__,"int",eventId,"ptr",element,"ptr",handler),"RemoveAutomationEventHandler")
	}
	; Registers a method that handles property-changed events. 
	; The UI item specified by element might not support the properties specified by the propertyArray parameter. 
	; This method serves the same purpose as IUIAutomation::AddPropertyChangedEventHandler, but takes a normal array of property identifiers instead of a SAFEARRAY. 
	AddPropertyChangedEventHandlerNativeArray(element,scope,cacheRequest,handler,propertyArray,propertyCount){
		return _Error(DllCall(vt(this.__,34),"ptr",this.__,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler,"ptr",propertyArray,"int",propertyCount),"AddPropertyChangedEventHandlerNativeArray")
	}
	; Registers a method that handles property-changed events. 
	; The UI item specified by element might not support the properties specified by the propertyArray parameter. 
	AddPropertyChangedEventHandler(element,scope,cacheRequest,handler,propertyArray){
		return _Error(DllCall(vt(this.__,35),"ptr",this.__,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler,"ptr",propertyArray),"AddPropertyChangedEventHandler")
	}
	; Removes a property-changed event handler.
	RemovePropertyChangedEventHandler(element,handler){
		return _Error(DllCall(vt(this.__,36),"ptr",this.__,"ptr",element,"ptr",handler),"RemovePropertyChangedEventHandler")
	}
	; Registers a method that handles structure-changed events.
	AddStructureChangedEventHandler(element,scope,cacheRequest,handler){
		return _Error(DllCall(vt(this.__,37),"ptr",this.__,"ptr",element,"int",scope,"ptr",cacheRequest,"ptr",handler),"AddStructureChangedEventHandler")
	}
	; Removes a structure-changed event handler.
	RemoveStructureChangedEventHandler(element,handler){
		return _Error(DllCall(vt(this.__,38),"ptr",this.__,"ptr",element,"ptr",handler),"RemoveStructureChangedEventHandler")
	}
	; Registers a method that handles focus-changed events.
	; Focus-changed events are system-wide; you cannot set a narrower scope.
	AddFocusChangedEventHandler(cacheRequest,handler){
		return _Error(DllCall(vt(this.__,39),"ptr",this.__,"ptr",cacheRequest,"ptr",handler),"AddFocusChangedEventHandler")
	}
	; Removes a focus-changed event handler. 
	RemoveFocusChangedEventHandler(handler){
		return _Error(DllCall(vt(this.__,40),"ptr",this.__,"ptr",handler),"RemoveFocusChangedEventHandler")
	}
	; Removes all registered Microsoft UI Automation event handlers.
	RemoveAllEventHandlers(){
		return _Error(DllCall(vt(this.__,41),"ptr",this.__),"RemoveAllEventHandlers")
	}
	; Converts an array of integers to a SAFEARRAY.
	IntNativeArrayToSafeArray(array,arrayCount){
		_Error(DllCall(vt(this.__,42),"ptr",this.__,"ptr",array,"int",arrayCount,"ptr*",safeArray),"IntNativeArrayToSafeArray")
		return safeArray
	}
	; Converts a SAFEARRAY of integers to an array.
	IntSafeArrayToNativeArray(intArray){
		_Error(DllCall(vt(this.__,43),"ptr",this.__,"ptr",intArray,"ptr*",array,"int*",arrayCount),"IntSafeArrayToNativeArray")
		return [array,arrayCount]
	}
	; Creates a VARIANT that contains the coordinates of a rectangle.
	; The returned VARIANT has a data type of VT_ARRAY | VT_R8. 
	RectToVariant(rc){
		_Error(DllCall(vt(this.__,44),"ptr",this.__,"ptr",rc,"ptr*",var),"RectToVariant")
		return var
	}
	; Converts a VARIANT containing rectangle coordinates to a RECT.
	VariantToRect(var){
		_Error(DllCall(vt(this.__,45),"ptr",this.__,"ptr",var,"ptr*",rc),"VariantToRect")
		return rc
	}
	; Converts a SAFEARRAY containing rectangle coordinates to an array of type RECT. 
	SafeArrayToRectNativeArray(rects){
		_Error(DllCall(vt(this.__,46),"ptr",this.__,"ptr",rects,"ptr*",rectArray,"int*",rectArrayCount),"SafeArrayToRectNativeArray")
		return [rectArray,rectArrayCount]
	}
	; Creates a new instance of a proxy factory object.
	; Use the IUIAutomationProxyFactoryMapping interface to enter the proxy factory into the table of available proxies. 
	CreateProxyFactoryEntry(factory){
		_Error(DllCall(vt(this.__,47),"ptr",this.__,"ptr",factory,"ptr*",factoryEntry),"CreateProxyFactoryEntry")
		return factoryEntry
	}
	; Retrieves an object that represents the mapping of Window classnames and associated data to individual proxy factories. This property is read-only.
	ProxyFactoryMapping(){
		_Error(DllCall(vt(this.__,48),"ptr",this.__,"ptr*",factoryMapping),"ProxyFactoryMapping")
		return factoryMapping
	}
	
	; The programmatic name is intended for debugging and diagnostic purposes only. The string is not localized.
	; This property should not be used in string comparisons. To determine whether two properties are the same, compare the property identifiers directly.
	
	; Retrieves the registered programmatic name of a property.
	GetPropertyProgrammaticName(property){
		_Error(DllCall(vt(this.__,49),"ptr",this.__,"int",property,"ptr*",name),"GetPropertyProgrammaticName")
		return StrGet(name,"utf-16")
	}
	; Retrieves the registered programmatic name of a control pattern.
	GetPatternProgrammaticName(pattern){
		_Error(DllCall(vt(this.__,50),"ptr",this.__,"int",pattern,"ptr*",name),"GetPatternProgrammaticName")
		return StrGet(name,"utf-16")
	}
	
	; This method is intended only for use by Microsoft UI Automation tools that need to scan for properties. It is not intended to be used by UI Automation clients.
	; There is no guarantee that the element will support any particular control pattern when asked for it later.
	
	; Retrieves the control patterns that might be supported on a UI Automation element.
	PollForPotentialSupportedPatterns(pElement){
		_Error(DllCall(vt(this.__,51),"ptr",this.__,"ptr",pElement,"ptr*",patternIds,"ptr*",patternNames),"PollForPotentialSupportedPatterns")
		return [patternIds,patternNames] ; SafeArray
	}
	; Retrieves the properties that might be supported on a UI Automation element.
	PollForPotentialSupportedProperties(pElement){
		_Error(DllCall(vt(this.__,52),"ptr",this.__,"ptr",pElement,"ptr*",propertyIds,"ptr*",propertyNames),"PollForPotentialSupportedProperties")
		return [propertyIds,propertyNames]
	}
	; Checks a provided VARIANT to see if it contains the Not Supported identifier.
	; After retrieving a property for a UI Automation element, call this method to determine whether the element supports the retrieved property. CheckNotSupported is typically called after calling a property retrieving method such as GetCurrentPropertyValue. 
	CheckNotSupported(value){
		_Error(DllCall(vt(this.__,53),"ptr",this.__,"ptr",value,"int*",isNotSupported),"CheckNotSupported")
		return isNotSupported
	}
	; Retrieves a static token object representing a property or text attribute that is not supported. This property is read-only.
	; This object can be used for comparison with the results from IUIAutomationElement::GetCurrentPropertyValue or IUIAutomationTextRange::GetAttributeValue.
	ReservedNotSupportedValue(){
		_Error(DllCall(vt(this.__,54),"ptr",this.__,"ptr*",notSupportedValue),"ReservedNotSupportedValue")
		return notSupportedValue
	}
	; Retrieves a static token object representing a text attribute that is a mixed attribute. This property is read-only.
	; The object retrieved by IUIAutomation::ReservedMixedAttributeValue can be used for comparison with the results from IUIAutomationTextRange::GetAttributeValue to determine if a text range contains more than one value for a particular text attribute.
	ReservedMixedAttributeValue(){
		_Error(DllCall(vt(this.__,55),"ptr",this.__,"ptr*",mixedAttributeValue),"ReservedMixedAttributeValue")
		return mixedAttributeValue
	}
	
	; This method enables UI Automation clients to get IUIAutomationElement interfaces for accessible objects implemented by a Microsoft Active Accessiblity server. 
	; This method may fail if the server implements UI Automation provider interfaces alongside Microsoft Active Accessibility support. 
	; The method returns E_INVALIDARG if the underlying implementation of the Microsoft UI Automation element is not a native Microsoft Active Accessibility server; that is, if a client attempts to retrieve the IAccessible interface for an element originally supported by a proxy object from Oleacc.dll, or by the UIA-to-MSAA Bridge.
	
	; Retrieves a UI Automation element for the specified accessible object from a Microsoft Active Accessibility server.
	ElementFromIAccessible(accessible,childId){
		_Error(DllCall(vt(this.__,56),"ptr",this.__,"ptr",accessible,"int",childId,"ptr*",element),"ElementFromIAccessible")
		return element
	}
	; Retrieves a UI Automation element for the specified accessible object from a Microsoft Active Accessibility server, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	ElementFromIAccessibleBuildCache(accessible,childId,cacheRequest){
		_Error(DllCall(vt(this.__,57),"ptr",this.__,"ptr",accessible,"int",childId,"ptr",cacheRequest,"ptr*",element),"ElementFromIAccessibleBuildCache")
		return element
	}
}
;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationElement;;will be modified
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
	; Sets the keyboard focus to this UI Automation element.
	SetFocus(){
	return _Error(DllCall(vt(this._p,3),"ptr",this.ptr),"SetFocus")
	}
	; Retrieves the unique identifier assigned to the UI element. 
	; The identifier is only guaranteed to be unique to the UI of the desktop on which it was generated. Identifiers can be reused over time.
	; The format of run-time identifiers might change in the future. The returned identifier should be treated as an opaque value and used only for comparison; for example, to determine whether a Microsoft UI Automation element is in the cache.
	GetRuntimeId(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",runtimeId),"GetRuntimeId")
	return runtimeId
	}
	
	; The scope of the search is relative to the element on which the method is called. Elements are returned in the order in which they are encountered in the tree.
	; This function cannot search for ancestor elements in the Microsoft UI Automation tree; that is, TreeScope_Ancestors is not a valid value for the scope parameter.
	; When searching for top-level windows on the desktop, be sure to specify TreeScope_Children in the scope parameter, not TreeScope_Descendants. A search through the entire subtree of the desktop could iterate through thousands of items and lead to a stack overflow.
	; If your client application might try to find elements in its own user interface, you must make all UI Automation calls on a separate thread. 
	
	; Retrieves the first child or descendant element that matches the specified condition. 
	FindFirst(scope,condition){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int",scope,"ptr",condition,"ptr*",found),"FindFirst")
	return found
	}
	; Returns all UI Automation elements that satisfy the specified condition. 
	FindAll(scope,condition){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int",scope,"ptr",condition,"ptr*",found),"FindAll")
	return found
	}
	; Retrieves the first child or descendant element that matches the specified condition, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	FindFirstBuildCache(scope,condition,cacheRequest){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int",scope,"ptr",condition,"ptr",cacheRequest,"ptr*",found),"FindFirstBuildCache")
	return found
	}
	; Returns all UI Automation elements that satisfy the specified condition, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	FindAllBuildCache(scope,condition,cacheRequest){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int",scope,"ptr",condition,"ptr",cacheRequest,"ptr*",found),"FindAllBuildCache")
	return found
	}
	; Retrieves a new UI Automation element with an updated cache.
	; The original UI Automation element is unchanged. The new IUIAutomationElement interface refers to the same element and has the same runtime identifier. 
	BuildUpdatedCache(cacheRequest){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",cacheRequest,"ptr*",updatedElement),"BuildUpdatedCache")
	return updatedElement
	}
	
	; Microsoft UI Automation properties of the double type support Not a Number (NaN) values. When retrieving a property of the double type, a client can use the _isnan function to determine whether the property is a NaN value. 
	
	; Retrieves the current value of a property for this UI Automation element.
	GetCurrentPropertyValue(propertyId){
	static _,_v:=variant(_)
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"int",propertyId,"ptr",_v),"GetCurrentPropertyValue")
	return UIA_PropertyValue(_v)
	}
	; Retrieves a property value for this UI Automation element, optionally ignoring any default value.
	; Passing FALSE in the ignoreDefaultValue parameter is equivalent to calling IUIAutomationElement::GetCurrentPropertyValue.
	; If the Microsoft UI Automation provider for the element itself supports the property, the value of the property is returned. Otherwise, if ignoreDefaultValue is FALSE, a default value specified by UI Automation is returned. 
	; This method returns a failure code if the requested property was not previously cached.
	GetCurrentPropertyValueEx(propertyId,ignoreDefaultValue){
	static _,_v:=variant(_)
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"int",propertyId,"int",ignoreDefaultValue,"ptr",_v),"GetCurrentPropertyValueEx")
	return UIA_PropertyValue(_v)
	}
	; Retrieves a property value from the cache for this UI Automation element.
	GetCachedPropertyValue(propertyId){
	static _,_v:=variant(_)
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"int",propertyId,"ptr",_v),"GetCachedPropertyValue")
	return UIA_PropertyValue(_v)
	}
	; Retrieves a property value from the cache for this UI Automation element, optionally ignoring any default value.
	GetCachedPropertyValueEx(propertyId,ignoreDefaultValue,retVal){
	static _,_v:=variant(_)
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"int",propertyId,"int",ignoreDefaultValue,"ptr",_v),"GetCachedPropertyValueEx")
	return UIA_PropertyValue(_v)
	}
	; Retrieves the control pattern interface of the specified pattern on this UI Automation element.
	GetCurrentPatternAs(patternId,riid){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"int",patternId,"ptr",riid,"ptr*",patternObject),"GetCurrentPatternAs")
	return patternObject
	}
	; Retrieves the control pattern interface of the specified pattern from the cache of this UI Automation element.
	GetCachedPatternAs(patternId,riid){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"int",patternId,"ptr",riid,"ptr*",patternObject),"GetCachedPatternAs")
	return patternObject
	}
	; Retrieves the IUnknown interface of the specified control pattern on this UI Automation element. 
	; This method gets the specified control pattern based on its availability at the time of the call.
	; For some forms of UI, this method will incur cross-process performance overhead. Applications can reduce overhead by caching control patterns and then retrieving them by using IUIAutomationElement::GetCachedPattern.
	GetCurrentPattern(patternId){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"int",patternId,"ptr*",patternObject),"GetCurrentPattern")
	return patternObject
	}
	; Retrieves from the cache the IUnknown interface of the specified control pattern of this UI Automation element. 
	GetCachedPattern(patternId){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"int",patternId,"ptr*",patternObject),"GetCachedPattern")
	return patternObject
	}
	; Retrieves from the cache the parent of this UI Automation element. 
	GetCachedParent(){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"ptr*",parent),"GetCachedParent")
	return parent
	}
	; Retrieves the cached child elements of this UI Automation element. 
	; The view of the returned collection is determined by the TreeFilter property of the IUIAutomationCacheRequest that was active when this element was obtained.
	; Children are cached only if the scope of the cache request included TreeScope_Subtree, TreeScope_Children, or TreeScope_Descendants.
	; If the cache request specified that children were to be cached at this level, but there are no children, the value of this property is 0. However, if no request was made to cache children at this level, an attempt to retrieve the property returns an error.
	GetCachedChildren(){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr*",children),"GetCachedChildren")
	return children
	}
	; Retrieves a point on the element that can be clicked. 
	; A client application can use this method to simulate clicking the left or right mouse button. For example, to simulate clicking the right mouse button to display the context menu for a control: 
	; • Call the GetClickablePoint method to find a clickable point on the control.
	; • Call the SendInput function to send a right-mouse-down, right-mouse-up sequence.
	GetClickablePoint(){
	_Error(DllCall(vt(this._p,84),"ptr",this._p,"int64*",clickable,"int*",gotClickable),"GetClickablePoint")
	return [clickable,gotClickable]
	}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationElementArray;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Retrieves the number of elements in the collection.
	Length(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",length),"get_Length")
	return length
	}
	; Retrieves a Microsoft UI Automation element from the collection.
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
	; Specifies the scope of caching.
	; When an element is retrieved, caching can be performed for only the element itself (the default behavior), or for the element and its children or descendants. This property describes the scope of the request.
		if (aName="TreeScope"){
			_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",scope),"get_TreeScope")
			return scope
	; Specifies the view of the UI Automation element tree that is used when caching.
		}else if (aName="TreeFilter"){
			_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr*",filter),"get_TreeFilter")
			return filter
	; Indicates whether returned elements contain full references to the underlying UI, or only cached information. 
	; AutomationElementMode_Full is the default value, and specifies that returned elements contain a full reference to the underlying UI. AutomationElementMode_None specifies that the returned elements have no reference to the underlying UI, and contain only cached information.
	; Certain operations on elements, including GetCurrentPropertyValue, and SetFocus, require a full reference; attempting to perform these on an element that has none results in an error.
	; Using AutomationElementMode_None can be more efficient when only properties are needed, as it avoids the overhead involved in setting up full references.
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
	; Adds a property to the cache request.
	AddProperty(propertyId){
	if IsObject(propertyId)
		loop % propertyId.maxindex()
			_Error(DllCall(vt(this._p,3),"ptr",this._p,"int",propertyId[A_Index]),"AddProperty")
	else return _Error(DllCall(vt(this._p,3),"ptr",this._p,"int",propertyId),"AddProperty")
	}
	; Adds a control pattern to the cache request. Adding a control pattern that is already in the cache request has no effect.
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
	; Retrieves the identifier of the property on which this condition is based.
	property_id(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",propertyId),"get_PropertyId")
		return propertyId
	}
	; Retrieves the property value that must be matched for the condition to be true.
	property_value(){
		static _,propertyValue:=variant(_)
		_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",propertyValue),"get_PropertyValue")
		return UIA_PropertyValue(propertyValue) ;
	}
	; Retrieves a set of flags that specify how the condition is applied.
	property_flags(){
		_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",flags),"get_PropertyConditionFlags")
		return flags
	}
	; Retrieves the value of the condition: either TRUE or FALSE.
	bool_value(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",boolVal),"get_BooleanValue")
		return boolVal
	}
	; Retrieves the number of conditions that make up this condition.
	and_count(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",childCount),"get_ChildCount")
		return childCoun
	}
	; Retrieves the conditions that make up this condition, as an ordinary array.
	and_ChildrenAsNativeArray(){
		_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",childArray,"int*",childArrayCount),"GetChildrenAsNativeArray")
		return [childArray,childArrayCount]
	}
	; Retrieves the conditions that make up this condition.
	and_Children(){
		_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",childArray),"GetChildren")
		return childArray ;SafeArray(iunknown)
	}
	; Retrieves the number of conditions that make up this condition.
	or_count(){
		_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",childCount),"get_ChildCount")
		return childCoun
	}
	; Retrieves the conditions that make up this condition, as an ordinary array.
	or_ChildrenAsNativeArray(){
		_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",childArray,"int*",childArrayCount),"GetChildrenAsNativeArray")
		return [childArray,childArrayCount]
	}
	; Retrieves the conditions that make up this condition.
	or_Children(){
		_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",childArray),"GetChildren")
		return childArray
	}
	; Retrieves the condition of which this condition is the negative. The returned condition is the one that was used in creating this condition. 
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
		this._p:=0,this._i:={3:"GetParentElement",4:"GetFirstChildElement",5:"GetLastChildElement",6:"GetNextSiblingElement",7:"GetPreviousSiblingElement",8:"NormalizeElement",9:"GetParentElementBuildCache",10:"GetFirstChildElementBuildCache",11:"GetLastChildElementBuildCache",12:"GetNextSiblingElementBuildCache",13:"GetPreviousSiblingElementBuildCache",14:"NormalizeElementBuildCache",15:"Condition"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
	
	; The structure of the Microsoft UI Automation tree changes as the visible UI elements on the desktop change.
	; An element can have additional child elements that do not match the current view condition and thus are not returned when navigating the element tree.

	; Retrieves the parent element of the specified UI Automation element.
	GetParentElement(element){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",element,"ptr*",parent),"ParentElement")
	return parent
	}
	; Retrieves the first child element of the specified UI Automation element.
	GetFirstChildElement(element){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",element,"ptr*",first),"FirstChildElement")
	return first
	}
	; Retrieves the last child element of the specified UI Automation element.
	GetLastChildElement(element){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",element,"ptr*",last),"LastChildElement")
	return last
	}
	; Retrieves the next sibling element of the specified UI Automation element, and caches properties and control patterns.
	GetNextSiblingElement(element){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",element,"ptr*",next),"NextSiblingElement")
	return next
	}
	; Retrieves the previous sibling element of the specified UI Automation element, and caches properties and control patterns.
	GetPreviousSiblingElement(element){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",element,"ptr*",previous),"PreviousSiblingElement")
	return previous
	}
	; Retrieves the ancestor element nearest to the specified Microsoft UI Automation element in the tree view. 
	; The element is normalized by navigating up the ancestor chain in the tree until an element that satisfies the view condition (specified by a previous call to IUIAutomationTreeWalker::Condition) is reached. If the root element is reached, the root element is returned, even if it does not satisfy the view condition. 
	; This method is useful for applications that obtain references to UI Automation elements by hit-testing. The application might want to work only with specific types of elements, and can use IUIAutomationTreeWalker::Normalize to make sure that no matter what element is initially retrieved (for example, when a scroll bar gets the input focus), only the element of interest (such as a content element) is ultimately retrieved. 
	NormalizeElement(element){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",element,"ptr*",normalized),"NormalizeElement")
	return normalized
	}
	; Retrieves the parent element of the specified UI Automation element, and caches properties and control patterns.
	GetParentElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",parent),"ParentElementBuildCache")
	return parent
	}
	; Retrieves the first child element of the specified UI Automation element, and caches properties and control patterns.
	GetFirstChildElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",first),"FirstChildElementBuildCache")
	return first
	}
	; Retrieves the last child element of the specified UI Automation element, and caches properties and control patterns.
	GetLastChildElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",last),"LastChildElementBuildCache")
	return last
	}
	; Retrieves the next sibling element of the specified UI Automation element, and caches properties and control patterns.
	GetNextSiblingElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",next),"NextSiblingElementBuildCache")
	return next
	}
	; Retrieves the previous sibling element of the specified UI Automation element, and caches properties and control patterns.
	GetPreviousSiblingElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",previous),"PreviousSiblingElementBuildCache")
	return previous
	}
	; Retrieves the ancestor element nearest to the specified Microsoft UI Automation element in the tree view, prefetches the requested properties and control patterns, and stores the prefetched items in the cache.
	NormalizeElementBuildCache(element,cacheRequest){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr",element,"ptr",cacheRequest,"ptr*",normalized),"NormalizeElementBuildCache")
	return normalized
	}
	; Retrieves the condition that defines the view of the UI Automation tree. This property is read-only.
	; The condition that defines the view. This is the interface that was passed to CreateTreeWalker.
	Condition(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"ptr*",condition),"_Condition")
	return condition
	}
}
;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationPattern;;
;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAutomationPattern{
	__new(){
		this._p:=0,this._i:="",this._t:={Invoke:"Invoke_",Dock:"Dock_",ExpandCollapse:"ExpandCollapse_",Grid:"Grid_",GridItem:"GridItem_",MultipleView:"MultipleView_",RangeValue:"RangeValue_",Scroll:"Scroll_",ScrollItem:"ScrollItem_",Selection:"Selection_",SelectionItem:"SelectionItem_",SynchronizedInput:"SynchronizedInput_",Table:"Table_",TableItem:"TableItem_",Toggle:"Toggle_",Transform:"Transform_",Value:"Value_",Window:"Window_",TextRange:"TextRange_",TextRangeArray:"TextRangeArray_",Text:"Text_",LegacyIAccessible:"LegacyIAccessible_",ItemContainer:"ItemContainer_",VirtualizedItem:"VirtualizedItem_"}
	}
	__get(aName){
		if !instr(aName,"_")
			return this[this._i aName]()
		else return this[aName]()
	}
	__call(aName,aParam*){
		if (aName=""){
			loop % aParam.maxindex(){
				v:=aParam[A_Index]
				if v is Integer
					this._p:=v
				else this._i:=this._t[v]
			}
			return this
		}else if !instr(aName,"_")
			return this[this._i aName](aParam*)
		else return this[aName](aParam*)
	}

; IUIAutomationInvokePattern
	; Invokes the action of a control, such as a button click. 
	; Calls to this method should return immediately without blocking. However, this behavior depends on the implementation.
	Invoke_Invoke(){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p),"Invoke")
	}

; IUIAutomationDockPattern
	; Sets the dock position of this element.
  Dock_SetDockPosition(dockPos){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"int",dockPos),"SetDockPosition")
  }
	; Retrieves the dock position of this element within its docking container.
  Dock_CurrentDockPosition(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int*",retVal),"CurrentDockPosition")
	return retVal
  }
	; Retrieves the cached dock position of this element within its docking container.
  Dock_CachedDockPosition(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CachedDockPosition")
	return retVal
  }

; IUIAutomationExpandCollapsePattern

	; This is a blocking method that returns after the element has been collapsed.
	; There are cases when a element that is marked as a leaf node might not know whether it has children until either the IUIAutomationExpandCollapsePattern::Collapse or the IUIAutomationExpandCollapsePattern::Expand method is called. This behavior is possible with a tree view control that does delayed loading of its child items. For example, Microsoft Windows Explorer might display the expand icon for a node even though there are currently no child items; when the icon is clicked, the control polls for child items, finds none, and removes the expand icon. In these cases clients should listen for a property-changed event on the IUIAutomationExpandCollapsePattern::CurrentExpandCollapseState property.

	; Displays all child nodes, controls, or content of the element. 
  ExpandCollapse_Expand(){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p),"Expand")
  }
	; Hides all child nodes, controls, or content of the element.
  ExpandCollapse_Collapse(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"Collapse")
  }
	; Retrieves a value that indicates the state, expanded or collapsed, of the element.
  ExpandCollapse_CurrentExpandCollapseState(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentExpandCollapseState")
	return retVal
  }
	; Retrieves a cached value that indicates the state, expanded or collapsed, of the element.
  ExpandCollapse_CachedExpandCollapseState(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",retVal),"CachedExpandCollapseState")
	return retVal
  }

; IUIAutomationGridPattern
	; Retrieves a UI Automation element representing an item in the grid.
  Grid_GetItem(row,column){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"int",row,"int",column,"ptr*",element),"GetItem")
	return element
  }

	; Hidden rows and columns, depending on the provider implementation, may be loaded in the Microsoft UI Automation tree and will therefore be reflected in the row count and column count properties. If the hidden rows and columns have not yet been loaded they are not counted.
	
	; Retrieves the number of rows in the grid.
  Grid_CurrentRowCount(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int*",retVal),"CurrentRowCount")
	return retVal
  }
	; The number of columns in the grid.
  Grid_CurrentColumnCount(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentColumnCount")
	return retVal
  }
	; Retrieves the cached number of rows in the grid.
  Grid_CachedRowCount(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",retVal),"CachedRowCount")
	return retVal
  }
	; Retrieves the cached number of columns in the grid.
  Grid_CachedColumnCount(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",retVal),"CachedColumnCount")
	return retVal
  }

; IUIAutomationGridItemPattern
	; Retrieves the element that contains the grid item. 
  GridItem_CurrentContainingGrid(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",retVal),"CurrentContainingGrid")
	return retVal
  }
	; Retrieves the zero-based index of the row that contains the grid item.
  GridItem_CurrentRow(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int*",retVal),"CurrentRow")
	return retVal
  }
	; Retrieves the zero-based index of the column that contains the item.
  GridItem_CurrentColumn(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentColumn")
	return retVal
  }
	; Retrieves the number of rows spanned by the grid item. 
  GridItem_CurrentRowSpan(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",retVal),"CurrentRowSpan")
	return retVal
  }
	
	; Retrieves the number of columns spanned by the grid item.
  GridItem_CurrentColumnSpan(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",retVal),"CurrentColumnSpan")
	return retVal
  }
	; Retrieves the cached element that contains the grid item. 
  GridItem_CachedContainingGrid(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr*",retVal),"CachedContainingGrid")
	return retVal
  }
	; Retrieves the cached zero-based index of the row that contains the item. 
  GridItem_CachedRow(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"int*",retVal),"CachedRow")
	return retVal
  }
	; Retrieves the cached zero-based index of the column that contains the grid item.
  GridItem_CachedColumn(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"int*",retVal),"CachedColumn")
	return retVal
  }
	; Retrieves the cached number of rows spanned by a grid item. 
  GridItem_CachedRowSpan(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"int*",retVal),"CachedRowSpan")
	return retVal
  }
	; Retrieves the cached number of columns spanned by the grid item.
  GridItem_CachedColumnSpan(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"int*",retVal),"CachedColumnSpan")
	return retVal
  }

; IUIAutomationMultipleViewPattern
	; Retrieves the name of a control-specific view.
  MultipleView_GetViewName(view){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"int",view,"ptr*",name),"GetViewName")
	return StrGet(name,"utf-16")
  }
	; Sets the view of the control.
  MultipleView_SetCurrentView(view){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"int",view),"SetCurrentView")
  }
	; Retrieves the control-specific identifier of the current view of the control.
  MultipleView_CurrentCurrentView(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentCurrentView")
	return retVal
  }
	; Retrieves a collection of control-specific view identifiers.
  MultipleView_GetCurrentSupportedViews(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",retVal),"GetCurrentSupportedViews")
	return SAFEARRAY(retVal,3)
  }
	; Retrieves the cached control-specific identifier of the current view of the control.
  MultipleView_CachedCurrentView(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",retVal),"CachedCurrentView")
	return retVal
  }
	; Retrieves a collection of control-specific view identifiers from the cache.
  MultipleView_GetCachedSupportedViews(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr*",retVal),"GetCachedSupportedViews")
	return SAFEARRAY(retVal,3)
  }

; IUIAutomationRangeValuePattern
	; Sets the value of the control.
  RangeValue_SetValue(val){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"double",val),"SetValue")
  }
	; Retrieves the value of the control.
  RangeValue_CurrentValue(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"double*",retVal),"CurrentValue")
	return retVal
  }
	; Indicates whether the value of the element can be changed.
  RangeValue_CurrentIsReadOnly(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentIsReadOnly")
	return retVal
  }
	; Retrieves the maximum value of the control.
  RangeValue_CurrentMaximum(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"double*",retVal),"CurrentMaximum")
	return retVal
  }
	; Retrieves the minimum value of the control.
  RangeValue_CurrentMinimum(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"double*",retVal),"CurrentMinimum")
	return retVal
  }
  
	; The LargeChange and SmallChange property can support a Not a Number (NaN) value. When retrieving this property, a client can use the _isnan function to determine whether the property is a NaN value. 

	; Retrieves the value that is added to or subtracted from the value of the control when a large change is made, such as when the PAGE DOWN key is pressed.
  RangeValue_CurrentLargeChange(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"double*",retVal),"CurrentLargeChange")
	return retVal
  }
	; Retrieves the value that is added to or subtracted from the value of the control when a small change is made, such as when an arrow key is pressed.
  RangeValue_CurrentSmallChange(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"double*",retVal),"CurrentSmallChange")
	return retVal
  }
	; Retrieves the cached value of the control.
  RangeValue_CachedValue(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"double*",retVal),"CachedValue")
	return retVal
  }
	; Retrieves a cached value that indicates whether the value of the element can be changed.
  RangeValue_CachedIsReadOnly(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"int*",retVal),"CachedIsReadOnly")
	return retVal
  }
	; Retrieves the cached maximum value of the control.
  RangeValue_CachedMaximum(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"double*",retVal),"CachedMaximum")
	return retVal
  }
	; Retrieves the cached minimum value of the control.
  RangeValue_CachedMinimum(){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"double*",retVal),"CachedMinimum")
	return retVal
  }
	; Retrieves, from the cache, the value that is added to or subtracted from the value of the control when a large change is made, such as when the PAGE DOWN key is pressed.
  RangeValue_CachedLargeChange(){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"double*",retVal),"CachedLargeChange")
	return retVal
  }
	; Retrieves, from the cache, the value that is added to or subtracted from the value of the control when a small change is made, such as when an arrow key is pressed.
  RangeValue_CachedSmallChange(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"double*",retVal),"CachedSmallChange")
	return retVal
  }

; IUIAutomationScrollPattern
	; Scrolls the visible region of the content area horizontally and vertically.
  Scroll_Scroll(horizontalAmount,verticalAmount){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"int",horizontalAmount,"int",verticalAmount),"Scroll")
  }
	; Sets the horizontal and vertical scroll positions as a percentage of the total content area within the UI Automation element.
	; This method is useful only when the content area of the control is larger than the visible region.
  Scroll_SetScrollPercent(horizontalPercent,verticalPercent){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"double",horizontalPercent,"double",verticalPercent),"SetScrollPercent")
  }
	; Retrieves the horizontal scroll position.
  Scroll_CurrentHorizontalScrollPercent(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"double*",retVal),"CurrentHorizontalScrollPercent")
	return retVal
  }
	; Retrieves the vertical scroll position.
  Scroll_CurrentVerticalScrollPercent(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"double*",retVal),"CurrentVerticalScrollPercent")
	return retVal
  }
	; Retrieves the horizontal size of the viewable region of a scrollable element.
  Scroll_CurrentHorizontalViewSize(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"double*",retVal),"CurrentHorizontalViewSize")
	return retVal
  }
	; Retrieves the vertical size of the viewable region of a scrollable element.
  Scroll_CurrentVerticalViewSize(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"double*",retVal),"CurrentVerticalViewSize")
	return retVal
  }
	; Indicates whether the element can scroll horizontally.
	; This property can be dynamic. For example, the content area of the element might not be larger than the current viewable area, meaning that the property is FALSE. However, resizing the element or adding child items can increase the bounds of the content area beyond the viewable area, making the property TRUE.
  Scroll_CurrentHorizontallyScrollable(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"int*",retVal),"CurrentHorizontallyScrollable")
	return retVal
  }
	; Indicates whether the element can scroll vertically.
  Scroll_CurrentVerticallyScrollable(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"int*",retVal),"CurrentVerticallyScrollable")
	return retVal
  }
	; Retrieves the cached horizontal scroll position.
  Scroll_CachedHorizontalScrollPercent(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"double*",retVal),"CachedHorizontalScrollPercent")
	return retVal
  }
	; Retrieves the cached vertical scroll position.
  Scroll_CachedVerticalScrollPercent(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"double*",retVal),"CachedVerticalScrollPercent")
	return retVal
  }
	; Retrieves the cached horizontal size of the viewable region of a scrollable element.
  Scroll_CachedHorizontalViewSize(){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"double*",retVal),"CachedHorizontalViewSize")
	return retVal
  }
	; Retrieves the cached vertical size of the viewable region of a scrollable element.
  Scroll_CachedVerticalViewSize(){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"double*",retVal),"CachedVerticalViewSize")
	return retVal
  }
	; Retrieves a cached value that indicates whether the element can scroll horizontally.
  Scroll_CachedHorizontallyScrollable(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"int*",retVal),"CachedHorizontallyScrollable")
	return retVal
  }
	; Retrieves a cached value that indicates whether the element can scroll vertically.
  Scroll_CachedVerticallyScrollable(){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"int*",retVal),"CachedVerticallyScrollable")
	return retVal
  }

; IUIAutomationScrollItemPattern
	; Scrolls the content area of a container object to display the UI Automation element within the visible region (viewport) of the container.
	; This method does not provide the ability to specify the position of the element within the viewport.
  ScrollItem_ScrollIntoView(){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p),"ScrollIntoView")
  }

; IUIAutomationSelectionPattern
	; Retrieves the selected elements in the container.
  Selection_GetCurrentSelection(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",retVal),"GetCurrentSelection")
	return retVal
  }
	; Indicates whether more than one item in the container can be selected at one time.
  Selection_CurrentCanSelectMultiple(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int*",retVal),"CurrentCanSelectMultiple")
	return retVal
  }
	; Indicates whether at least one item must be selected at all times.
  Selection_CurrentIsSelectionRequired(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentIsSelectionRequired")
	return retVal
  }
	; Retrieves the cached selected elements in the container.
  Selection_GetCachedSelection(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",retVal),"GetCachedSelection")
	return retVal
  }
	; Retrieves a cached value that indicates whether more than one item in the container can be selected at one time.
  Selection_CachedCanSelectMultiple(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",retVal),"CachedCanSelectMultiple")
	return retVal
  }
	; Retrieves a cached value that indicates whether at least one item must be selected at all times.
  Selection_CachedIsSelectionRequired(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int*",retVal),"CachedIsSelectionRequired")
	return retVal
  }

; IUIAutomationSelectionItemPattern
	; Clears any selected items and then selects the current element.
  SelectionItem_Select(){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p),"Select")
  }
	; Adds the current element to the collection of selected items.
  SelectionItem_AddToSelection(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"AddToSelection")
  }
	; Removes this element from the selection. 
	; An error code is returned if this element is the only one in the selection and the selection container requires at least one element to be selected. 
  SelectionItem_RemoveFromSelection(){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p),"RemoveFromSelection")
  }
	; Indicates whether this item is selected.
  SelectionItem_CurrentIsSelected(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",retVal),"CurrentIsSelected")
	return retVal
  }
	; Retrieves the element that supports IUIAutomationSelectionPattern and acts as the container for this item. 
  SelectionItem_CurrentSelectionContainer(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr*",retVal),"CurrentSelectionContainer")
	return retVal
  }
	; A cached value that indicates whether this item is selected.
  SelectionItem_CachedIsSelected(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int*",retVal),"CachedIsSelected")
	return retVal
  }
	; Retrieves the cached element that supports IUIAutomationSelectionPattern and acts as the container for this item.
  SelectionItem_CachedSelectionContainer(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr*",retVal),"CachedSelectionContainer")
	return retVal
  }

; IUIAutomationSynchronizedInputPattern
	; Causes the Microsoft UI Automation provider to start listening for mouse or keyboard input.
	; When matching input is found, the provider checks whether the target element matches the current element. If they match, the provider raises the UIA_InputReachedTargetEventId event; otherwise it raises the UIA_InputReachedOtherElementEventId or UIA_InputDiscardedEventId event.
	; After receiving input of the specified type, the provider stops checking for input and continues as normal.
	; If the provider is already listening for input, this method returns E_INVALIDOPERATION.
  SynchronizedInput_StartListening(inputType){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"int",inputType),"StartListening")
  }
	; Causes the Microsoft UI Automation provider to stop listening for mouse or keyboard input.
  SynchronizedInput_Cancel(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"Cancel")
  }

; IUIAutomationTablePattern
	; Retrieves a collection of UI Automation elements representing all the row headers in a table.
  Table_GetCurrentRowHeaders(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",retVal),"GetCurrentRowHeaders")
	return retVal
  }
	; Retrieves a collection of UI Automation elements representing all the column headers in a table.
  Table_GetCurrentColumnHeaders(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",retVal),"GetCurrentColumnHeaders")
	return retVal
  }
	; Retrieves the primary direction of traversal for the table.
  Table_CurrentRowOrColumnMajor(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentRowOrColumnMajor")
	return retVal
  }
	; Retrieves a cached collection of UI Automation elements representing all the row headers in a table.
  Table_GetCachedRowHeaders(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",retVal),"GetCachedRowHeaders")
	return retVal
  }
	; Retrieves a cached collection of UI Automation elements representing all the column headers in a table.
  Table_GetCachedColumnHeaders(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr*",retVal),"GetCachedColumnHeaders")
	return retVal
  }
	; Retrieves the cached primary direction of traversal for the table.
  Table_CachedRowOrColumnMajor(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int*",retVal),"CachedRowOrColumnMajor")
	return retVal
  }

; IUIAutomationTableItemPattern
	; Retrieves the row headers associated with a table item or cell.
  TableItem_GetCurrentRowHeaderItems(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",retVal),"GetCurrentRowHeaderItems")
	return retVal
  }
	; Retrieves the column headers associated with a table item or cell.
  TableItem_GetCurrentColumnHeaderItems(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",retVal),"GetCurrentColumnHeaderItems")
	return retVal
  }
	; Retrieves the cached row headers associated with a table item or cell.
  TableItem_GetCachedRowHeaderItems(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",retVal),"GetCachedRowHeaderItems")
	return retVal
  }
	; Retrieves the cached column headers associated with a table item or cell.
  TableItem_GetCachedColumnHeaderItems(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",retVal),"GetCachedColumnHeaderItems")
	return retVal
  }

; IUIAutomationTogglePattern
	; Cycles through the toggle states of the control.
	; A control cycles through its states in this order: ToggleState_On, ToggleState_Off and, if supported, ToggleState_Indeterminate.
  Toggle_Toggle(){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p),"Toggle")
  }
	; Retrieves the state of the control.
  Toggle_CurrentToggleState(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int*",retVal),"CurrentToggleState")
	return retVal
  }
	; Retrieves the cached state of the control.
  Toggle_CachedToggleState(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CachedToggleState")
	return retVal
  }

; IUIAutomationTransformPattern

	; An element cannot be moved, resized or rotated such that its resulting screen location would be completely outside the coordinates of its container and inaccessible to the keyboard or mouse. For example, when a top-level window is moved completely off-screen or a child object is moved outside the boundaries of the container's viewport, the object is placed as close to the requested screen coordinates as possible with the top or left coordinates overridden to be within the container boundaries.
	
	; Moves the UI Automation element.
  Transform_Move(x,y){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"double",x,"double",y),"Move")
  }
	; Resizes the UI Automation element.
	; When called on a control that supports split panes, this method can have the side effect of resizing other contiguous panes. 
  Transform_Resize(width,height){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"double",width,"double",height),"Resize")
  }
	; Rotates the UI Automation element.
  Transform_Rotate(degrees){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"double",degrees),"Rotate")
  }
	; Indicates whether the element can be moved.
  Transform_CurrentCanMove(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",retVal),"CurrentCanMove")
	return retVal
  }
	; Indicates whether the element can be resized.
  Transform_CurrentCanResize(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",retVal),"CurrentCanResize")
	return retVal
  }
	; Indicates whether the element can be rotated.
  Transform_CurrentCanRotate(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int*",retVal),"CurrentCanRotate")
	return retVal
  }
	; Retrieves a cached value that indicates whether the element can be moved.
  Transform_CachedCanMove(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"int*",retVal),"CachedCanMove")
	return retVal
  }
	; Retrieves a cached value that indicates whether the element can be resized.
  Transform_CachedCanResize(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"int*",retVal),"CachedCanResize")
	return retVal
  }
	; Retrieves a cached value that indicates whether the element can be rotated.
  Transform_CachedCanRotate(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"int*",retVal),"CachedCanRotate")
	return retVal
  }

; IUIAutomationValuePattern
	; Sets the value of the element.
	; The CurrentIsEnabled property must be TRUE, and the IUIAutomationValuePattern::CurrentIsReadOnly property must be FALSE. 
  Value_SetValue(val){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"str",val),"SetValue")
	return 
  }
	; Retrieves the value of the element.
	; Single-line edit controls support programmatic access to their contents through IUIAutomationValuePattern. However, multiline edit controls do not support this control pattern, and their contents must be retrieved by using IUIAutomationTextPattern.
	; This property does not support the retrieval of formatting information or substring values. IUIAutomationTextPattern must be used in these scenarios as well.
  Value_CurrentValue(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",retVal),"CurrentValue")
	return StrGet(retVal,"utf-16")
  }
	; Indicates whether the value of the element is read-only.
  Value_CurrentIsReadOnly(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int*",retVal),"CurrentIsReadOnly")
	return retVal
  }
	; Retrieves the cached value of the element.
  Value_CachedValue(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",retVal),"CachedValue")
	return StrGet(retVal,"utf-16")
  }
	; Retrieves a cached value that indicates whether the value of the element is read-only.
	; This property must be TRUE for IUIAutomationValuePattern::SetValue to succeed.
  Value_CachedIsReadOnly(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",retVal),"CachedIsReadOnly")
	return retVal
  }

; IUIAutomationWindowPattern
	; Closes the window.
	; When called on a split pane control, this method closes the pane and removes the associated split. This method may also close all other panes, depending on implementation.
  Window_Close(){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p),"Close")
  }
	; Causes the calling code to block for the specified time or until the associated process enters an idle state, whichever completes first. 
  Window_WaitForInputIdle(milliseconds){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int",milliseconds,"int*",success),"WaitForInputIdle")
	return success
  }
	; Minimizes, maximizes, or restores the window.
  Window_SetWindowVisualState(state){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int",state),"SetWindowVisualState")
	return 
  }
	; Indicates whether the window can be maximized.
  Window_CurrentCanMaximize(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",retVal),"CurrentCanMaximize")
	return retVal
  }
	; Indicates whether the window can be minimized.
  Window_CurrentCanMinimize(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",retVal),"CurrentCanMinimize")
	return retVal
  }
	; Indicates whether the window is modal.
  Window_CurrentIsModal(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int*",retVal),"CurrentIsModal")
	return retVal
  }
	; Indicates whether the window is the topmost element in the z-order.
  Window_CurrentIsTopmost(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"int*",retVal),"CurrentIsTopmost")
	return retVal
  }
	; Retrieves the visual state of the window; that is, whether it is in the normal, maximized, or minimized state.
  Window_CurrentWindowVisualState(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"int*",retVal),"CurrentWindowVisualState")
	return retVal
  }
	; Retrieves the current state of the window for the purposes of user interaction.
  Window_CurrentWindowInteractionState(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"int*",retVal),"CurrentWindowInteractionState")
	return retVal ; WindowInteractionState
  }
	; Retrieves a cached value that indicates whether the window can be maximized.
  Window_CachedCanMaximize(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"int*",retVal),"CachedCanMaximize")
	return retVal
  }
	; Retrieves a cached value that indicates whether the window can be minimized.
  Window_CachedCanMinimize(){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"int*",retVal),"CachedCanMinimize")
	return retVal
  }
	; Retrieves a cached value that indicates whether the window is modal.
  Window_CachedIsModal(){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"int*",retVal),"CachedIsModal")
	return retVal
  }
	; Retrieves a cached value that indicates whether the window is the topmost element in the z-order.
  Window_CachedIsTopmost(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"int*",retVal),"CachedIsTopmost")
	return retVal
  }
	; Retrieves a cached value that indicates the visual state of the window; that is, whether it is in the normal, maximized, or minimized state.
  Window_CachedWindowVisualState(){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"int*",retVal),"CachedWindowVisualState")
	return retVal
  }
	; Retrieves a cached value that indicates the current state of the window for the purposes of user interaction.
  Window_CachedWindowInteractionState(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"int*",retVal),"CachedWindowInteractionState")
	return retVal ; WindowInteractionState
  }

; IUIAutomationTextRange
	; Retrieves a new IUIAutomationTextRange identical to the original and inheriting all properties of the original.
	; The new range can be manipulated independently of the original.
  TextRange_Clone(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",clonedRange),"Clone")
	return clonedRange
  }
	; Retrieves a value that specifies whether this text range has the same endpoints as another text range.
	; This method compares the endpoints of the two text ranges, not the text in the ranges. The ranges are identical if they share the same endpoints. If two text ranges have different endpoints, they are not identical even if the text in both ranges is exactly the same. 
  TextRange_Compare(range){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",range,"int*",areSame),"Compare")
	return areSame
  }
	; Retrieves a value that specifies whether the start or end endpoint of this text range is the same as the start or end endpoint of another text range.
  TextRange_CompareEndpoints(srcEndPoint,range,targetEndPoint){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"int",srcEndPoint,"ptr",range,"int",targetEndPoint,"int*",compValue),"CompareEndpoints") ; TextPatternRangeEndpoint
	return compValue
  }
	; Normalizes the text range by the specified text unit. The range is expanded if it is smaller than the specified unit, or shortened if it is longer than the specified unit.
  TextRange_ExpandToEnclosingUnit(textUnit){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"int",textUnit),"ExpandToEnclosingUnit") ; textUnit
  }
	; 
  TextRange_FindAttribute(attr,val,backward){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int",attr,"ptr",val,"int",backward,"ptr*",found),"FindAttribute")
	return found
  }
	; 
  TextRange_FindText(text,backward,ignoreCase){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"str",text,"int",backward,"int",ignoreCase,"ptr*",found),"FindText")
	return StrGet(found,"utf-16")
  }
	; 
  TextRange_GetAttributeValue(attr,value){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"int",attr,"ptr",variant(value)),"GetAttributeValue")
	return NumGet(value,8,"int")
  }
	; 
  TextRange_GetBoundingRectangles(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr*",boundingRects),"GetBoundingRectangles")
	return SAFEARRAY(boundingRects,5)
  }
	; 
  TextRange_GetEnclosingElement(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr*",enclosingElement),"GetEnclosingElement")
	return 
  }
	; 
  TextRange_GetText(maxLength){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"int",maxLength,"ptr*",text),"GetText")
	return StrGet(text,"utf-16")
  }
	; 
  TextRange_Move(unit,count){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"int",unit,"int",count,"int*",moved),"Move")
	return moved
  }
	; 
  TextRange_MoveEndpointByUnit(endpoint,unit,count){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"int",endpoint,"int",unit,"int",count,"int*",moved),"MoveEndpointByUnit")
	return moved
  }
	; 
  TextRange_MoveEndpointByRange(srcEndPoint,range,targetEndPoint){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p,"int",srcEndPoint,"ptr",range,"int",targetEndPoint),"MoveEndpointByRange")
  }
	; 
  TextRange_Select(){
	return _Error(DllCall(vt(this._p,16),"ptr",this._p),"Select")
  }
	; 
  TextRange_AddToSelection(){
	return _Error(DllCall(vt(this._p,17),"ptr",this._p),"AddToSelection")
  }
	; 
  TextRange_RemoveFromSelection(){
	return _Error(DllCall(vt(this._p,18),"ptr",this._p),"RemoveFromSelection")
  }
	; 
  TextRange_ScrollIntoView(alignToTop){
	return _Error(DllCall(vt(this._p,19),"ptr",this._p,"int",alignToTop),"ScrollIntoView")
  }
	; 
  TextRange_GetChildren(){
	_Error(DllCall(vt(this._p,20),"ptr",this._p,"ptr*",children),"GetChildren")
	return children
  }

; IUIAutomationTextRangeArray
	; 
  TextRangeArray_Length(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"int*",length),"Length")
	return length
  }
	; 
  TextRangeArray_GetElement(index){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"int",index,"ptr*",element),"GetElement")
	return element
  }

; IUIAutomationTextPattern
	; 
  Text_RangeFromPoint(pt){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"int64",pt,"ptr*",range),"RangeFromPoint")
	return range
  }
	; 
  Text_RangeFromChild(child){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",child,"ptr*",range),"RangeFromChild")
	return range
  }
	; 
  Text_GetSelection(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",ranges),"GetSelection")
	return ranges
  }
	; 
  Text_GetVisibleRanges(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",ranges),"GetVisibleRanges")
	return ranges
  }
	; 
  Text_DocumentRange(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr*",range),"DocumentRange")
	return range
  }
	; 
  Text_SupportedTextSelection(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int*",supportedTextSelection),"SupportedTextSelection")
	return supportedTextSelection
  }

; IUIAutomationLegacyIAccessiblePattern
	; 
  LegacyIAccessible_Select(flagsSelect){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"int",flagsSelect),"Select")
  }
	; 
  LegacyIAccessible_DoDefaultAction(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"DoDefaultAction")
  }
	; 
  LegacyIAccessible_SetValue(szValue){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"str",szValue),"SetValue")
  }
	; 
  LegacyIAccessible_CurrentChildId(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",pRetVal),"CurrentChildId")
	return pRetVal
  }
	; 
  LegacyIAccessible_CurrentName(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr*",pszName),"CurrentName")
	return StrGet(pszName,"utf-16")
  }
	; 
  LegacyIAccessible_CurrentValue(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr*",pszValue),"CurrentValue")
	return StrGet(pszValue,"utf-16")
  }
	; 
  LegacyIAccessible_CurrentDescription(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr*",pszDescription),"CurrentDescription")
	return StrGet(pszDescription,"utf-16")
  }
	; 
  LegacyIAccessible_CurrentRole(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"uint*",pdwRole),"CurrentRole")
	return pdwRole
  }
	; 
  LegacyIAccessible_CurrentState(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"uint*",pdwState),"CurrentState")
	return pdwState
  }
	; 
  LegacyIAccessible_CurrentHelp(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr*",pszHelp),"CurrentHelp")
	return StrGet(pszHelp,"utf-16")
  }
	; 
  LegacyIAccessible_CurrentKeyboardShortcut(){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr*",pszKeyboardShortcut),"CurrentKeyboardShortcut")
	return StrGet(pszKeyboardShortcut,"utf-16")
  }
	; 
  LegacyIAccessible_GetCurrentSelection(){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr*",pvarSelectedChildren),"GetCurrentSelection")
	return pvarSelectedChildren
  }
	; 
  LegacyIAccessible_CurrentDefaultAction(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"ptr*",pszDefaultAction),"CurrentDefaultAction")
	return StrGet(pszDefaultAction,"utf-16")
  }
	; 
  LegacyIAccessible_CachedChildId(){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"int*",pRetVal),"CachedChildId")
	return pRetVal
  }
	; 
  LegacyIAccessible_CachedName(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr*",pszName),"CachedName")
	return StrGet(pszName,"utf-16")
  }
	; 
  LegacyIAccessible_CachedValue(){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"ptr*",pszValue),"CachedValue")
	return StrGet(pszValue,"utf-16")
  }
	; 
  LegacyIAccessible_CachedDescription(){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr*",pszDescription),"CachedDescription")
	return StrGet(pszDescription,"utf-16")
  }
	; 
  LegacyIAccessible_CachedRole(){
	_Error(DllCall(vt(this._p,20),"ptr",this._p,"uint*",pdwRole),"CachedRole")
	return pdwRole
  }
	; 
  LegacyIAccessible_CachedState(){
	_Error(DllCall(vt(this._p,21),"ptr",this._p,"uint*",pdwState),"CachedState")
	return pdwState
  }
	; 
  LegacyIAccessible_CachedHelp(){
	_Error(DllCall(vt(this._p,22),"ptr",this._p,"ptr*",pszHelp),"CachedHelp")
	return StrGet(pszHelp,"utf-16")
  }
	; 
  LegacyIAccessible_CachedKeyboardShortcut(){
	_Error(DllCall(vt(this._p,23),"ptr",this._p,"ptr*",pszKeyboardShortcut),"CachedKeyboardShortcut")
	return StrGet(pszKeyboardShortcut,"utf-16")
  }
	; 
  LegacyIAccessible_GetCachedSelection(){
	_Error(DllCall(vt(this._p,24),"ptr",this._p,"ptr*",pvarSelectedChildren),"GetCachedSelection")
	return pvarSelectedChildren
  }
	; 
  LegacyIAccessible_CachedDefaultAction(){
	_Error(DllCall(vt(this._p,25),"ptr",this._p,"ptr*",pszDefaultAction),"CachedDefaultAction")
	return StrGet(pszDefaultAction,"utf-16")
  }
	; 
  LegacyIAccessible_GetIAccessible(){
	_Error(DllCall(vt(this._p,26),"ptr",this._p,"ptr*",ppAccessible),"GetIAccessible")
	return ppAccessible
  }

; IUIAutomationItemContainerPattern
	; 
  ItemContainer_FindItemByProperty(pStartAfter,propertyId,value){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",pStartAfter,"int",propertyId,"ptr",value,"ptr*",pFound),"FindItemByProperty")
	return pFound
  }

; IUIAutomationVirtualizedItemPattern
	; 
  VirtualizedItem_Realize(){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p),"Realize")
  }
}
;;
;;IUIAutomationEvent
;;
class IUIAutomationEvent
{
	
}
;;;;;;;;;;;;;;;;;;;;;
;;Wrapped Functions;;
;;;;;;;;;;;;;;;;;;;;;
; retrieves property value
UIA_PropertyValue(v){
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
; Property
UIA_Property(n){
	static id:={RuntimeId:30000,BoundingRectangle:30001,ProcessId:30002,ControlType:30003,LocalizedControlType:30004,Name:30005,AcceleratorKey:30006,AccessKey:30007,HasKeyboardFocus:30008,IsKeyboardFocusable:30009,IsEnabled:30010,AutomationId:30011,ClassName:30012,HelpText:30013,ClickablePoint:30014,Culture:30015,IsControlElement:30016,IsContentElement:30017,LabeledBy:30018,IsPassword:30019,NativeWindowHandle:30020,ItemType:30021,IsOffscreen:30022,Orientation:30023,FrameworkId:30024,IsRequiredForForm:30025,ItemStatus:30026,IsDockPatternAvailable:30027,IsExpandCollapsePatternAvailable:30028,IsGridItemPatternAvailable:30029,IsGridPatternAvailable:30030,IsInvokePatternAvailable:30031,IsMultipleViewPatternAvailable:30032,IsRangeValuePatternAvailable:30033,IsScrollPatternAvailable:30034,IsScrollItemPatternAvailable:30035,IsSelectionItemPatternAvailable:30036,IsSelectionPatternAvailable:30037,IsTablePatternAvailable:30038,IsTableItemPatternAvailable:30039,IsTextPatternAvailable:30040,IsTogglePatternAvailable:30041,IsTransformPatternAvailable:30042,IsValuePatternAvailable:30043,IsWindowPatternAvailable:30044,ValueValue:30045,ValueIsReadOnly:30046,RangeValueValue:30047,RangeValueIsReadOnly:30048,RangeValueMinimum:30049,RangeValueMaximum:30050,RangeValueLargeChange:30051,RangeValueSmallChange:30052,ScrollHorizontalScrollPercent:30053,ScrollHorizontalViewSize:30054,ScrollVerticalScrollPercent:30055,ScrollVerticalViewSize:30056,ScrollHorizontallyScrollable:30057,ScrollVerticallyScrollable:30058,SelectionSelection:30059,SelectionCanSelectMultiple:30060,SelectionIsSelectionRequired:30061,GridRowCount:30062,GridColumnCount:30063,GridItemRow:30064,GridItemColumn:30065,GridItemRowSpan:30066,GridItemColumnSpan:30067,GridItemContainingGrid:30068,DockDockPosition:30069,ExpandCollapseExpandCollapseState:30070,MultipleViewCurrentView:30071,MultipleViewSupportedViews:30072,WindowCanMaximize:30073,WindowCanMinimize:30074,WindowWindowVisualState:30075,WindowWindowInteractionState:30076,WindowIsModal:30077,WindowIsTopmost:30078,SelectionItemIsSelected:30079,SelectionItemSelectionContainer:30080,TableRowHeaders:30081,TableColumnHeaders:30082,TableRowOrColumnMajor:30083,TableItemRowHeaderItems:30084,TableItemColumnHeaderItems:30085,ToggleToggleState:30086,TransformCanMove:30087,TransformCanResize:30088,TransformCanRotate:30089,IsLegacyIAccessiblePatternAvailable:30090,LegacyIAccessibleChildId:30091,LegacyIAccessibleName:30092,LegacyIAccessibleValue:30093,LegacyIAccessibleDescription:30094,LegacyIAccessibleRole:30095,LegacyIAccessibleState:30096,LegacyIAccessibleHelp:30097,LegacyIAccessibleKeyboardShortcut:30098,LegacyIAccessibleSelection:30099,LegacyIAccessibleDefaultAction:30100,AriaRole:30101,AriaProperties:30102,IsDataValidForForm:30103,ControllerFor:30104,DescribedBy:30105,FlowsTo:30106,ProviderDescription:30107,IsItemContainerPatternAvailable:30108,IsVirtualizedItemPatternAvailable:30109,IsSynchronizedInputPatternAvailable:30110}
	, type:={30000:"UIA_RuntimeIdPropertyId",30001:"UIA_BoundingRectanglePropertyId",30002:"UIA_ProcessIdPropertyId",30003:"UIA_ControlTypePropertyId",30004:"UIA_LocalizedControlTypePropertyId",30005:"UIA_NamePropertyId",30006:"UIA_AcceleratorKeyPropertyId",30007:"UIA_AccessKeyPropertyId",30008:"UIA_HasKeyboardFocusPropertyId",30009:"UIA_IsKeyboardFocusablePropertyId",30010:"UIA_IsEnabledPropertyId",30011:"UIA_AutomationIdPropertyId",30012:"UIA_ClassNamePropertyId",30013:"UIA_HelpTextPropertyId",30014:"UIA_ClickablePointPropertyId",30015:"UIA_CulturePropertyId",30016:"UIA_IsControlElementPropertyId",30017:"UIA_IsContentElementPropertyId",30018:"UIA_LabeledByPropertyId",30019:"UIA_IsPasswordPropertyId",30020:"UIA_NativeWindowHandlePropertyId",30021:"UIA_ItemTypePropertyId",30022:"UIA_IsOffscreenPropertyId",30023:"UIA_OrientationPropertyId",30024:"UIA_FrameworkIdPropertyId",30025:"UIA_IsRequiredForFormPropertyId",30026:"UIA_ItemStatusPropertyId",30027:"UIA_IsDockPatternAvailablePropertyId",30028:"UIA_IsExpandCollapsePatternAvailablePropertyId",30029:"UIA_IsGridItemPatternAvailablePropertyId",30030:"UIA_IsGridPatternAvailablePropertyId",30031:"UIA_IsInvokePatternAvailablePropertyId",30032:"UIA_IsMultipleViewPatternAvailablePropertyId",30033:"UIA_IsRangeValuePatternAvailablePropertyId",30034:"UIA_IsScrollPatternAvailablePropertyId",30035:"UIA_IsScrollItemPatternAvailablePropertyId",30036:"UIA_IsSelectionItemPatternAvailablePropertyId",30037:"UIA_IsSelectionPatternAvailablePropertyId",30038:"UIA_IsTablePatternAvailablePropertyId",30039:"UIA_IsTableItemPatternAvailablePropertyId",30040:"UIA_IsTextPatternAvailablePropertyId",30041:"UIA_IsTogglePatternAvailablePropertyId",30042:"UIA_IsTransformPatternAvailablePropertyId",30043:"UIA_IsValuePatternAvailablePropertyId",30044:"UIA_IsWindowPatternAvailablePropertyId",30045:"UIA_ValueValuePropertyId",30046:"UIA_ValueIsReadOnlyPropertyId",30047:"UIA_RangeValueValuePropertyId",30048:"UIA_RangeValueIsReadOnlyPropertyId",30049:"UIA_RangeValueMinimumPropertyId",30050:"UIA_RangeValueMaximumPropertyId",30051:"UIA_RangeValueLargeChangePropertyId",30052:"UIA_RangeValueSmallChangePropertyId",30053:"UIA_ScrollHorizontalScrollPercentPropertyId",30054:"UIA_ScrollHorizontalViewSizePropertyId",30055:"UIA_ScrollVerticalScrollPercentPropertyId",30056:"UIA_ScrollVerticalViewSizePropertyId",30057:"UIA_ScrollHorizontallyScrollablePropertyId",30058:"UIA_ScrollVerticallyScrollablePropertyId",30059:"UIA_SelectionSelectionPropertyId",30060:"UIA_SelectionCanSelectMultiplePropertyId",30061:"UIA_SelectionIsSelectionRequiredPropertyId",30062:"UIA_GridRowCountPropertyId",30063:"UIA_GridColumnCountPropertyId",30064:"UIA_GridItemRowPropertyId",30065:"UIA_GridItemColumnPropertyId",30066:"UIA_GridItemRowSpanPropertyId",30067:"UIA_GridItemColumnSpanPropertyId",30068:"UIA_GridItemContainingGridPropertyId",30069:"UIA_DockDockPositionPropertyId",30070:"UIA_ExpandCollapseExpandCollapseStatePropertyId",30071:"UIA_MultipleViewCurrentViewPropertyId",30072:"UIA_MultipleViewSupportedViewsPropertyId",30073:"UIA_WindowCanMaximizePropertyId",30074:"UIA_WindowCanMinimizePropertyId",30075:"UIA_WindowWindowVisualStatePropertyId",30076:"UIA_WindowWindowInteractionStatePropertyId",30077:"UIA_WindowIsModalPropertyId",30078:"UIA_WindowIsTopmostPropertyId",30079:"UIA_SelectionItemIsSelectedPropertyId",30080:"UIA_SelectionItemSelectionContainerPropertyId",30081:"UIA_TableRowHeadersPropertyId",30082:"UIA_TableColumnHeadersPropertyId",30083:"UIA_TableRowOrColumnMajorPropertyId",30084:"UIA_TableItemRowHeaderItemsPropertyId",30085:"UIA_TableItemColumnHeaderItemsPropertyId",30086:"UIA_ToggleToggleStatePropertyId",30087:"UIA_TransformCanMovePropertyId",30088:"UIA_TransformCanResizePropertyId",30089:"UIA_TransformCanRotatePropertyId",30090:"UIA_IsLegacyIAccessiblePatternAvailablePropertyId",30091:"UIA_LegacyIAccessibleChildIdPropertyId",30092:"UIA_LegacyIAccessibleNamePropertyId",30093:"UIA_LegacyIAccessibleValuePropertyId",30094:"UIA_LegacyIAccessibleDescriptionPropertyId",30095:"UIA_LegacyIAccessibleRolePropertyId",30096:"UIA_LegacyIAccessibleStatePropertyId",30097:"UIA_LegacyIAccessibleHelpPropertyId",30098:"UIA_LegacyIAccessibleKeyboardShortcutPropertyId",30099:"UIA_LegacyIAccessibleSelectionPropertyId",30100:"UIA_LegacyIAccessibleDefaultActionPropertyId",30101:"UIA_AriaRolePropertyId",30102:"UIA_AriaPropertiesPropertyId",30103:"UIA_IsDataValidForFormPropertyId",30104:"UIA_ControllerForPropertyId",30105:"UIA_DescribedByPropertyId",30106:"UIA_FlowsToPropertyId",30107:"UIA_ProviderDescriptionPropertyId",30108:"UIA_IsItemContainerPatternAvailablePropertyId",30109:"UIA_IsVirtualizedItemPatternAvailablePropertyId",30110:"UIA_IsSynchronizedInputPatternAvailablePropertyId"}
	if n is integer
		return type[n]
	else return id[n]
}
; Pattern
UIA_Pattern(n){
	static id:={Invoke:10000,Selection:10001,Value:10002,RangeValue:10003,Scroll:10004,ExpandCollapse:10005,Grid:10006,GridItem:10007,MultipleView:10008,Window:10009,SelectionItem:10010,Dock:10011,Table:10012,TableItem:10013,Text:10014,Toggle:10015,Transform:10016,ScrollItem:10017,LegacyIAccessible:10018,ItemContainer:10019,VirtualizedItem:10020,SynchronizedInput:10021}
	, type:={10000:"UIA_InvokePatternId",10001:"UIA_SelectionPatternId",10002:"UIA_ValuePatternId",10003:"UIA_RangeValuePatternId",10004:"UIA_ScrollPatternId",10005:"UIA_ExpandCollapsePatternId",10006:"UIA_GridPatternId",10007:"UIA_GridItemPatternId",10008:"UIA_MultipleViewPatternId",10009:"UIA_WindowPatternId",10010:"UIA_SelectionItemPatternId",10011:"UIA_DockPatternId",10012:"UIA_TablePatternId",10013:"UIA_TableItemPatternId",10014:"UIA_TextPatternId",10015:"UIA_TogglePatternId",10016:"UIA_TransformPatternId",10017:"UIA_ScrollItemPatternId",10018:"UIA_LegacyIAccessiblePatternId",10019:"UIA_ItemContainerPatternId",10020:"UIA_VirtualizedItemPatternId",10021:"UIA_SynchronizedInputPatternId"}
	if n is integer
		return type[n]
	else return id[n]
}
; Attribute
UIA_Attribute(n){
	static id:={AnimationStyle:40000,BackgroundColor:40001,BulletStyle:40002,CapStyle:40003,Culture:40004,FontName:40005,FontSize:40006,FontWeight:40007,ForegroundColor:40008,HorizontalTextAlignment:40009,IndentationFirstLine:40010,IndentationLeading:40011,IndentationTrailing:40012,IsHidden:40013,IsItalic:40014,IsReadOnly:40015,IsSubscript:40016,IsSuperscript:40017,MarginBottom:40018,MarginLeading:40019,MarginTop:40020,MarginTrailing:40021,OutlineStyles:40022,OverlineColor:40023,OverlineStyle:40024,StrikethroughColor:40025,StrikethroughStyle:40026,Tabs:40027,TextFlowDirections:40028,UnderlineColor:40029,UnderlineStyle:40030}
	, type:={40000:"UIA_AnimationStyleAttributeId",40001:"UIA_BackgroundColorAttributeId",40002:"UIA_BulletStyleAttributeId",40003:"UIA_CapStyleAttributeId",40004:"UIA_CultureAttributeId",40005:"UIA_FontNameAttributeId",40006:"UIA_FontSizeAttributeId",40007:"UIA_FontWeightAttributeId",40008:"UIA_ForegroundColorAttributeId",40009:"UIA_HorizontalTextAlignmentAttributeId",40010:"UIA_IndentationFirstLineAttributeId",40011:"UIA_IndentationLeadingAttributeId",40012:"UIA_IndentationTrailingAttributeId",40013:"UIA_IsHiddenAttributeId",40014:"UIA_IsItalicAttributeId",40015:"UIA_IsReadOnlyAttributeId",40016:"UIA_IsSubscriptAttributeId",40017:"UIA_IsSuperscriptAttributeId",40018:"UIA_MarginBottomAttributeId",40019:"UIA_MarginLeadingAttributeId",40020:"UIA_MarginTopAttributeId",40021:"UIA_MarginTrailingAttributeId",40022:"UIA_OutlineStylesAttributeId",40023:"UIA_OverlineColorAttributeId",40024:"UIA_OverlineStyleAttributeId",40025:"UIA_StrikethroughColorAttributeId",40026:"UIA_StrikethroughStyleAttributeId",40027:"UIA_TabsAttributeId",40028:"UIA_TextFlowDirectionsAttributeId",40029:"UIA_UnderlineColorAttributeId",40030:"UIA_UnderlineStyleAttributeId"}
	if n is integer
		return type[n]
	else return id[n]
}
; ControlType
UIA_ControlType(n){
	static id:={Button:50000,Calendar:50001,CheckBox:50002,ComboBox:50003,Edit:50004,Hyperlink:50005,Image:50006,ListItem:50007,List:50008,Menu:50009,MenuBar:50010,MenuItem:50011,ProgressBar:50012,RadioButton:50013,ScrollBar:50014,Slider:50015,Spinner:50016,StatusBar:50017,Tab:50018,TabItem:50019,Text:50020,ToolBar:50021,ToolTip:50022,Tree:50023,TreeItem:50024,Custom:50025,Group:50026,Thumb:50027,DataGrid:50028,DataItem:50029,Document:50030,SplitButton:50031,Window:50032,Pane:50033,Header:50034,HeaderItem:50035,Table:50036,TitleBar:50037,Separator:50038}
	, type:={50000:"UIA_ButtonControlTypeId",50001:"UIA_CalendarControlTypeId",50002:"UIA_CheckBoxControlTypeId",50003:"UIA_ComboBoxControlTypeId",50004:"UIA_EditControlTypeId",50005:"UIA_HyperlinkControlTypeId",50006:"UIA_ImageControlTypeId",50007:"UIA_ListItemControlTypeId",50008:"UIA_ListControlTypeId",50009:"UIA_MenuControlTypeId",50010:"UIA_MenuBarControlTypeId",50011:"UIA_MenuItemControlTypeId",50012:"UIA_ProgressBarControlTypeId",50013:"UIA_RadioButtonControlTypeId",50014:"UIA_ScrollBarControlTypeId",50015:"UIA_SliderControlTypeId",50016:"UIA_SpinnerControlTypeId",50017:"UIA_StatusBarControlTypeId",50018:"UIA_TabControlTypeId",50019:"UIA_TabItemControlTypeId",50020:"UIA_TextControlTypeId",50021:"UIA_ToolBarControlTypeId",50022:"UIA_ToolTipControlTypeId",50023:"UIA_TreeControlTypeId",50024:"UIA_TreeItemControlTypeId",50025:"UIA_CustomControlTypeId",50026:"UIA_GroupControlTypeId",50027:"UIA_ThumbControlTypeId",50028:"UIA_DataGridControlTypeId",50029:"UIA_DataItemControlTypeId",50030:"UIA_DocumentControlTypeId",50031:"UIA_SplitButtonControlTypeId",50032:"UIA_WindowControlTypeId",50033:"UIA_PaneControlTypeId",50034:"UIA_HeaderControlTypeId",50035:"UIA_HeaderItemControlTypeId",50036:"UIA_TableControlTypeId",50037:"UIA_TitleBarControlTypeId",50038:"UIA_SeparatorControlTypeId"}
	if n is integer
		return type[n]
	else return id[n]
}
; Event
UIA_Event(n){
	static id:={ToolTipOpened:20000,ToolTipClosed:20001,StructureChanged:20002,MenuOpened:20003,AutomationPropertyChanged:20004,AutomationFocusChanged:20005,AsyncContentLoaded:20006,MenuClosed:20007,LayoutInvalidated:20008,Invoke_Invoked:20009,SelectionItem_ElementAddedToSelection:20010,SelectionItem_ElementRemovedFromSelection:20011,SelectionItem_ElementSelected:20012,Selection_Invalidated:20013,Text_TextSelectionChanged:20014,Text_TextChanged:20015,Window_WindowOpened:20016,Window_WindowClosed:20017,MenuModeStart:20018,MenuModeEnd:20019,InputReachedTarget:20020,InputReachedOtherElement:20021,InputDiscarded:20022}
	, type:={20000:"UIA_ToolTipOpenedEventId",20001:"UIA_ToolTipClosedEventId",20002:"UIA_StructureChangedEventId",20003:"UIA_MenuOpenedEventId",20004:"UIA_AutomationPropertyChangedEventId",20005:"UIA_AutomationFocusChangedEventId",20006:"UIA_AsyncContentLoadedEventId",20007:"UIA_MenuClosedEventId",20008:"UIA_LayoutInvalidatedEventId",20009:"UIA_Invoke_InvokedEventId",20010:"UIA_SelectionItem_ElementAddedToSelectionEventId",20011:"UIA_SelectionItem_ElementRemovedFromSelectionEventId",20012:"UIA_SelectionItem_ElementSelectedEventId",20013:"UIA_Selection_InvalidatedEventId",20014:"UIA_Text_TextSelectionChangedEventId",20015:"UIA_Text_TextChangedEventId",20016:"UIA_Window_WindowOpenedEventId",20017:"UIA_Window_WindowClosedEventId",20018:"UIA_MenuModeStartEventId",20019:"UIA_MenuModeEndEventId",20020:"UIA_InputReachedTargetEventId",20021:"UIA_InputReachedOtherElementEventId",20022:"UIA_InputDiscardedEventId"}
	if n is integer
		return type[n]
	else return id[n]
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAutomationEventHandle;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
UIA_OnEvent(ByRef ptr,name){
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
;;;;;;;;;;;;;;;;;
;;UIA_Constants;;
;;;;;;;;;;;;;;;;;
;/*
UIA_Constant(t){
	static _:={0:0
; enum TreeScope Contains values that specify the scope of various operations in the Microsoft UI Automation tree.
	,TreeScope_Element:0x1
	,TreeScope_Children:0x2
	,TreeScope_Descendants:0x4
	,TreeScope_Parent:0x8
	,TreeScope_Ancestors:0x10
	,TreeScope_Subtree:0x7
; enum PropertyConditionFlags Contains values used in creating property conditions.
	,PropertyConditionFlags_None:0
	,PropertyConditionFlags_IgnoreCase:1
; enum AutomationElementMode Contains values that specify the type of reference to use when returning UI Automation elements.
	,AutomationElementMode_None:0
	,AutomationElementMode_Full:1
;; pattern
; enum WindowInteractionState Contains values that specify the current state of the window for purposes of user interaction.
	,WindowInteractionState_Running:0
	,WindowInteractionState_Closing:1
	,WindowInteractionState_ReadyForUserInteraction:2
	,WindowInteractionState_BlockedByModalWindow:3
	,WindowInteractionState_NotResponding:4
; enum WindowVisualState Contains values that specify the visual state of a window.
	,WindowVisualState_Normal:0
	,WindowVisualState_Maximized:1
	,WindowVisualState_Minimized:2
; enum TextPatternRangeEndpoint Contains values that specify the endpoints of a text range.
	,TextPatternRangeEndpoint_Start:0
	,TextPatternRangeEndpoint_End:1
; enum textUnit
	,TextUnit_Character:0
	,TextUnit_Format:1
	,TextUnit_Word:2
	,TextUnit_Line:3
	,TextUnit_Paragraph:4
	,TextUnit_Page:5
	,TextUnit_Document:6
; enum 
	, ; 
	, ; 
; enum 
	, ; 
	, ; 
; enum 
	, ; 
	, ; 
; enum 
	, ; 
	, ; 
; enum 
	, ; 
	, ; 

	}
	return _[t]
}
;*/
