<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/c" prefix="c"%>

<table>
<tr><td valign="top">
<html:link page="/LoginAction.do">Login</html:link><br>
<html:link page="/ShowWorkListAction.do">Show Work List</html:link><br>
<html:link page="/LoadPackage.do?xpdlName=WellnessDemo2.xpdl">Load Wellness Package</html:link><br>
<html:link page="/UpdatePackage.do?xpdlName=WellnessDemo2.xpdl">Update Wellness Package</html:link><br>
<html:link page="/CreateSurveyProcess.do?packageId=WellnessDemo2&processId=WellnessEvaluationProcess2&n=3&var0=firstName&val0=Geeta&var1=lastName&val1=Ramani&var2=comments&val2=This%20is%20my%20valuable%20comment">Create Wellness Process</html:link><br>
<html:link page="//LogoutAction.do">Logout</html:link><br>
</td>
<td><html:img page="/pages/images/line.gif" />
</td>
</tr>
</table>