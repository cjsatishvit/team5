<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<table
		style="width: 80%; border: 1px solid blue; cell-padding: 1px; align: center"
		class="table table-bordered  table-hover table-responsive">
		<tr>
			<td bgcolor=silver class='medium'>C_id</td>
			<td bgcolor=silver class='medium'>C_name</td>
			<td bgcolor=silver class='medium'>Email_id</td>
			<td bgcolor=silver class='medium'>Phone</td>
			<td bgcolor=silver class='medium'>Payments_Due</td>
			<td bgcolor=silver class='medium'>Select</td>
		</tr>

		<tr>
			<td class='normal' valign='top'>1</td>
			<td class='normal' valign='top'>CustomerA</td>
			<td class='normal' valign='top'>abc@gmail.com</td>
			<td class='normal' valign='top'>12345785</td>
			<td class='normal' valign='top'>4</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>2</td>
			<td class='normal' valign='top'>CustomerB</td>
			<td class='normal' valign='top'>xyz@yahoo.com</td>
			<td class='normal' valign='top'>97484151</td>
			<td class='normal' valign='top'>5</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>3</td>
			<td class='normal' valign='top'>CustomerC</td>
			<td class='normal' valign='top'>bnhsa@gmail.com</td>
			<td class='normal' valign='top'>78954621</td>
			<td class='normal' valign='top'>3</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>4</td>
			<td class='normal' valign='top'>CustomerD</td>
			<td class='normal' valign='top'>d98_iopl0@hotmail.com</td>
			<td class='normal' valign='top'>63639855</td>
			<td class='normal' valign='top'>7</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>5</td>
			<td class='normal' valign='top'>CustomerE</td>
			<td class='normal' valign='top'>sfius65@gmail.com</td>
			<td class='normal' valign='top'>70440633</td>
			<td class='normal' valign='top'>6</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>6</td>
			<td class='normal' valign='top'>CustomerG</td>
			<td class='normal' valign='top'>posfihs90@yahoo.com</td>
			<td class='normal' valign='top'>89766468</td>
			<td class='normal' valign='top'>3</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>7</td>
			<td class='normal' valign='top'>CustomerH</td>
			<td class='normal' valign='top'>xypada64@gmail.com</td>
			<td class='normal' valign='top'>15346868</td>
			<td class='normal' valign='top'>11</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>8</td>
			<td class='normal' valign='top'>CustomerI</td>
			<td class='normal' valign='top'>xyz678@yahoo.com</td>
			<td class='normal' valign='top'>46853468</td>
			<td class='normal' valign='top'>8</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>9</td>
			<td class='normal' valign='top'>CustomerJ</td>
			<td class='normal' valign='top'>vdfgsf09@yahoo.com</td>
			<td class='normal' valign='top'>99855616</td>
			<td class='normal' valign='top'>5</td>
			<td><input type="checkbox"></td>
		</tr>

		<tr>
			<td class='normal' valign='top'>10</td>
			<td class='normal' valign='top'>CustomerK</td>
			<td class='normal' valign='top'>dxdsfs00145@yahoo.com</td>
			<td class='normal' valign='top'>55646785</td>
			<td class='normal' valign='top'>4</td>
			<td><input type="checkbox"></td>
		</tr>
	</table>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<h4>Customer Details to be sent</h4>
			<a href="#" data-toggle="modal" data-target="#MyModal">Customer
				Management&nbsp;&nbsp;<span
				class="glyphicon glyphicon-send alert-success"></span>
			</a>
			<div id="MyModal" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Selected Customers</h4>
							<table
								style="width: 100%; border: 1px solid blue; cell-padding: 1px; align: center"
								class="table table-bordered  table-hover table-responsive">
								<tr>
									<td class='normal' valign='top'>4</td>
									<td class='normal' valign='top'>CustomerD</td>
									<td class='normal' valign='top'>d98_iopl0@hotmail.com</td>
									<td class='normal' valign='top'>63639855</td>
									<td><span
										class="glyphicon glyphicon-earphone alert-success"></span></td>
									<td><span
										class="glyphicon glyphicon-envelope alert-danger"></span></td>

								</tr>

								<tr>
									<td class='normal' valign='top'>5</td>
									<td class='normal' valign='top'>CustomerE</td>
									<td class='normal' valign='top'>sfius65@gmail.com</td>
									<td class='normal' valign='top'>70440633</td>
									<td><span
										class="glyphicon glyphicon-earphone alert-success"></span></td>
									<td><span
										class="glyphicon glyphicon-envelope alert-danger"></span></td>

								</tr>
								<tr>
									<td class='normal' valign='top'>7</td>
									<td class='normal' valign='top'>CustomerH</td>
									<td class='normal' valign='top'>xypada64@gmail.com</td>
									<td class='normal' valign='top'>15346868</td>
									<td><span
										class="glyphicon glyphicon-earphone alert-success"></span></td>
									<td><span
										class="glyphicon glyphicon-envelope alert-danger"></span></td>
								</tr>

								<tr>
									<td class='normal' valign='top'>8</td>
									<td class='normal' valign='top'>CustomerI</td>
									<td class='normal' valign='top'>xyz678@yahoo.com</td>
									<td class='normal' valign='top'>46853468</td>
									<td><span
										class="glyphicon glyphicon-earphone alert-success"></span></td>
									<td><span
										class="glyphicon glyphicon-envelope alert-danger"></span></td>
								</tr>
							</table>
							<div class="modal-footer">
								<button type="button" class="btn btn-success"
									data-dismiss="modal">Generate Report</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<h4>Customer Report</h4>
			<a href="#" data-toggle="modal" data-target="#MyModal2">Reports&nbsp;&nbsp;<span
				class="glyphicon glyphicon-folder-open alert-danger"></span>
			</a>
			<div id="MyModal2" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Selected Customers</h4>
							<table
								style="width: 100%; border: 1px solid blue; cell-padding: 1px; align: center"
								class="table table-bordered  table-hover table-responsive">
								<tr>
									<td bgcolor=silver class='medium'>C_id</td>
									<td bgcolor=silver class='medium'>C_name</td>
									<td bgcolor=silver class='medium'>MethodOfContact</td>
									<td bgcolor=silver class='medium'>DuePaymentStatus</td>
								</tr>

								<tr>
									<td class='normal' valign='top'>4</td>
									<td class='normal' valign='top'>CustomerD</td>
									<td class='normal' valign='top'>Email</td>
									<td class='normal' valign='top'>2 Working days needed</td>
								</tr>

								<tr>
									<td class='normal' valign='top'>5</td>
									<td class='normal' valign='top'>CustomerE</td>
									<td class='normal' valign='top'>Phone</td>
									<td class='normal' valign='top'>Payment Processing</td>
								</tr>

								<tr>
									<td class='normal' valign='top'>8</td>
									<td class='normal' valign='top'>CustomerH</td>
									<td class='normal' valign='top'>Phone</td>
									<td class='normal' valign='top'>-no replies-</td>
								</tr>

								<tr>
									<td class='normal' valign='top'>8</td>
									<td class='normal' valign='top'>CustomerI</td>
									<td class='normal' valign='top'>Email</td>
									<td class='normal' valign='top'>1 Month extension</td>
								</tr>
							</table>
							<div class="modal-footer">
								<button type="button" class="btn btn-info"
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