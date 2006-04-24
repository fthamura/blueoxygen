/*hierMenus.js
* by Peter Belesis. v4.0.1 010104
* Copyright (c) 2001 Peter Belesis. All Rights Reserved.
* Originally published and documented at http://www.dhtmlab.com/
* You may use this code on a public Web site only if this entire
* copyright notice appears unchanged and you publicly display
* on the Web page a link to http://www.dhtmlab.com/.
*
* Contact pbel@meteor.com for all other uses.
*/

/***************************************************************************
							BROWSER DETECTION
***************************************************************************/

   HM_DOM = (document.getElementById) ? true : false;
    HM_IE = (document.all) ? true : false;
   HM_IE4 = HM_IE && !HM_DOM;
   HM_IE5 = HM_IE && HM_DOM;
   HM_Mac = (navigator.appVersion.indexOf("Mac") != -1);
  HM_IE5M = HM_IE5 && HM_Mac;
   HM_IEW = HM_IE && !HM_Mac;
  HM_IE4W = HM_IE4 && HM_IEW;
  HM_IE5W = HM_IE5 && HM_IEW;
    HM_NS = navigator.appName == ("Netscape");
   HM_NS4 = (document.layers) ? true : false;
   HM_NS6 = navigator.vendor == ("Netscape6");
if(HM_IE5M) {HM_DOM = false;HM_IE4 = true}

/***************************************************************************
							GLOBAL PARAMETERS
- optional
- apply to all pages using menus
- can be overridden by page-specific parameters
***************************************************************************/

HM_GL_MenuWidth          = 150;
HM_GL_FontFamily         = "Verdana,sans-serif";
HM_GL_FontSize           = 10;
HM_GL_FontBold           = false;
HM_GL_FontItalic         = false;
HM_GL_FontColor          = "black";
HM_GL_FontColorOver      = "white";
HM_GL_BGColor            = "white";
HM_GL_BGColorOver        = "black";
HM_GL_ItemPadding        = 3;

HM_GL_BorderWidth        = 2;
HM_GL_BorderColor        = "red";
HM_GL_BorderStyle        = "solid";
HM_GL_SeparatorSize      = 2;
HM_GL_SeparatorColor     = "yellow";
HM_GL_ImageSrc           = "tri.gif";
HM_GL_ImageSrcLeft       = "triLa.gif";
HM_GL_ImageSize          = 5;
HM_GL_ImageHorizSpace    = 5;
HM_GL_ImageVertSpace     = 5;

HM_GL_KeepHilite         = false;
HM_GL_ClickStart         = false;
HM_GL_ClickKill          = true;
HM_GL_ChildOverlap       = 40;
HM_GL_ChildOffset        = 10;
HM_GL_ChildPerCentOver   = null;
HM_GL_TopSecondsVisible  = .5;
HM_GL_StatusDisplayBuild = 0;
HM_GL_StatusDisplayLink  = 1;
HM_GL_UponDisplay        = null;
HM_GL_UponHide           = null;

HM_GL_RightToLeft        = false;

/********************** PLEASE DO NOT MODIFY CODE BELOW **************************
********************** UNLESS COMFORTABLE WITH SCRIPTING ************************* 
****************** The menu parameters in the HM_a_Parameters array **************
****************** can be changed. If you change them, then there is *************
****************** no need to retain the Global Parameters above.    *************
****************** They may be deleted.                              ************/

/***************************************************************************
								MENU PARAMETERS
***************************************************************************/

HM_MenuIDPrefix = "HM_Menu";
HM_ItemIDPrefix = "HM_Item";
HM_ArrayIDPrefix = "HM_Array";

HM_a_Parameters = [
	["MenuWidth",          200],
	["FontFamily",         "Verdana,sans-serif"],
	["FontSize",           9],
	["FontBold",           false],
	["FontItalic",         false],
	["FontColor",          "red"],
	["FontColorOver",      "white"],
	["BGColor",            "white"],
	["BGColorOver",        "black"],
	["ItemPadding",        3],
	["BorderWidth",        2],
	["BorderColor",        "red"],
	["BorderStyle",        "solid"],
	["SeparatorSize",      1],
	["SeparatorColor",     "yellow"],
	["ImageSrc",           "tri.gif"],
	["ImageSrcLeft",       "triL.gif"],
	["ImageSize",          5],
	["ImageHorizSpace",    0],
	["ImageVertSpace",     0],
	["KeepHilite",         false],
	["ClickStart",         false],
	["ClickKill",          true],
	["ChildOverlap",       20],
	["ChildOffset",        10],
	["ChildPerCentOver",   null],
	["TopSecondsVisible",  .5],
	["StatusDisplayBuild", 1],
	["StatusDisplayLink",  1],
	["UponDisplay",        null],
	["UponHide",           null],
	["RightToLeft",        false]
]

/***************************************************************************
								MAIN SCRIPT
***************************************************************************/

function HM_f_StringTrim(){
	var TestString = this;
	var SpaceChar  = " ";
	while (TestString.charAt(0) == SpaceChar) {TestString = TestString.substr(1)};
	while (TestString.charAt(TestString.length-1) == SpaceChar) {TestString = TestString.substr(0,TestString.length-1)};
	return TestString.toString();
}

String.prototype.trim = HM_f_StringTrim;

function HM_f_GetTestString(teststring){
	var CommaIndex = teststring.indexOf(",");
	if(CommaIndex!=-1) teststring = teststring.substr(0,CommaIndex);
	var DotIndex = teststring.indexOf(".");
	if(DotIndex!=-1) {
		DotIndexLast = teststring.lastIndexOf(".");
		if(DotIndex == DotIndexLast)teststring = teststring.substr(0,DotIndex);		
	}

// 4.0.1
// omit slashes from test strings to allow path specifiers for images
	var SlashIndex = teststring.indexOf("/");
	if(SlashIndex!=-1) {
		SlashIndexLast = teststring.lastIndexOf("/");
		teststring = teststring.substr(SlashIndexLast + 1);		
	}

// 4.0.1
// omit spaces from test strings to allow for font names with spaces
	var SpaceIndex = teststring.indexOf(" ");
	if(SpaceIndex!=-1) {
		SpaceIndexLast = teststring.lastIndexOf(" ");
		teststring = teststring.substr(SpaceIndexLast + 1);
	}

	return teststring;
}

