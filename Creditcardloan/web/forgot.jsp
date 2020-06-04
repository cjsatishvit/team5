<%-- 
    Document   : forgot
    Created on : 4 Jun, 2020, 10:07:22 AM
    Author     : ELCOT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
        <h1>Forgot Password</h1>
        <form action="reset.jsp" method="post">
            <label>Email id</label><br>
            <input type="email" name="id"><br>
            <label>Password</label><br>
            <input type="password" name="pass"><br>
            <input type="submit" value="submit">
        </form>
    </body>
</html>


