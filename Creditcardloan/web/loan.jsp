<%-- 
    Document   : loan
    Created on : 4 Jun, 2020, 10:04:47 AM
    Author     : ELCOT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan and Bank Details</title>
        <style>
            div
            {
                background-color: lightgray;
                width: 500px;
                border: 15px solid green;
                padding: 70px;
                margin: 20px;
            }
        </style>
    </head>
    <body>
        <div>
        <h1 style="color: blue">Loan and Bank Details</h1>
        <form action="bank.jsp" method="post">
            <label>APPLICANT NAME</label><br>
            <input type="text" name="name" required><br>
            <label>LOAN TYPE</label><br>
            <input type="text" name="loan" required><br>
            <label>DATE</label><br>
            <input type="date" name="date"><br>
            <label>LOAN AMOUNT<label><br>
            <input type="text" name="amount" required><br>
            <label>MOBILE NUMBER</label><br>
            <input type="number" name="mobile" required><br>
            <label>ACCOUNT NUMBER</label><br>
            <input type="number" name="account" required><br>
            <label>EMI</label><br>
            <input type="number" name="emi" required ><br>
            <label>CREDIT SCORE</label><br>
            <input type="number" name="score" required><br>
            <br>
            <h2>Attach With Below Documents</h2>
            <ol>
                <li>VOTER ID</li>
                <li>DRIVING LICENSE</li>
                <li>PAN CARD</li>
                <li>AADHAR CARD</li>
                <li>PASSPORT SIZE PHOTO</li>
                <li>SALARY SLIPS</li>
                <li>INCOME TAX COPY</li>
            </ol>
            <h1>BANK BRANCH DETAILS</h1>
            <label>BANK NAME</label><br>
            <input type="text" name="bank" required><br>
            <label>BANK ADDRESS</label><br>
            <input type="text" name="address" required><br>
            <br>
            <input type="submit" value="submit">
        </form>
        </div>
    </body>
</html>