function HM_f_AssignParameters(paramname,defaultvalue){
	var FullParamName = "HM_" + paramname;
	if (typeof eval("window.HM_PG_" + paramname) == "undefined") {
		if (typeof eval("window.HM_GL_" + paramname) == "undefined") {
			eval(FullParamName + "= defaultvalue");
		}
		else {
			eval(FullParamName + "= HM_GL_" + paramname);
		}
	}
	else {
		eval(FullParamName + "= HM_PG_" + paramname);
	}

	var TestString = eval(FullParamName);
	if(eval("typeof(TestString)") == "string") {
		TestString = TestString.trim();
		if(TestString.length == 0) {
			eval(FullParamName + "= null");
			return;
		}
		if(TestString.charAt(0)=="#")return;
		else TestString = HM_f_GetTestString(TestString);
	}

	if (eval("typeof(" + TestString +")") != 'undefined') {
		eval(FullParamName + "= eval("+ FullParamName +")");
	}
}

for (i=0;i<HM_a_Parameters.length;i++) {
	HM_f_AssignParameters(HM_a_Parameters[i][0],HM_a_Parameters[i][1]);
}

HM_ChildPerCentOver = (isNaN(parseFloat(HM_ChildPerCentOver))) ? null : parseFloat(HM_ChildPerCentOver)/100;

function HM_f_ValidateArray(arrayname){
	return ((typeof eval("window." + arrayname) == "object") && (eval(arrayname).length > 1))
}

/*
	Check for existence of array specifying which menus should be built (HM_a_TreesToBuild)
    If array is not defined, then use all existing menu arrays to build menus, as in Version 3.
    Unlike Version 3, menu arrays do not have to be consecutively numbered.
	Create an empty HM_a_TreesToBuild array.
    Cycle through array names HM_Array1 to HM_Array100.
    Any arrays found are added to HM_a_TreesToBuild.
*/



if(!window.HM_a_TreesToBuild) {
	HM_a_TreesToBuild = [];
	for(i=1; i<100; i++){
		if(HM_f_ValidateArray(HM_ArrayIDPrefix + i)) HM_a_TreesToBuild[HM_a_TreesToBuild.length] = i;
	}
}

HM_CurrentArray = null;
HM_CurrentTree  = null;
HM_CurrentMenu  = null;

HM_a_TopMenus = [];

HM_ZIndex = 5000;

HM_AreLoaded = false;
HM_AreCreated = false;
HM_BeingCreated = false;

HM_UserOverMenu = false;

HM_HideAllTimer = null;
HM_TotalTrees = 0; 

function HM_f_Initialize() {
    if(HM_AreCreated) {

// 4.0.1
// fixed typo [totalTrees should have been HM_TotalTrees]
//		for(var i=0; i<totalTrees; i++) {

		for(var i=0; i<HM_TotalTrees; i++) {
			var TopMenu = HM_a_TopMenus[i];
			clearTimeout(TopMenu.hideTimer);
			TopMenu.hideTimer = null;
        }
        clearTimeout(HM_HideAllTimer);
    }
	HM_AreCreated = false;
	HM_BeingCreated = false;
	HM_UserOverMenu = false;
	HM_CurrentMenu = null;
	HM_HideAllTimer = null;
	HM_TotalTrees = 0;
	HM_a_TopMenus = [];
}

function propertyTransfer(){
	this.obj = eval(this.id + "Obj");
	for (temp in this.obj) {this[temp] = this.obj[temp]}
}

if(HM_NS4) {
	HM_NS_OrigWidth  = window.innerWidth;
	HM_NS_OrigHeight = window.innerHeight;
	window.onresize = function (){
	    if (window.innerWidth == HM_NS_OrigWidth && window.innerHeight == HM_NS_OrigHeight) return;
	    HM_f_Initialize();
	    window.location.reload();
	}
	Layer.prototype.propertyTransfer = propertyTransfer;
}

function HM_f_StartIt() {

// 4.0.1
// DOM browsers will not create menus if no BODY exists
	if(HM_DOM && ((typeof(document.body) == "undefined") || (document.body == null))) return;
	HM_AreLoaded = true;
	if (HM_ClickKill) {
		HM_f_OtherMouseDown = (document.onmousedown) ? document.onmousedown :  new Function;
  		if(HM_NS4) document.captureEvents(Event.MOUSEDOWN);
    	document.onmousedown = function(){HM_f_PageClick();HM_f_OtherMouseDown()}
    }
	else {
		HM_TopMilliSecondsVisible = HM_TopSecondsVisible * 1000;
	}
    HM_f_MakeTrees();
}

function HM_f_AssignTreeParameters(arrayvalue,defaultvalue){
	var ValueIsString = (typeof arrayvalue == "string");
	if (ValueIsString) arrayvalue = arrayvalue.trim();
	var ValueIsNull = ((arrayvalue == null) || (typeof arrayvalue == "undefined") || (ValueIsString && arrayvalue.length == 0));
	if(ValueIsNull) return defaultvalue;
	var TestString = arrayvalue;
	if(eval("typeof(TestString)") == "string") {
		if(TestString.charAt(0)=="#")return arrayvalue;
		else TestString = HM_f_GetTestString(TestString);
	}
	if (eval("typeof("+ TestString+" )") != 'undefined') {
		eval("arrayvalue = eval(arrayvalue)");
	}
	return arrayvalue;
}

