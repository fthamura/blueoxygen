<%@ taglib uri="webwork" prefix="ww"%>

<html>
<head>
    <title>Login</title>
</head>

<body>

<table border="0" cellpadding="5">
<tr>
    <td valign="top">
<form action="login.action" method="POST">
<table class="form">
        <ww:textfield label="'Username'" name="'username'" />
        <ww:password label="'Password'" name="'password'" />
        <input type="hidden" name="redirectUri" 
        
        <% if (request.getParameter("redirectUri") != null) { %>
        value="<%= request.getParameter("redirectUri") %>"
        <% } %>
        >    
        <tr>
            <td><input type="submit" value="Login"/></td>
            <td><a href="signup.jsp">Signup</a></td>
        </tr>
</table>
</form>

    </td>
    <td valign="top">
    </td>
</tr>
</table>

</body>
</html>

