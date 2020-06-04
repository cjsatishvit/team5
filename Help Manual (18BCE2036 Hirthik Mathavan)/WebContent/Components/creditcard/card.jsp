<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Nearest Branch</title>
</head>
<style>


.item{
  padding-left:5px;
  padding-right:5px;
}
.item-card{
  transition:0.5s;
  cursor:pointer;
}
.item-card-title{  
  font-size:20px;
  transition:1s;
  cursor:pointer;
}

.card-title i:hover{
  transform: scale(1.25) rotate(100deg); 
  
} 
 .card:hover{
  transform: scale(1.05);
  box-shadow: 20px 20px 15px rgba(0,0,0.1,0.1);
  background-color: #a37351;
  
} 
.card-text{
  height:70px;  
}

.card::before, .card::after {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  transform: scale3d(0, 0, 0.1);
  transition: transform .3s ease-out 0s;
  background: rgba(255, 255, 255, 0);
  content: '';
  pointer-events: none;
  color:#000000;
}


</style>
<body>

       
<div class="container">
<!--   <div class="card card-block mb-2">
    <h4 class="card-title">Card 1</h4>
    <p class="card-text">Welcom to bootstrap card styles</p>
    <a href="#" class="btn btn-primary">Submit</a>
  </div>   -->
  <div class="container1 col-md-3 col-sm-6 item">
  <h4 class="item-card-title text-center">VIT BANK, George Town</h4><br>
      <div class="card item-card card-block bg-dark">
      
     <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>424</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB0000424
												</td>

											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Chennai</td>

											</tr>
											<tr>
												<th>Address</th>
												<td>No 23, 1st Floor , Rajaji Salai</td>

											</tr>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600001</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
  </div>
    </div>
    <div class="container1 col-md-3 col-sm-6 item">
    <h4 class="item-card-title text-center">VIT BANK,Anna Salai</h4>
    <br>
      <div class="card item-card card-block">
      
       
        <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>168</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB0000168
												</td>

											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Chennai</td>

											</tr>
											<tr>
												<th>Address</th>
												<td>No 225 , Anna Salai</td>

											</tr>
											<tr>
												<th>Landmark</th>
												<th>Opposite Spencers Plaza</th>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600002</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
         <div class="container1">
      </div>
  </div>    </div>
  
  <div class="container1 col-md-3 col-sm-6 item">
  <h4 class="item-card-title text-center">VIT BANK (CBB), Chennai</h4>
  <br>
      <div class="card item-card card-block">
    
        <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>1165</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB0001165
												</td>

											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Chennai</td>

											</tr>
											<tr>
												<th>Address</th>
												<td>No 192, Ground Floor , Kurumuthu Nilayam , Anna Salai</td>

											</tr>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600001</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
         <div class="container1">
      </div>
  </div>    </div>
  
  <div class="container1 col-md-3 col-sm-6 item">
  <h4 class="item-card-title text-center">VIT BANK,Ratan Bazar	</h4>
  <br>
      <div class="card item-card card-block">
      
      
       
       <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>1630</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB0001630</td>
												
											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Chennai</td>

											</tr>
											<tr>
												<th>Address</th>
												<td>No 30, Ratan Bazar</td>

											</tr>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600001</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
         
  </div>    </div>
    
  </div>
  
  
  
  <br>
  <hr>
  
  
  
  
         
<div class="container">
<!--   <div class="card card-block mb-2">
    <h4 class="card-title">Card 1</h4>
    <p class="card-text">Welcom to bootstrap card styles</p>
    <a href="#" class="btn btn-primary">Submit</a>
  </div>   -->
  <div class="container1 col-md-3 col-sm-6 item">
  <h4 class="item-card-title text-center">VIT BANK, Chennai Main Branch</h4><br>
      <div class="card item-card card-block bg-dark">
      
     <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>6</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB0000006
												</td>

											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Chennai</td>

											</tr>
											<tr>
												<th>Address</th>
												<td> No 82 , Dr Radhakrishnan Salai , Mylapore</td>

											</tr>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600001</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
  </div>
    </div>
    <div class="container1 col-md-3 col-sm-6 item">
    <h4 class="item-card-title text-center">VIT BANK,Sholinganallur</h4>
    <br>
      <div class="card item-card card-block">
      
       
        <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>3002</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB0003002
												</td>

											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Kanchipuram</td>

											</tr>
											<tr>
												<th>Address</th>
												<td> No 132, Kailash , Medavakkam Road , Sholinganallur</td>

											</tr>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600119</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
         <div class="container1">
      </div>
  </div>    </div>
  
  <div class="container1 col-md-3 col-sm-6 item">
  <h4 class="item-card-title text-center">VIT BANK, Perumbakkam</h4>
  <br>
      <div class="card item-card card-block">
    
        <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>4200</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB00004200
												</td>

											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Kanchipuram</td>

											</tr>
											<tr>
												<th>Address</th>
												<td>Shop No 6 , Indira Priyadarshini Nagar , Perumbakkam</td>

											</tr>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600100</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
         <div class="container1">
      </div>
  </div>    </div>
  
  <div class="container1 col-md-3 col-sm-6 item">
  <h4 class="item-card-title text-center">VIT BANK,Medavakkam</h4>
  <br>
      <div class="card item-card card-block">
      
      
       
       <table class="table  table-striped">
										<tbody>
											<tr>
												<th>Branch ID</th>
												<td>1119</td>

											</tr>
											<tr>
												<th>IFSC</th>
												<td>UTIB0001119
												</td>

											</tr>
											<tr>
												<th>State</th>
												<td>Tamil Nadu</td>

											</tr>
											<tr>
												<th>City</th>
												<td>Kanchipuram</td>

											</tr>
											<tr>
												<th>Address</th>
												<td>PVG Tower, 10/95, Plot No 135 , Velachery Main Road</td>

											</tr>
											<tr>
												<th>Contact Number</th>
												<td>18604195555</td>

											</tr>
											<tr>
												<th>Pincode</th>
												<td>600100</td>

											</tr>
											<tr>
												<th>Category</th>
												<td>Branch</td>

											</tr>
											
										</tbody>
									</table>
         
  </div>    </div>
    
  </div>

	<br>
	<hr>

</body>
</html>