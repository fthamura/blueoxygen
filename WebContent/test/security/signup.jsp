<%@ taglib uri="webwork" prefix="ww"%>

<html>
<head>
    <title>Signup</title>
</head>

<body>
<form action="signup.action">
    <table class="form">
        <ww:textfield label="'Username'" name="'username'" />
        <ww:password label="'Password'" name="'password'" />
        <ww:password label="'Password (again)'" name="'verifyPassword'" />

        <tr><td colspan="2"><hr/><td></tr>

        <ww:select label="'Prefix'" name="name.prefix" list="{'Mr.', 'Mrs.', 'Dr.', 'Miss'}" />
        <ww:textfield label="'First Name'" name="'name.first'" />
        <ww:textfield label="'Middle Name'" name="'name.middle'" />
        <ww:textfield label="'Last Name'" name="'name.last'" />

        <tr><td colspan="2"><hr/><td></tr>

        <ww:textfield label="'Address 1'" name="'address.street1'" />
        <ww:textfield label="'Address 2'" name="'address.street2'" />
        <ww:textfield label="'City'" name="'address.city'" />
        <ww:textfield label="'State'" name="'address.state'" />
        <ww:textfield label="'Zip'" name="'address.zip'" />

        <tr><td colspan="2"><hr/><td></tr>

        <tr>
            <td colspan="2"><input type="submit" value="Signup"/></td>
        </tr>
    </table>
</form>

</body>
</html>

