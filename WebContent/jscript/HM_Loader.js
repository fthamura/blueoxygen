/***************************************************************************
                         Version 4 Menu Loader

enables easier backward-compatibility of pages while allowing Netscape 6
to conditionally load scripts  
***************************************************************************/


   HM_DOM = (document.getElementById) ? true : false;
   HM_NS4 = (document.layers) ? true : false;
HM_NS4old = (HM_NS4 && (parseFloat(navigator.appVersion) < 4.02));
    HM_IE = (document.all) ? true : false;
   HM_IE4 = HM_IE && !HM_DOM;
   HM_Mac = (navigator.appVersion.indexOf("Mac") != -1);
  HM_IE4M = HM_IE4 && HM_Mac;
HM_IsMenu = (HM_DOM || (HM_NS4 && !HM_NS4old) || (HM_IE && !HM_IE4M));

if(window.event + "" == "undefined") event = null;
function HM_f_PopUp(){return};
function HM_f_PopDown(){return};
popUp = HM_f_PopUp;
popDown = HM_f_PopDown;

if(HM_IsMenu) {
	document.write("<SCR" + "IPT LANGUAGE='JavaScript1.2' SRC='/tomato/jscript/hierArrays.js' TYPE='text/javascript'><\/SCR" + "IPT>");
	document.write("<SCR" + "IPT LANGUAGE='JavaScript1.2' SRC='/tomato/jscript/hierMenus.js' TYPE='text/javascript'><\/SCR" + "IPT>");
}
