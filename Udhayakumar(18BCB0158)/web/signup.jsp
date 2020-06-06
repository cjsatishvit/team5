<%-- 
    Document   : signup
    Created on : 30 May, 2020, 8:34:06 PM
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
        <form action="signjava.jsp" method="post">
            <label>NAME</label><br>
            <input type="text" name="name"><br>
            <label>SEX</label><br>
            <input type="text" name="sex"><br>
            <label>ADDRESS</label><br>
            <input type="text" name="address"><br>
            <label>MOBILE</label><br>
            <input type="number" name="mobile"><br>
            <label>EMAIL ID</label><br>
            <input type="email" name="email"><br>
            <label>PASSWORD</label><br>
            <input type="password" name="password"><br>
            <label>RETYPE-PASSSWORD</label><br>
            <input type="password" name="retype"><br>
            <br>
            <input type="submit" value="submit">
        </form>
        </div>
    </body>
</html>