function HM_f_MakeTrees(){
    HM_BeingCreated = true;
	var TreeParams = null;
	var TreeHasChildren = false;
	var ItemArray = null;

	for(var t=0; t<HM_a_TreesToBuild.length; t++) {
		if(!HM_f_ValidateArray(HM_ArrayIDPrefix + HM_a_TreesToBuild[t])) continue;
		HM_CurrentArray = eval(HM_ArrayIDPrefix + HM_a_TreesToBuild[t]);

		TreeParams = HM_CurrentArray[0];
		TreeHasChildren = false;

		for(var i=1; i<HM_CurrentArray.length; i++) {
			ItemArray = HM_CurrentArray[i];
			if(ItemArray[ItemArray.length-1]) {TreeHasChildren = true; break}
		}

		HM_CurrentTree = {
			MenuWidth        : MenuWidth = HM_f_AssignTreeParameters(TreeParams[0],HM_MenuWidth),
			MenuLeft         : MenuLeft = HM_f_AssignTreeParameters(TreeParams[1],null),
			MenuTop          : MenuTop = HM_f_AssignTreeParameters(TreeParams[2],null),
			ItemWidth        : ItemWidth = MenuWidth - (HM_BorderWidth*2),
			ItemTextWidth    : TreeHasChildren ? (ItemWidth - (HM_ImageSize + HM_ImageHorizSpace)) : ItemWidth,
			HorizOffsetRight : HorizOffsetRight = (parseInt((HM_ChildPerCentOver != null) ? (HM_ChildPerCentOver  * ItemWidth) : HM_ChildOverlap)) - (HM_NS4 ? HM_ItemPadding : 0),
			HorizOffsetLeft  : (MenuWidth - HorizOffsetRight) - (HM_NS4 ? (HM_BorderWidth*2) : 0),
			FontColor        : HM_f_AssignTreeParameters(TreeParams[3],HM_FontColor),
			FontColorOver    : HM_f_AssignTreeParameters(TreeParams[4],HM_FontColorOver),
			BGColor          : HM_f_AssignTreeParameters(TreeParams[5],HM_BGColor),
			BGColorOver      : HM_f_AssignTreeParameters(TreeParams[6],HM_BGColorOver),
			BorderColor      : HM_f_AssignTreeParameters(TreeParams[7],HM_BorderColor),
			SeparatorColor   : HM_f_AssignTreeParameters(TreeParams[8],HM_SeparatorColor),
			TopIsPermanent   : ((MenuLeft == null) || (MenuTop == null)) ? false : HM_f_AssignTreeParameters(TreeParams[9],false),
			TopIsHorizontal  : TopIsHorizontal = HM_f_AssignTreeParameters(TreeParams[10],false),
			TreeIsHorizontal : TreeHasChildren ? HM_f_AssignTreeParameters(TreeParams[11],false) : false,
			PositionUnder    : (!TopIsHorizontal || !TreeHasChildren) ? false : HM_f_AssignTreeParameters(TreeParams[12],false),
			TopImageShow     : TreeHasChildren ? HM_f_AssignTreeParameters(TreeParams[13],true)  : false,
			TreeImageShow    : TreeHasChildren ? HM_f_AssignTreeParameters(TreeParams[14],true)  : false,
			UponDisplay      : HM_f_AssignTreeParameters(TreeParams[15],HM_UponDisplay),
			UponHide         : HM_f_AssignTreeParameters(TreeParams[16],HM_UponHide)
		}

		HM_CurrentMenu = null;
		HM_f_MakeMenu(HM_a_TreesToBuild[t]);
		HM_a_TopMenus[HM_TotalTrees] = HM_CurrentTree.treeParent;
		HM_TotalTrees++;

		if(HM_CurrentTree.TopIsPermanent){
			HM_CurrentTree.treeParent.moveTo(HM_CurrentTree.MenuLeft,HM_CurrentTree.MenuTop);
			if(HM_NS4) {
				HM_CurrentTree.treeParent.zIndex = 5000;
				HM_CurrentTree.treeParent.visibility = "show";
			}
			else {
				HM_CurrentTree.treeParent.style.zIndex = 5000;
				HM_CurrentTree.treeParent.style.visibility = "visible";
			}
		}
    }

	if(HM_StatusDisplayBuild) status = HM_TotalTrees + " Hierarchical Menu Trees Created";
    HM_AreCreated = true;
    HM_BeingCreated = false;
}

function HM_f_GetItemHtmlStr(arraystring){
	var TempString = arraystring;
	if (HM_FontBold) TempString = TempString.bold();
	if (HM_FontItalic) TempString = TempString.italics();
	TempString = "<FONT FACE='" + HM_FontFamily + "' POINT-SIZE=" + HM_FontSize + ">" + TempString + "</FONT>";
	var TempStringOver = TempString.fontcolor(HM_CurrentTree.FontColorOver);
	TempString = TempString.fontcolor(HM_CurrentTree.FontColor);
	return [TempString,TempStringOver];
}

function HM_f_GetItemLyrStr(itemid,htmlstrings,hasmore){
	var TempString = "<LAYER ID=" + itemid + " WIDTH="+ (HM_CurrentTree.ItemWidth - (HM_ItemPadding*2)) + ">"
				+  "<LAYER WIDTH=" + (HM_CurrentTree.ItemTextWidth - (HM_ItemPadding*2)) + ">" + htmlstrings[0] +"</LAYER>"
				+  "<LAYER WIDTH=" + (HM_CurrentTree.ItemTextWidth - (HM_ItemPadding*2)) + ">" + htmlstrings[1] +"</LAYER>"
				+  "<LAYER></LAYER>"
	if(hasmore && HM_CurrentMenu.showImage)
	TempString += "<LAYER WIDTH="+ HM_ImageSize + "><IMG SRC='" + HM_ImageSrc + "' WIDTH=" + HM_ImageSize + " VSPACE=0 HSPACE=0 BORDER=0></LAYER>";
	TempString += "</LAYER>";
	return TempString;
}

function HM_f_GetItemDivStr(itemid,disptext,hasmore){
	var WidthValue = HM_CurrentMenu.isHorizontal ? (ItemElement.isLastItem) ? (HM_CurrentTree.MenuWidth - HM_BorderWidth - HM_SeparatorSize) : (HM_CurrentTree.MenuWidth - HM_BorderWidth) : HM_CurrentTree.ItemWidth;
	var TempString = "<DIV ID=" + itemid + " STYLE='position:absolute;width:" + WidthValue + "px'>";
	if(HM_CurrentMenu.showImage) {
		var FullPadding  = (HM_ItemPadding*2) + HM_ImageSize + HM_ImageHorizSpace;
	}
    if(hasmore && HM_CurrentMenu.showImage) {
		var ImgPosition = HM_RightToLeft ? "absolute;" : "relative;";
		var ImgSrc      = HM_RightToLeft ? HM_ImageSrcLeft : HM_ImageSrc;
		var ImgHSpace   = (HM_RightToLeft || HM_IE5M) ? 0 : HM_ItemPadding;
		var ImgStyle    = HM_RightToLeft ? ("left:"+ (HM_ItemPadding + HM_ImageHorizSpace) + "px;top:"+ (HM_ItemPadding + HM_ImageVertSpace) + "px;") : ("float:right;margin-right:"+ (HM_IE5M ? -(HM_ImageSize + HM_ItemPadding) : (-FullPadding)) +"px;margin-top:"+ HM_ImageVertSpace + "px;width:"+ HM_ImageSize + "px;");
		var ImgString   = "<IMG STYLE='position:"+ ImgPosition + ImgStyle +"' SRC='" + ImgSrc + "' HSPACE="+ ImgHSpace +" VSPACE=0 BORDER=0>";
		TempString += ImgString;
	}
 	TempString += disptext + "</DIV>";
	return TempString;
}

