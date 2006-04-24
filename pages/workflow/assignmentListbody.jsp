<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/c" prefix="c"%>

<table width="100%">
	<tr>
		<td colspan="2"><b>Assignment list for <c:out value="${username}" /></b></td>
		<td><html:link page="/ShowWorkListAction.do">Refresh List</html:link></td>
		</td>
	</tr>
	<tr><td colspan="3"><hr noshade size="1" /></td></tr>
	<tr>
		<th>Activity</th>
		<th>State</th>
		<th>Action</th>
	</tr>
	<c:forEach var="assignment" items="${assignments}">
		<c:url value="/AcceptSurveyActivityAction.do" var="displayURL">
			<c:param name="activityId" value="${assignment.activityKey}" />
			<c:param name="processKey" value="${assignment.processKey}" />
		</c:url>
		<tr>
			<td><c:out value="${assignment.activityName}" /></td>
			<!-- <td><c:out value="${assignment.workflowForm.firstName}" />&nbsp;<c:out value="${assignment.workflowForm.lastName}" />&nbsp;<c:out value="${assignment.workflowForm.phoneNumber}" />&nbsp;(<c:out value="${assignment.workflowForm.comments}" />)</td>-->
			<td><c:out value="${assignment.activityState}" /></td>
			<td><a href='<c:out value="${displayURL}" />'>Complete Activity</a></td>
		</tr>
	</c:forEach>
</table>
