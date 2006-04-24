<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>Struttin' Shark</title>

<link rel="stylesheet" type="text/css" href="<html:rewrite page='/style/style.css'/>"></link>
</head>
<body>
<table width="782">
	<tr>
		<td colspan="2"><tiles:insert attribute="header" /></td>
	</tr>
	<tr>
		<td valign="top" width-="25%"><tiles:insert attribute="menu" /></td>
		<td valign="top" width="75%" align="left"><tiles:insert attribute="body" /></td>
	</tr>
	<tr>
		<td colspan="2"><tiles:insert attribute="footer" /></td>
	</tr>                                                                                                                                                                                                 
</table>
</body>
</html>