function HM_f_SetItemProperties(itemid,itemidsuffix) {
	this.tree        = HM_CurrentTree;
	this.itemsetup   = HM_f_ItemSetup;
	this.index       = HM_CurrentMenu.itemCount - 1;
	this.tree        = HM_CurrentTree;
	this.isLastItem  = (HM_CurrentMenu.itemCount == HM_CurrentMenu.maxItems);
	this.array	     = HM_CurrentMenu.array[HM_CurrentMenu.itemCount];
	this.dispText    = this.array[0];
	this.linkText    = this.array[1];
	this.hasRollover = this.array[2];
	this.permHilite  = (!this.hasRollover && this.array[3]);
	this.hasMore	 = this.array[4];
	this.childID	 = this.hasMore ? (HM_MenuIDPrefix + itemidsuffix) : null;
	this.child	     = null;
    this.onmouseover = HM_f_ItemOver;
    this.onmouseout  = HM_f_ItemOut;
	if(HM_NS4) {
		var HtmlStrings  = HM_f_GetItemHtmlStr(this.dispText);
		this.htmStr	     = HtmlStrings[0];
		this.htmStrOver  = HtmlStrings[1];
		this.itemStr	 = HM_f_GetItemLyrStr(itemid,HtmlStrings,this.hasMore);
	}
	else {
		this.setItemStyle = HM_f_SetItemStyle;
		if(HM_IE4) {
			this.itemStr	 = HM_f_GetItemDivStr(itemid,this.dispText,this.hasMore);
		}
	}
}

function HM_f_Make4ItemElement(menucount) {
	var ItemIDSuffix = menucount + "_" + HM_CurrentMenu.itemCount;
	var LayerID  = HM_ItemIDPrefix + ItemIDSuffix;
	var ObjectID = LayerID + "Obj";
 	eval(ObjectID + " = new Object()");
	ItemElement = eval(ObjectID);
	ItemElement.setItemProperties = HM_f_SetItemProperties;
	ItemElement.setItemProperties(LayerID,ItemIDSuffix);
	return ItemElement;
}

function HM_f_MakeElement(menuid) {
	var MenuObject;
	if (HM_DOM) {
		MenuObject = document.createElement("DIV");
		with(MenuObject){
			id = menuid;
			with(style) {
				position = "absolute";
				visibility = "hidden";
				width = (HM_NS6 ? HM_CurrentTree.ItemWidth : HM_CurrentTree.MenuWidth) + "px";
			}
		}
		document.body.appendChild(MenuObject);
	}
	else {
		var LayerID  = menuid;
		var ObjectID = LayerID + "Obj";
		eval(ObjectID + " = new Object()"); 
		MenuObject = eval(ObjectID);
	}
	return MenuObject;
}

