<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collection Department</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<button type="button" class="btn btn-info btn" data-target="#mymodal"
			data-toggle="modal">Collection Officer Login</button>
		<div id="mymodal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Login</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="control-label" for="email">Email:</label><br>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="email"
										placeholder="Enter email">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label" for="pwd">Password:</label><br>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="pwd"
										placeholder="Enter password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2">
									<a href="Display__data.jsp">login&nbsp;&nbsp;<span
										class="glyphicon glyphicon-log-in alert-info"></span></a>
								</div>
							</div>
						</form>
						<div class="modal-footer">
							<div class="col-sm-10">
								<button class="btn btn-alert " type="button"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>


</body>
</html>