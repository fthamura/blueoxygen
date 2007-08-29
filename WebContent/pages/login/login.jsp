<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>
<tiles:insert page="/pages/layout.jsp" flush="true">
	<tiles:put name="title" value="Hello World!" />
	<tiles:put name="header" value="/pages/tiles/header.jsp" />
	<tiles:put name="footer" value="/pages/tiles/footer.jsp" />
	<tiles:put name="menu" value="/pages/tiles/menu.jsp" />
	<tiles:put name="body" value="/pages/login/loginbody.jsp" />
</tiles:insert>