function HM_f_MakeMenu(menucount) {
	if(!HM_f_ValidateArray(HM_ArrayIDPrefix + menucount)) return false;
	HM_CurrentArray = eval(HM_ArrayIDPrefix + menucount);
	
	NewMenu = HM_f_MakeElement(HM_MenuIDPrefix + menucount);
	NewMenu.array = HM_CurrentArray;
	NewMenu.tree  = HM_CurrentTree;

	if(HM_CurrentMenu) {
		NewMenu.parentMenu = HM_CurrentMenu;
		NewMenu.parentItem = HM_CurrentMenu.itemElement;
		NewMenu.parentItem.child = NewMenu;
		NewMenu.hasParent = true;
		NewMenu.isHorizontal = HM_CurrentTree.TreeIsHorizontal;
		NewMenu.showImage = HM_CurrentTree.TreeImageShow;
	}
	else {
		NewMenu.isHorizontal = HM_CurrentTree.TopIsHorizontal;
		NewMenu.showImage = HM_CurrentTree.TopImageShow;
	}

	NewMenu.itemCount = 0;
	NewMenu.maxItems = NewMenu.array.length - 1;
	NewMenu.zIndex = ++HM_ZIndex;
	NewMenu.showIt = HM_f_ShowIt;
	NewMenu.keepInWindow = HM_f_KeepInWindow;
    NewMenu.onmouseover = HM_f_MenuOver;
    NewMenu.onmouseout = HM_f_MenuOut;
    NewMenu.hideTree = HM_f_HideTree
    NewMenu.hideParents = HM_f_HideParents;
    NewMenu.hideChildren = HM_f_HideChildren;
    NewMenu.hideTop = HM_f_HideTop;
    NewMenu.hideSelf        = HM_f_HideSelf;

    NewMenu.hasChildVisible = false;
    NewMenu.isOn = false;
    NewMenu.hideTimer = null;
    NewMenu.currentItem = null;
	NewMenu.setMenuStyle = HM_f_SetMenuStyle;

	if(HM_IE) NewMenu.onselectstart = HM_f_CancelSelect;
    if(!HM_NS4) NewMenu.moveTo = HM_f_MoveTo;
	
	if(HM_NS4) NewMenu.htmlString = "<LAYER ID='" + HM_MenuIDPrefix + menucount +"' VISIBILITY=HIDE WIDTH="+ HM_CurrentTree.MenuWidth +">";
	if(HM_IE4) NewMenu.htmlString = "<DIV   ID='" + HM_MenuIDPrefix + menucount +"' STYLE='position:absolute;visibility:hidden;width:"+ HM_CurrentTree.MenuWidth +"'>";

	HM_CurrentMenu = NewMenu;

	if(HM_DOM) NewMenu.setMenuStyle();

	while (NewMenu.itemCount < NewMenu.maxItems) {
		NewMenu.itemCount++;
		if(HM_StatusDisplayBuild) status = "Creating Hierarchical Menus: " + menucount + " / " + NewMenu.itemCount;
		NewMenu.itemElement = (HM_NS4 || HM_IE4) ? HM_f_Make4ItemElement(menucount) : HM_f_MakeItemElement(menucount);

		if(!HM_DOM) NewMenu.htmlString += NewMenu.itemElement.itemStr;
		if(NewMenu.itemElement.hasMore){
	        MenuCreated = HM_f_MakeMenu(menucount + "_" + NewMenu.itemCount);
            if(MenuCreated) {
				HM_CurrentMenu = NewMenu = NewMenu.parentMenu;
			}
			else {
				NewMenu.itemElement.hasMore = false;
			}
        }
    }
	if(HM_IE4) {
		document.write(NewMenu.htmlString + "</DIV>");
		menuLyr = document.all[HM_MenuIDPrefix + menucount];
		menuLyr.propertyTransfer = propertyTransfer;
		menuLyr.propertyTransfer();
		NewMenu = menuLyr;
		NewMenu.setMenuStyle();
	    if(!HM_IE5M) NewMenu.childNodes = NewMenu.children;
		NewMenu.lastItem = NewMenu.childNodes[NewMenu.childNodes.length-1];
	    for(var i=0; i<NewMenu.childNodes.length; i++) {
	        it = NewMenu.childNodes[i];
			it.siblingBelow = i>0 ? NewMenu.childNodes[i-1] : null;
			it.propertyTransfer = propertyTransfer;
			it.propertyTransfer();
			it.itemsetup(i+1);
	    }
	}
    if(HM_NS4) {
		document.write(NewMenu.htmlString + "</LAYER>");
		menuLyr = document.layers[document.layers.length-1];
		menuLyr.propertyTransfer();
		eval(menuLyr.id + "= menuLyr");
		NewMenu = menuLyr;
    	NewMenu.childNodes = NewMenu.document.layers;
		NewMenu.lastItem = NewMenu.childNodes[NewMenu.childNodes.length-1];
	    for(var i=0; i<NewMenu.childNodes.length; i++) {
	        it = NewMenu.childNodes[i];
			it.propertyTransfer();
			it.itemsetup(i+1);
	    }
	    NewMenu.fullHeight = NewMenu.lastItem.top + NewMenu.lastItem.clip.bottom + HM_BorderWidth;
		NewMenu.bgColor = HM_CurrentTree.BorderColor;
	
	    NewMenu.clip.top = 0;
		if (NewMenu.isHorizontal) {
		    NewMenu.clip.right = NewMenu.lastItem.left + NewMenu.lastItem.clip.right + HM_BorderWidth;
		}
		else {
		    NewMenu.clip.right = HM_CurrentTree.MenuWidth;
		}
	
	    NewMenu.clip.bottom = NewMenu.fullHeight;
	}
	if(HM_DOM || HM_IE4) {
		if(NewMenu.isHorizontal){
			var ChildHeight = parseInt(NewMenu.style.height);
			ChildHeight -= (HM_NS6) ? (HM_ItemPadding * 2) : (HM_BorderWidth * 2);
			for(i=0; i<NewMenu.childNodes.length; i++){
				NewMenu.childNodes[i].style.height = ChildHeight + "px";
			}
		}
	}
	NewMenu.moveTo(0,0);
	HM_CurrentTree.treeParent = NewMenu.tree.startChild = NewMenu;
	return true;
}

function HM_f_SetMenuStyle(){
	with(this.style) {
		borderWidth = HM_BorderWidth + "px";
		borderColor = HM_CurrentTree.BorderColor;
		borderStyle = HM_BorderStyle;
		zIndex      = --HM_ZIndex;
		overflow    = "hidden";
		cursor      = "default";
		fontStyle   = (HM_FontItalic) ? "italic" : "normal";
		font        = ((HM_FontBold) ? "bold " : "normal ") + HM_FontSize + "pt " + HM_FontFamily;
	}
}



function HM_f_MakeItemElement() {
	var ItemElement = document.createElement("DIV");
	ItemElement.style.position = "absolute";
	ItemElement.style.visibility = "inherit";
	HM_CurrentMenu.appendChild(ItemElement);
	ItemElement.setItemProperties = HM_f_SetItemProperties;
	ItemElement.setItemProperties();
	ItemElement.siblingBelow = ItemElement.previousSibling;

// 4.0.1
// omit DOM node creation to allow for user-specified HTML in item displays
// var TxtNode = document.createTextNode(ItemElement.dispText);

	if(ItemElement.linkText) ItemElement.onclick = HM_f_LinkIt;
	ItemElement.menu = HM_CurrentMenu;
	var FullPadding  = (HM_ItemPadding*2) + HM_ImageSize + HM_ImageHorizSpace;
    if(ItemElement.hasMore && HM_CurrentMenu.showImage) {
		var ImageElement = document.createElement("IMG");
		with(ImageElement){
			src = HM_RightToLeft ? HM_ImageSrcLeft : HM_ImageSrc;
			hspace = (!HM_RightToLeft && HM_IE5W) ? HM_ItemPadding : 0;
			vspace = 0;
			with(style) {
				if(HM_RightToLeft) {
					position = "absolute";
				}
				else {
					position = "relative";
					marginTop = HM_ImageVertSpace + "px";
					if(HM_IE5W) {
						marginRight = -FullPadding + "px";
					}
					else marginRight = -(HM_ImageSize + HM_ItemPadding) +"px";
					if(HM_NS6) cssFloat = "right";
					else styleFloat = "right";
				}	
				width = HM_ImageSize + "px";
			}
		}
// 4.0.1
// move image insertion to after item HTML is inserted to allow for user-specified HTML in item displays
//		ItemElement.appendChild(ImageElement);
	}

// 4.0.1
// Use non-DOM-compliant innerHTML property to allow for user-specified HTML in item displays

	ItemElement.innerHTML = ItemElement.dispText;

// 4.0.1
// Insert image after item HTML is inserted to allow for user-specified HTML in item displays

	if(ImageElement) ItemElement.insertBefore(ImageElement,ItemElement.firstChild);

// 4.0.1
// Omit use of DOM-compliant text node to allow for user-specified HTML in item displays
//	ItemElement.appendChild(TxtNode);

	ItemElement.setItemStyle();
	return ItemElement;
}

