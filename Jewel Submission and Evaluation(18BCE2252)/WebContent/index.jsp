<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Jewel Evaluation Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <!-- <h1>Submit Details</h1>-->
        <div class="container">
            <div class="sign-up-content">
                <form name="applicant" action="applicant.jsp" method="POST" class="signup-form">
                    <h2 class="form-title">Jewel Evaluation Form</h2>
                    
                    <div class="form-textbox">
                        <label for="name">Full name</label>
                        <input type="text" name="name" id="name" required/>
                    </div>    
                 
                    <div class="form-textbox">
                        <label for="phone">Phone Number</label>
                        <input type="number" name="phone" id="phine" required/>
                    </div> 
                    
                    <div class="form-textbox">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" required/>
                    </div>
                    
                    <div class="form-textbox">
                        <label for="acc">Account Number</label>
                        <input type="text" name="acc" id="acc" required/>
                    </div>

                    <br>
                    <div class="form-radio">
                        <input type="radio" name="member_level" value="gold" id="gold" />
                        <label for="gold">Gold</label>

                        <input type="radio" name="member_level" value="silver" id="silver" />
                        <label for="silver">Silver</label>
                    </div>    
                    
                    <div class="form-textbox">
                        <label for="weight">Weight(gms)</label>
                        <input type="number" name="weight" id="weight" required/>
                    </div>                

                    <div class="form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required/>
                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                    </div>

                    <div class="form-textbox">
                        <input type="submit" name="submit" id="submit" class="submit" value="Submit" />
                    </div>
                                        
                </form>

            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>