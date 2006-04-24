<%@ page import="java.util.Enumeration" isErrorPage="true" %>
<%

Enumeration attributeEnum=request.getAttributeNames();

while (attributeEnum.hasMoreElements()) {
	String name=(String)attributeEnum.nextElement();
	out.println("<BR> name :");	
	out.println(name); 
	out.println("<BR> attribute :");
	
	out.println(request.getAttribute(name));
	
}

Enumeration parameterEnum=request.getParameterNames();
        out.println("<BR>");
	
while (parameterEnum.hasMoreElements()) {

	String name=(String)parameterEnum.nextElement();
	out.println("<BR> name :");	
	out.println(name);
	out.println("<BR> parameter");
	out.println(request.getParameter(name));
	
}
%>
	