function HM_f_SetItemStyle() {
	with(this.style){
		backgroundColor   = (this.permHilite) ? HM_CurrentTree.BGColorOver : HM_CurrentTree.BGColor;
		color             = (this.permHilite) ? HM_CurrentTree.FontColorOver : HM_CurrentTree.FontColor;
		padding           = HM_ItemPadding +"px";
		if(HM_CurrentMenu.showImage)	{
			var FullPadding  = (HM_ItemPadding*2) + HM_ImageSize + HM_ImageHorizSpace;
			if (HM_RightToLeft) paddingLeft = FullPadding + "px";
			else paddingRight = FullPadding + "px";
		}
		if(!this.isLastItem) {
			var SeparatorString = HM_SeparatorSize + "px solid " + this.tree.SeparatorColor;
			if (this.menu.isHorizontal) borderRight = SeparatorString;
			else borderBottom = SeparatorString;
		}

		if(HM_IE) width = HM_CurrentTree.ItemWidth + "px";
		else width = (HM_CurrentTree.ItemWidth - (parseInt(paddingLeft) + parseInt(paddingRight))) + "px";

		if(this.menu.isHorizontal){
			if(HM_IE){
				if(this.isLastItem) width = (HM_CurrentTree.MenuWidth - HM_BorderWidth - HM_SeparatorSize) + "px"
				else width = (HM_CurrentTree.MenuWidth - HM_BorderWidth) + "px"
			}
			if(HM_NS6) width = (HM_CurrentTree.MenuWidth - HM_BorderWidth - parseInt(paddingLeft) - parseInt(paddingRight) - HM_SeparatorSize) + "px";
			top = "0px";
			if(HM_IE) left = (this.index * (HM_CurrentTree.MenuWidth - HM_BorderWidth)) + "px";
			if(HM_NS6) left = ((this.index * parseInt(width)) + ((HM_SeparatorSize * this.index)))  + ((parseInt(paddingLeft) + parseInt(paddingRight)) * this.index) + "px";
			var LeftAndWidth = parseInt(left) + parseInt(width);
			this.menu.style.width = LeftAndWidth + (HM_IE ? (HM_BorderWidth * 2) : (parseInt(paddingLeft) + parseInt(paddingRight))) + "px"
		    if (this.index) {
				var SiblingHeight = (HM_IE4W) ? (this.siblingBelow.scrollHeight) : this.siblingBelow.offsetHeight;
				this.menu.style.height = Math.max(parseInt(this.menu.style.height),SiblingHeight+(HM_NS6 ? 0 : HM_BorderWidth * 2)) + "px";
			}
	       	else{
				var SiblingHeight = (HM_IE4W) ? (this.scrollHeight) : this.offsetHeight;
				this.menu.style.height = SiblingHeight + (HM_NS6 ? 0 : HM_BorderWidth * 2) + "px";
			}
		}
		else {
			left = "0px";
		    if (this.index) {
				var SiblingHeight = (HM_IE4W) ? (this.siblingBelow.scrollHeight + HM_SeparatorSize) : this.siblingBelow.offsetHeight;
				top = parseInt(this.siblingBelow.style.top) + SiblingHeight + "px";
			}
	       	else top = "0px";
			this.menu.style.height = parseInt(top) + (HM_IEW ? this.scrollHeight : this.offsetHeight) + (HM_NS6 ? 0 : (HM_BorderWidth * 2)) + "px";
		}
	}
}

function HM_f_ItemSetup(whichItem) {
    this.menu = (HM_NS4) ? this.parentLayer : this.parentElement;

    if (this.hasMore) {
        this.child = eval(this.childID);
        this.child.parentMenu = this.menu;
        this.child.parentItem = this;
    }

    if (this.linkText) {
        if(HM_NS4) {
			this.captureEvents(Event.MOUSEUP)
        	this.onmouseup = HM_f_LinkIt;
		}
		else {
        	this.onclick = HM_f_LinkIt;
		}
    }
	if(HM_IE4) this.setItemStyle();
	if(HM_NS4) {
		if (this.menu.isHorizontal) {
	    	if (this.index != 0) this.left = this.siblingBelow.left + this.siblingBelow.clip.width + HM_SeparatorSize;
			else this.left = (HM_BorderWidth + HM_ItemPadding);
			this.top = (HM_BorderWidth + HM_ItemPadding);
		}
		else {
			this.left = (HM_BorderWidth + HM_ItemPadding);
		    if (this.index != 0) this.top = this.siblingBelow.top + this.siblingBelow.clip.height + HM_SeparatorSize;
	    	else this.top = (HM_BorderWidth + HM_ItemPadding)
		}
	    this.clip.top = this.clip.left = -HM_ItemPadding;
	    this.clip.right = this.tree.ItemWidth - HM_ItemPadding;

		this.bgColor = this.permHilite ? this.tree.BGColorOver : this.tree.BGColor;
	
		this.txtLyrOff = this.document.layers[0];
		with(this.txtLyrOff) {
			if (HM_RightToLeft && this.menu.showImage) left = (HM_ItemPadding*2) + HM_ImageSize + HM_ImageHorizSpace;
			visibility = this.permHilite ? "hide" : "inherit";
		}
	
		this.txtLyrOn = this.document.layers[1];
		with(this.txtLyrOn) {
			if (HM_RightToLeft && this.menu.showImage) left = (HM_ItemPadding*2) + HM_ImageSize + HM_ImageHorizSpace;
			visibility = this.permHilite ? "inherit" : "hide";
		}
	
		this.dummyLyr = this.document.layers[2];
		with(this.dummyLyr) {
			left = top = -HM_ItemPadding;
			clip.width = this.clip.width;
			clip.height = this.clip.height;
		}
	
		if(this.document.layers.length>3) {
			this.imgLyr = this.document.layers[3];
			with(this.imgLyr) {
				moveBelow(this.txtLyrOff);
				left = (HM_RightToLeft) ? 0 : this.tree.ItemWidth - (HM_ItemPadding * 2) - HM_ImageSize - HM_ImageHorizSpace;
				top = HM_ImageVertSpace;
			}
		}
	
		this.fullClip = this.txtLyrOff.document.height + (HM_ItemPadding * 2);
	
		if(this.menu.isHorizontal) {
			if(this.index) this.fullClip = Math.max(this.siblingBelow.fullClip,this.fullClip);
		}
		this.clip.height = this.fullClip;
	}
}

