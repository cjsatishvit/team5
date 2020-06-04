<%-- 
    Document   : customer
    Created on : 4 Jun, 2020, 10:01:16 AM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer page</title>
        <style>
		div
		{
                   background-color: lightgrey;
                   width: 600px;
                   border: 15px solid green;
                   padding: 50px;
                   margin: 20px;
                }
        </style>
    </head>
    <body>
        <div>
        <form action="cusjava.jsp" method="POST">
                <table style="border: solid 2px black" cellpadding="20px">
                <th style="border: solid 1px;">CUSTOMER DETAILS</th>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>NAME</label></td>
                                <td style="border: solid 1px black"><input type="text" name="name" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>DATE OF BIRTH</label></td>
                                <td style="border: solid 1px black"><input type="date" name="date" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>FATHER'S NAME</label></td>
                                <td style="border: solid 1px black"><input type="text" name="father" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>MOTHER'S NAME</label></td>
                                <td style="border: solid 1px black"><input type="text" name="mother" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>SPOUSE NAME</label></td>
                                <td style="border: solid 1px black"><input type="text" name="spouse" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>AGE</label></td>
                                <td style="border: solid 1px black"><input type="number" name="age" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>GENDER</label></td>
                                <td style="border: solid 1px black">
				   <input type="radio" name="gender" value="male">MALE<br>
                                   <input type="radio" name="gender" value="female">FEMALE<br>
				   <input type="radio" name="gender" value="other">OTHER<br>
				</td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>RELIGION</label></td>
                                <td style="border: solid 1px black">
                                     <input type="radio" name="rel" value="hindu">HINDU<br>
                                    <input type="radio" name="rel" value="muslim">MUSLIM<br>
                                    <input type="radio" name="rel" value="christen">CHRISTEN<br>
                                    
                                </td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>NATIONALITY</label></td>
				<td style="border: solid 1px black">
                                    <input type="radio" name="nation" value="indian">INDIAN<br>
                                    <input type="radio" name="nation" value="nri">NRI<br>
                                    <input type="radio" name="nation" value="foreign">FOREIGN<br>
				</td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>EDUCATION</label></td>
				<td style="border: solid 1px black">
					<input type="radio" name="education">UNDER GRADUATE<br>
				    <input type="radio" name="education">POST GRADUATE<br>
				    <input type="radio" name="education">GRADUATE<br>
				    <input type="radio" name="education">OTHERS<br>
				    please specify:<input type="text" name="education" required>
				</td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>OCCUPATION</label></td>
				<td style="border: solid 1px black">
					<input type="radio" name="occupation">SALARIED<br>
				    <input type="radio" name="occupation">PROFESSIONAL<br>
				    <input type="radio" name="occupation">RETIRED<br>
				    <input type="radio" name="occupation">HOUSE WIFE<br>
				    <input type="radio" name="occupation">OTHERS<br>
                                    please specify:<input type="text" name="occupation" required>
				</td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>INCOME RS</label></td>
                                <td style="border: solid 1px black"><input type="number" name="income" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>PAN NUMBER</label></td>
                                <td style="border: solid 1px black"><input type="number" name="number" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>ADDRESS</label></td>
                                <td style="border: solid 1px black"><input type="text" name="address" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>CITY</label></td>
                                <td style="border: solid 1px black"><input type="text" name="city" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>PIN</label></td>
                                <td style="border: solid 1px black"><input type="number" name="pin" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>STATE</label></td>
                                <td style="border: solid 1px black"><input type="text" name="state" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>COUNTRY</label></td>
                                <td style="border: solid 1px black"><input type="text" name="country" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td>COMPANY DETAILS</td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black">COMPANY NAME</td>
                                <td style="border: solid 1px black"><input type="text" name="company" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black">DEPARTMENT</td>
                                <td style="border: solid 1px black"><input type="text" name="dep" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>OFFICE ADDRESS</label></td>
                                <td style="border: solid 1px black"><input type="text" name="office" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>CITY</label></td>
                                <td style="border: solid 1px black"><input type="text" name="ccity" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>PIN</label></td>
                                <td style="border: solid 1px black"><input type="number" name="cpin" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>STATE</label></td>
                                <td style="border: solid 1px black"><input type="text" name="cstate" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>COUNTRY</label></td>
                                <td style="border: solid 1px black"><input type="text" name="ccountry" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black">TELEPHONE NUMBER</td>
                                <td style="border: solid 1px black"><input type="number" name="tele" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>PERSONAL NUMBER</label></td>
                                <td style="border: solid 1px black"><input type="number" name="person" required></td>
			</tr>
			<tr style="border: solid 1px black">
				<td style="border: solid 1px black"><label>EMAIL ID</label></td>
                                <td style="border: solid 1px black"><input type="email" name="id" required></td>
			</tr>
		</table>
			<input type="submit" value="submit">
	    </form>
            </div>
    </body>
</html>

