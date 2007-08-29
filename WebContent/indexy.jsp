<%@ include file="/include/global.inc.jsp" %>
<%@ taglib uri="sitemesh-decorator" prefix="decorator" %>
<%@ taglib uri="webwork" prefix="ww" %>
<%
    String root = request.getContextPath();
    response.setHeader("Cache-Control", "none");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title><decorator:title default="Mall" /></title>
	<link href="<%=sURI%>/style.css" type="text/css" rel="stylesheet">
    <style type="text/css">
     	body {
	        background-color: #BFBFBA;
	        margin: 0px;
	        padding: 0px;
	        text-align: center;
		}
		
		#leftcontent {
			float:left;
			width:20%;
			margin-right:15px;
			padding-bottom:20px;
		}
		
		#rightcontent {
		}
		
		#rightcontent p {
			font-size:12px;
			margin-left:0px;
		}
	
		#leftcontent p {
			font-size:10px;
			margin-left:0px;
		}
		
	#kotaklogin{border-style:solid; border-width:1pt; border-color:#6C3600}
	#kotak{border style:solid; border-width:thin; background-color:#D8D8B1; border-color:#6C3600;}
	#border_out{border-style:solid; border-width:1pt; border-color:#6C3600}
	
	</style>
    <decorator:head />
</head>

<body bgcolor="#BFBFBA" align="center">
<br/><br/><br/>
<div><img src="images/header-all2.gif" width=800 /></div>
<table align="center" width="800" border="0" id="kotaklogin" cellspacing="1" cellpadding="4">
	<tr>
		<td width="20%" valign="top" >
			<table cellspacing="1" cellpadding="5" width="220px" align="left" id="kotaklogin">
				<tr id="kotak">
					<td><a href="<%=root%>/backend/index.jsp">Login</a></td>
				</tr>
				<tr id="kotak">
					<td><a href="<%=root%>/warranty/createfront.action">Create warranty</a></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td valign="top">
			<h3><decorator:title default="Welcome to the Mall" /></h3>
				<decorator:body />
		</td>
	</tr>
</table>
</body>
</html>