function HM_f_PopUp(menuname,e){
	if(HM_IE) e = event;
    if (!HM_AreLoaded) return;
	menuname = menuname.replace("elMenu",HM_MenuIDPrefix);
   	HM_CurrentMenu = (HM_NS4) ? document.layers[menuname] : (HM_DOM) ? document.getElementById(menuname) : document.all(menuname);
	if(!HM_CurrentMenu)return;
    var LinkElement = (HM_IE) ? e.srcElement : e.target;
    if (HM_ClickStart) LinkElement.onclick = HM_f_PopMenu;
    else HM_f_PopMenu(e);
}

function HM_f_PopMenu(e){
	if(HM_IE) e = event;
    if (!HM_AreLoaded || !HM_AreCreated) return true;
    if (HM_ClickStart && e.type != "click") return true;
    HM_f_HideAll();
    HM_CurrentMenu.hasParent = false;
	HM_CurrentMenu.tree.startChild = HM_CurrentMenu;
	var EventX = (HM_IE) ? (e.clientX + document.body.scrollLeft) : e.pageX;
	var EventY = (HM_IE) ? (e.clientY + document.body.scrollTop)  : e.pageY;
	HM_CurrentMenu.xPos = (HM_CurrentMenu.tree.MenuLeft) ? HM_CurrentMenu.tree.MenuLeft : EventX;
   	HM_CurrentMenu.yPos = (HM_CurrentMenu.tree.MenuTop)  ? HM_CurrentMenu.tree.MenuTop  : EventY;
    HM_CurrentMenu.keepInWindow();
    HM_CurrentMenu.moveTo(HM_CurrentMenu.xPos,HM_CurrentMenu.yPos);
    HM_CurrentMenu.isOn = true;
    HM_CurrentMenu.showIt(true);
    return false;
}

function HM_f_MenuOver(e) {
	if(!this.tree.startChild){this.tree.startChild = this}
	if(this.tree.startChild == this) HM_f_HideAll(this)
    this.isOn = true;
    HM_UserOverMenu = true;
    HM_CurrentMenu = this;
    if (this.hideTimer) clearTimeout(this.hideTimer);
}

function HM_f_MenuOut() {
	if(HM_IE5 && event.srcElement.contains(event.toElement)) return;
    this.isOn = false;
    HM_UserOverMenu = false;
    if(HM_StatusDisplayLink) status = "";
    if(!HM_ClickKill) HM_HideAllTimer = setTimeout("HM_CurrentMenu.hideTree()",10);  
}

function HM_f_ItemOver(){
    if (HM_KeepHilite) {
        if (this.menu.currentItem && this.menu.currentItem != this && this.menu.currentItem.hasRollover) {
            if (HM_NS4) {
	            with(this.menu.currentItem){
					bgColor = this.tree.BGColor;
        	    	txtLyrOff.visibility = "inherit";
					txtLyrOn.visibility = "hide";
				}
			}
			else {
				with(this.menu.currentItem.style){
					backgroundColor = this.tree.BGColor;
	            	color = this.tree.FontColor
				}
			}
        }
    }
	if(HM_IE5 && event.srcElement.tagName == "IMG") return;
	if(this.hasRollover) {
		if (HM_NS4) {
		    this.bgColor = this.tree.BGColorOver;
			this.txtLyrOff.visibility = "hide";
			this.txtLyrOn.visibility = "inherit";
		}
		else {
		    this.style.backgroundColor = this.tree.BGColorOver;
		    this.style.color = this.tree.FontColorOver;
		}
	}

    if(HM_StatusDisplayLink) status = this.linkText;
    this.menu.currentItem = this;
	if (this.menu.hasChildVisible && (this.menu.visibleChild != this.child)) {
        this.menu.hideChildren(this);
    }

    if (this.hasMore) {
		if (this.tree.PositionUnder && (this.menu == this.tree.treeParent)) {
			if (HM_NS4) {
				this.child.xPos = this.pageX + this.clip.left - HM_BorderWidth;
				this.child.yPos = this.menu.top + this.menu.clip.height - HM_BorderWidth;
			}
			else {
				this.child.xPos = parseInt(this.menu.style.left) + parseInt(this.style.left);
				this.child.yPos = parseInt(this.menu.style.top)  + this.menu.offsetHeight - (HM_BorderWidth);
			}
		}
		else {
			if(HM_NS4) {
				this.oL = this.pageX + this.clip.left;
				this.child.offsetWidth = this.child.clip.width;
				this.oT = this.pageY + this.clip.top - HM_BorderWidth;
			}
			else {
				if(HM_IE5M) {
					this.oL = parseInt(this.menu.style.left) - HM_BorderWidth;
					this.oL += this.offsetLeft;
					this.oT =  parseInt(this.menu.style.top)  -HM_BorderWidth;
					this.oT += this.offsetTop;
				}
				else {
					this.oL = (HM_IE) ? parseInt(this.menu.style.left) : -HM_BorderWidth;
					this.oL += this.offsetLeft;
					this.oT = (HM_IE) ? parseInt(this.menu.style.top) : -HM_BorderWidth;
					this.oT += this.offsetTop;
				}
			}

			if(HM_RightToLeft) {
				this.child.xPos = this.oL + (this.tree.HorizOffsetRight - this.child.offsetWidth);
			}
			else {		
				this.child.xPos = this.oL + this.tree.HorizOffsetLeft;
			}
			this.child.yPos = this.oT + HM_ChildOffset + HM_BorderWidth;
		}
        if(!this.tree.PositionUnder) this.child.keepInWindow();
		this.child.moveTo(this.child.xPos,this.child.yPos);
        this.menu.hasChildVisible = true;
        this.menu.visibleChild = this.child;
        this.child.showIt(true);
    }
}

function HM_f_ItemOut() {
	if (HM_IE5 && (event.srcElement.contains(event.toElement)
	  || (event.fromElement.tagName=="IMG" && event.toElement.contains(event.fromElement))))
		  return;
    if ( (!HM_KeepHilite || ((this.tree.TopIsPermanent && (this.tree.treeParent==this)) && !this.menu.hasChildVisible)) && this.hasRollover) {
        if(HM_NS4) {

// 4.0.1
// added "this" object, inadvertently omitted.
// Thanks to Armand Niculescu and Waymon Campbell for the heads-up.

			with(this){
				bgColor = this.tree.BGColor;
				txtLyrOff.visibility = "inherit";
				txtLyrOn.visibility = "hide";
			}
		}
		else {
			with(this.style) {
				backgroundColor = this.tree.BGColor;
           		color = this.tree.FontColor
			}
		}
    }
	if(HM_NS4 && !HM_ClickKill && !HM_UserOverMenu) {
        HM_HideAllTimer = setTimeout("HM_CurrentMenu.hideTree()",10);  
    }
}

