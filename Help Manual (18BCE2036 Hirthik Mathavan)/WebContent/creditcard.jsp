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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/css/star-rating.min.css"
	media="all" rel="stylesheet" type="text/css" />

<!-- optionally if you need to use a theme, then include the theme CSS file as mentioned below -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/themes/krajee-svg/theme.css"
	media="all" rel="stylesheet" type="text/css" />

<!-- important mandatory libraries -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/js/star-rating.min.js"
	type="text/javascript"></script>

<!-- optionally if you need to use a theme, then include the theme JS file as mentioned below -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/themes/krajee-svg/theme.js"></script>

<!-- optionally if you need translation for your language then include locale file as mentioned below -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/js/locales/<lang>.js"></script>
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
		<jsp:include page="Components/creditcard/navbar.jsp" />
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- The sidebar -->
	<jsp:include page="Components/creditcard/sidebar.jsp" />

	<!-- Page content -->
	<jsp:include page="Components/creditcard/pagecontent.jsp" />
	<jsp:include page="branch.jsp" />
</body>
</html>