<%-- 
    Document   : login
    Created on : 4 Jun, 2020, 9:59:45 AM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            div
            {
                background-color: lightgray;
                width: 250px;
                border: 15px solid green;
                padding: 50px;
                margin: 20px;
            }
        </style>
    </head>
    <body>
        <div>
	<h1 style="color: blue">LOGIN</h1>
	<a href="signup.jsp" style="color: red;text-align: right;padding-left: 200px">Sign up</a>
	<form action="loginjava.jsp" method="post">
            <label>USER NAME:</label><br>
            <input type="text" name="uname" required><br>
	    <br>
	    <label>PASSWORD:</label><br>
            <input type="password" name="pwd" required><br>
	    <a href="forgot.jsp" style="color: red;padding-left: 30px">Forgot password?</a><br>
            <br>
	    <input type="submit" value="Login">
	</form>
        </div>
    </body>
</html>


