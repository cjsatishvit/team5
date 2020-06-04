<%-- 
    Document   : manager
    Created on : 4 Jun, 2020, 10:02:44 AM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Bank Manager Page</title>
        <style>
            div
            {
                background-color: lightgray;
                width: 500px;
                border: 15px solid green;
                padding: 50px;
                margin: 20px;
            }
        </style>
    </head>
    <body>
        
        <div>
            <h1 style="color: blue">Bank manager </h1>
            <form action="managerjava.jsp" method="post">
                <label>BANK MANAGER NAME</label><br>
                <input type="text" name="name" required><br>
                <label>DEPARTMENT</label><br>
                <input type="text" name="dep" required><br>
                <label>MOBILE NUMBER</label><br>
                <input type="number" name="mobile" required><br>
                <h2>CHECK AND VERIFY THE DOCUMENTS</h2><br>
                <input type="checkbox" name="check">check application<br>
		<input type="checkbox" name="check">check PAN card/VOTER ID<br>
		<input type="checkbox" name="check">check AADHAR CARD/DRIVING License<br>
		<input type="checkbox" name="check">check salary slips<br>
		<input type="checkbox" name="check">credit score above 750<br>
                <p>WORK OF  BANK MANAGER</p>
                <br>
                LOAN DETAILS<br>
                <a href="loandata.jsp" class="btn btn-primary">View</a><br>
                APPLICATION DETAILS<br>
                <a href="applicationdata.jsp" class="btn btn-primary">View</a><br>
                <br>
                <label>BANK MANAGER SIGNATURE</label>
                <input type="text" name="sign" required>
                <br>
                <input type="submit" name="submit"><br>
            </form>
        </div>
    </body>
</html>
