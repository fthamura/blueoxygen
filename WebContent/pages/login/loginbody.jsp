<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>

<table width="100%">
	<tr>
		<td><logic:messagesPresent message="true">
			<html:messages id="msg" message="true">
				<b><bean:write name="msg" /></b>
			</html:messages>
		</logic:messagesPresent></td>
	</tr>
	<tr>
		<td align="center"><html:form action="/LoginAction.do">
			<table border="0" width="50%">
				<tr>
					<td>User:</td>
					<td><html:text property="userName" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><html:password property="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><html:submit /></td>
				</tr>
			</table>
		</html:form></td>
	</tr>

</table>
