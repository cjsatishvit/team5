<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">

<title>BANK-helpmanual</title>



<script src="JS/scroll.js"></script>

<script type="text/javascript">
	function addMargin() {
		window.scrollTo(0, window.pageYOffset - 100);
	}
	window.addEventListener('hashchange', addMargin);
</script>

<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>

<link href="style.css" rel="stylesheet" type="text/css">
<style>
body {
	font-family: Barlow, sans serif;
	overflow-x: hidden;
}
</style>
</head>
<body id="top">

	<!-- Nav bar -->
	<div>
		<jsp:include page="Components/gold/navbar.jsp" />
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- The sidebar -->
	<jsp:include page="Components/gold/sidebar.jsp" />

	<!-- Page content -->

	<jsp:include page="Components/gold/pagecontent.jsp" />
	<jsp:include page="branch.jsp" />



</body>
</html>