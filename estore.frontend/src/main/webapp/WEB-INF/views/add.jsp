<!DOCTYPE html>
<html lang="en">
 <%@include file="header.jsp" %>
<body>
<%@include file="navbar.jsp"%>
<br>
<br>
<br>
<div id="site">
	<header id="masthead">
		<center ><h1> Adding Details <span class="tagline"></span> </p></h1>
		</center>
	</header>
	<br>

<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        
       <div id="navbar" class="navbar-collapse collapse">
        	<ul class="nav navbar-nav navbar-right">
          			<li><a href="products.jsp"><i class="fa fa-product-hunt"></i>Products</a></li>
					<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
       				<li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      				<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      				<li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      		</ul>
         
	  		<ul class="nav navbar-nav navbar-Left">
					<li><a href="Admin Activity"><span class="glyphicon glyphicon-user"></span>ADMIN ACTIVITY</a>
			</ul>
			
		</div>
     
     </div>
     
</nav>
     <br>
<br>	 


<div class="container">
  
  <ul class="nav nav-tabs nav-justified indigo" role="tablist">
    <!-- <li class="active"><a href="#home">Home</a></li> -->
    <li class="active"><a href="#menu1">Category</a></li>
    <li><a href="#menu2">Supplier</a></li>
    <li><a href="#menu3">Product</a></li>
  </ul>

  <div class="tab-content">
    <!-- <div id="home" class="tab-pane fade in active">
      <br>
	  <br>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div> -->
    <div id="menu1" class="tab-pane fade in active">
<br>
<br>
<br>
<br>
<div class="container">
      <div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="add" action="addcategory" method="POST" role="form" style="display: block;" >
									
									
									<div class="form-group">
										<input type="text" name="cname" id="cname" tabindex="1" class="form-control" placeholder="Category Name" >
									</div>
									<div class="form-group">
										<input type="text" name="cdesc" id="cdesc" tabindex="1" class="form-control" placeholder="Description" >
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<button type="submit" name="add-submit" id="add-submit" class="btn btn-warning btn-sm btn-block"> Add Category <span class="glyphicon glyphicon-share-alt"></span>
		</button></div>
												<!-- <input type="submit" name="add-submit" id="add-submit" tabindex="4" class="form-control btn btn-add" value="Add Category"> -->
											</div>
											
										</div>
									</div>
									
								</form>
</div>
</div>
</div>

    <div id="menu2" class="tab-pane fade">
      <br>
<br>
<br>
<br>
      <div class="container">					
	
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="add"  action="addsupplier" method="POST" role="form" style="display: block;" >
									
									
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="Supplier Name" >
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="1" class="form-control" placeholder="Address" >
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email" >
									</div>
									<div class="form-group">
										<input type="text" name="contact" id="contact" tabindex="1" class="form-control" placeholder="Contact" >
									</div>
									
																				
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<!-- <input type="submit" name="add-submit" id="add-submit" tabindex="4" class="form-control btn btn-add" value="Add Supplier"> -->
											<button type="submit" name="add-submit" id="add-submit" class="btn btn-warning btn-sm btn-block"> Add Supplier <span class="glyphicon glyphicon-share-alt"></span>
		</button></div>
											</div>
											
										</div>
									</div>
									
								</form>
</div>
</div>
</div>

    
    <div id="menu3" class="tab-pane fade">
      <br>
	  <br>
	  <br>
	  <div class="container">

    	<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-add">
					
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="add"  action="addproduct" method="POST" role="form" style="display: block;" >
																		
									<div class="form-group">
									<select   class="form-control" name="sid" id="sid" tabindex="1" >
										<option value="" disabled selected> Select Supplier Name</option>
    									</select>
									</div>
									<div class="form-group">
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" >
									</div>
									<div class="form-group">  
									<select  name="cid" class="form-control" id="cid" tabindex="1" > 										 										
    									<option value="" disabled selected>Select Product Category</option>										
    									
    									</select>
    								</div>
								
									<div class="form-group">
										<input type="text" name="pdesc" id="pdesc" tabindex="1" class="form-control" placeholder="Description" >
									</div>
									<div class="form-group">
										<input type="text" name="pquantity" id="pquantity" tabindex="1" class="form-control" placeholder="Quantity" >
									</div>
									<div class="form-group">
										<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price">
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<button type="submit" name="add-submit" id="add-submit" class="btn btn-warning btn-sm btn-block"> Add Product <span class="glyphicon glyphicon-share-alt"></span>
		</button></div>
												<!-- <input type="submit" name="add-submit" id="add-submit" tabindex="4" class="form-control btn btn-add" value="Add Product"> -->
											</div>
											
										</div>
									</div>
									
								</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
    
<script>
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
    $('.nav-tabs a').on('shown.bs.tab', function(event){
        var x = $(event.target).text();         // active tab
        var y = $(event.relatedTarget).text();  // previous tab
        $(".act span").text(x);
        $(".prev span").text(y);
    });
});
</script>


</body>
 </html>
 
 
 
  