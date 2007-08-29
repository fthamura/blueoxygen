<%
  /*
    WS_DefaultResponse.jsp
    Frank W. Zammetti
    This JSP is the default "template" for Web Service request output.  It can
    do one of two things... It can either display all the members of the
    ActionForm returned, or can return specified members in a specified order.
    This is done using the members attribute in the webservices-config.xml
    file.  If members is not present, all members are displayed.  If it is
    present, it is parsed (it's just a comma-separated list) and the members
    are displayed in the order they appear.  You may be wondering why this is
    a JSP.  Well, the short answer is that it was the easiest way!  I don't
    normally like having all this code in a JSP, but since this is kind of a
    special-purpose case, I didn't think adding the extra complexity of a
    taglib was really worth it.
  */
%>

<%@ page language="java"
	import="java.util.*,java.lang.reflect.*,org.apache.struts.config.*,org.apache.struts.action.*"%>

<?xml version="1.0" encoding="utf-8"?>
<SOAP-ENV:Envelope
	xmlns="<%=(String)request.getAttribute("namespace")%>"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"
	encodingStyle="http://schemas.xmlsoap.org/soap/encoding">
	<SOAP-ENV:Body>
		<<%=(String)request.getAttribute("serviceName")%> Response
			xmlns="<%=(String)request.getAttribute("namespace")%>"> <%
try{
  // Grab the members request attribute (might be null, that's expected)
  String       members   = (String)request.getAttribute(
                           WSRequestProcessor.WS_MEMBERS_ATTR_NAME);
  ArrayList    membersAL = new ArrayList();

  // If members != null, parse it into an ArrayList.
  if (members != null) {
    StringTokenizer st = new StringTokenizer(members, ",");
    while (st.hasMoreTokens()) {
      String nt = st.nextToken();
      membersAL.add(nt);
    }
  }

  // Get the ActionForm from request
  ActionConfig mapping        = (ActionConfig)request.getAttribute(
                                "org.apache.struts.action.mapping.instance");
  String       actionFormName = mapping.getName();
  Object       form           = request.getAttribute(actionFormName);

  // Now we need a list of the fields in the ActionForm
  Class        cls            = form.getClass();
  Field[]      fields         = cls.getDeclaredFields();

  // Now we make a decision... if members above == null, then we're just going
  // to display all members of the ActinoForm.  If however members != null,
  // there is a specific list of members to display, so we have to do things a
  // little differently.
  if (members == null) {
try{
   for (int i = 0; i < fields.length; i++) {
      Field  field      = fields[i];
      String fieldName  = field.getName();
      System.out.println("fieldName[" + i + "]: " + fieldName);
      String getterName = "get" + fieldName.substring(0, 1).toUpperCase() +
                          fieldName.substring(1);
      System.out.println("getterName[" + i + "]: " + getterName);
      Method method     = cls.getMethod(getterName, null);
      String fieldValue = null;
      try {
        fieldValue = (String)method.invoke(form, new Object[0]);
      } catch (Exception e) {
        System.out.println("Exception in webServiceResponse.jsp: " + e);
      }
      out.println("      <" + fieldName + " xsi:type=\"xsd:string\">" + fieldValue + "</" + fieldName + " />");
    }
}
catch(Exception e1){
System.out.println("exception e1: " + e1);
}
  } else { // members != null, just returning specified fields

    for (Iterator it = membersAL.iterator(); it.hasNext();) {
      String fieldName  = (String)it.next();
      String getterName = "get" + fieldName.substring(0, 1).toUpperCase() +
                          fieldName.substring(1);
      Method method     = cls.getMethod(getterName, null);
      String fieldValue = null;
      try {
        fieldValue = (String)method.invoke(form, new Object[0]);
      } catch (Exception e) {
        System.out.println("Exception in webServiceResponse.jsp: " + e);
      }
      out.println("      <" + fieldName + " xsi:type=\"xsd:string\">" + fieldValue + "</" + fieldName + " />");
    }
  }
}
catch(Exception e2){
//e2.printStackTrace();
}
%> </<%=(String)request.getAttribute("serviceName")%>Response>
		</soap:Body>
		</soap:Envelope>