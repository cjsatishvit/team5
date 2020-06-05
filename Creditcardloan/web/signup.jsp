<%-- 
    Document   : signup
    Created on : 4 Jun, 2020, 10:00:48 AM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <h1 style="color:blue">REGISTER</h1>
        <form action="signupjava.jsp" method="post">
            <label>NAME</label><br>
            <input type="text" name="name" required><br>
            <label>SEX</label><br>
            <input type="text" name="sex" required><br>
            <label>ADDRESS</label><br>
            <input type="text" name="address" required><br>
            <label>MOBILE</label><br>
            <input type="number" name="mobile" required><br>
            <label>EMAIL ID</label><br>
            <input type="email" name="email" required><br>
            <label>PASSWORD</label><br>
            <input type="password" name="password" required><br>
            <label>RETYPE-PASSSWORD</label><br>
            <input type="password" name="retype" required><br>
            <br>
            <input type="submit" value="submit">
        </form>
        </div>
    </body>
</html>