function HM_f_MoveTo(xPos,yPos) {
	this.style.left = xPos + "px";
	this.style.top = yPos + "px";
}

function HM_f_ShowIt(on) {
	if (!(this.tree.TopIsPermanent && (this.tree.treeParent==this))) {
		if(!this.hasParent || (this.hasParent && this.tree.TopIsPermanent)) {
			var IsVisible = (HM_NS4) ? this.visibility == "show" : this.style.visibility == "visible";
			if ((on && !IsVisible) || (!on && IsVisible))
				eval(on ? this.tree.UponDisplay : this.tree.UponHide)
		}
		if(HM_NS4) {this.visibility = (on) ? "show" : "hide"}
		else {this.style.visibility = (on) ? "visible" : "hidden"}
	}
    if (HM_KeepHilite && this.currentItem && this.currentItem.hasRollover) {
        if(HM_NS4) {
	        with(this.currentItem){
				bgColor = this.tree.BGColor;
				txtLyrOff.visibility = "inherit";
				txtLyrOn.visibility = "hide";
			}
		}
		else {
			with(this.currentItem.style){
				backgroundColor = this.tree.BGColor;
				color = this.tree.FontColor;
			}
		}
    }
    this.currentItem = null;
}

function HM_f_KeepInWindow() {
    var ExtraSpace     = 10;
	var WindowLeftEdge = (HM_IE) ? document.body.scrollLeft   : window.pageXOffset;
	var WindowTopEdge  = (HM_IE) ? document.body.scrollTop    : window.pageYOffset;
	var WindowWidth    = (HM_IE) ? document.body.clientWidth  : window.innerWidth;
	var WindowHeight   = (HM_IE) ? document.body.clientHeight : window.innerHeight;
	var WindowRightEdge  = (WindowLeftEdge + WindowWidth) - ExtraSpace;
	var WindowBottomEdge = (WindowTopEdge + WindowHeight) - ExtraSpace;

	var MenuLeftEdge = this.xPos;
	var MenuRightEdge = MenuLeftEdge + ((HM_NS4) ? this.clip.width : this.offsetWidth);
	var MenuBottomEdge = this.yPos + ((HM_NS4) ? this.clip.height : this.offsetHeight);

	if (this.hasParent) {
		var ParentLeftEdge = (HM_NS4) ? this.parentMenu.pageX : parseInt(this.parentMenu.style.left);
		if(HM_NS4) this.offsetWidth = this.clip.width;
	}
	if (MenuRightEdge > WindowRightEdge) {
		if (this.hasParent) {
			this.xPos = ParentLeftEdge + this.tree.HorizOffsetRight - this.offsetWidth;	
		}
		else {
			dif = MenuRightEdge - WindowRightEdge;
			this.xPos -= dif;
		}
	}

	if (MenuBottomEdge > WindowBottomEdge) {
		dif = MenuBottomEdge - WindowBottomEdge;
		this.yPos -= dif;
	}

	if (MenuLeftEdge < WindowLeftEdge) {
		if (this.hasParent) {
			this.xPos = ParentLeftEdge + this.tree.HorizOffsetLeft;
		}
		else {this.xPos = 5}
	}       
}

function HM_f_LinkIt() {
	HM_f_HideAll();
    if (this.linkText.indexOf("javascript")!=-1) eval(this.linkText)
    else location.href = this.linkText;
}

function HM_f_PopDown(menuname){
    if (!HM_AreLoaded || !HM_AreCreated) return;
	menuname = menuname.replace("elMenu",HM_MenuIDPrefix);
    var MenuToHide = (HM_NS4) ? document.layers[menuname] : (HM_DOM) ? document.getElementById(menuname) : document.all(menuname);
	if(!MenuToHide)return;
    MenuToHide.isOn = false;
    if (!HM_ClickKill) MenuToHide.hideTop();
}

function HM_f_HideAll(callingmenu) {
	for(var i=0; i<HM_TotalTrees; i++) {
        var TopMenu = HM_a_TopMenus[i].tree.startChild;
		if(TopMenu == callingmenu)continue
        TopMenu.isOn = false;
        if (TopMenu.hasChildVisible) TopMenu.hideChildren();
        TopMenu.showIt(false);
    }    
}

function HM_f_HideTree() { 
    HM_HideAllTimer = null;
    if (HM_UserOverMenu) return;
    if (this.hasChildVisible) this.hideChildren();
    this.hideParents();
}

function HM_f_HideTop() {
	TopMenuToHide = this;
    (HM_ClickKill) ? TopMenuToHide.hideSelf() : (this.hideTimer = setTimeout("TopMenuToHide.hideSelf()",HM_TopMilliSecondsVisible));
}

function HM_f_HideSelf() {
    this.hideTimer = null;
    if (!this.isOn && !HM_UserOverMenu) this.showIt(false);
}

function HM_f_HideParents() {
    var TempMenu = this;
    while(TempMenu.hasParent) {
        TempMenu.showIt(false);
        TempMenu.parentMenu.isOn = false;        
        TempMenu = TempMenu.parentMenu;
    }
    TempMenu.hideTop();
}

function HM_f_HideChildren(callingitem) {
    var TempMenu = this.visibleChild;
    while(TempMenu.hasChildVisible) {
        TempMenu.visibleChild.showIt(false);
        TempMenu.hasChildVisible = false;
        TempMenu = TempMenu.visibleChild;
    }

    if (!this.isOn || !callingitem.hasMore || this.visibleChild != this.child) {
        this.visibleChild.showIt(false);
        this.hasChildVisible = false;
    }
}

function HM_f_CancelSelect(){return false}

function HM_f_PageClick() {
    if (!HM_UserOverMenu && HM_CurrentMenu!=null && !HM_CurrentMenu.isOn) HM_f_HideAll();
}

popUp = HM_f_PopUp;
popDown = HM_f_PopDown;

HM_f_StartIt();

//end