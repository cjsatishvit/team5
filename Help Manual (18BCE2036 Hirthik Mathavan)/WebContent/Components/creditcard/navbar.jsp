<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#top">Logo</a>
			</div>
			<div class="collapse navbar-collapse head" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">About Us</a></li>
					<li><a href="#contact">Contact</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Help <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="http://localhost:5000/HelpManual/user-goldloan">Gold Loan</a></li>
							<li><a href="http://localhost:5000/HelpManual/user-creditcardloan">Credit Card Loan</a></li>
						</ul></li>
					<li><button class="btn btn-danger navbar-btn">Login</button></li>
				</ul>
			</div>
			<div class="search-container nav navbar-right">
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search"> <a href="#"><span
						class="glyphicon glyphicon-search btn btn-outline-success my-2 my-sm-0"></span></a>
				</form>
			</div>
		</div>
		<br>
	</nav>

</body>
</html>