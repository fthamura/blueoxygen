<%
  /*
    WS_DefaultValidationFailureResponse.jsp
    Frank W. Zammetti
    This JSP is the default template for a Web Service when a validation
    failure occurs (i.e., errors are thrown by validate() in the ActionForm
    associated with this request).
  */
%>

<%@ page language="java"
	import="org.apache.struts.*,org.apache.struts.action.*"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>

<?xml version="1.0" encoding="utf-8"?>
<SOAP-ENV:Envelope
	xmlns="<%=(String)request.getAttribute("namespace")%>"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"
	encodingStyle="http://schemas.xmlsoap.org/soap/encoding">
	<SOAP-ENV:Body>
		<<%=(String)request.getAttribute("serviceName")%> Response
			xmlns="<%=(String)request.getAttribute("namespace")%>"> <message>A
		validation failure has occurred. Please correct the failure(s) listed
		below and try the request again.</message> <logic:messagesPresent>
			<validationFailure><html:messages id="error">
				<bean:write name="error" />
			</html:messages></validationFailure>
		</logic:messagesPresent> </<%=(String)request.getAttribute("serviceName")%>Response>
		</soap:Body>
		</soap:Envelope>