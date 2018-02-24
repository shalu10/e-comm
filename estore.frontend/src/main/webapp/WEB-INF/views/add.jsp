<!DOCTYPE html>
<%@page isELIgnored="false" %>
<%@page import="com.niit.estore.backend.model.Supplier"%>
<%@page import="java.util.List"%>
<html lang="en">
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
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
<br>
<br>
 <div class="w3-container">
  
  <table class="w3-table-all">
  
            
    <thead>
      <tr class="w3-gray">
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Action</th>
      </tr>
    </thead>
    <c:forEach items="${categories}" var="c">
    	<tr>
    	<td>
    	${c.cid}
    	</td>
    	<td>
    	${c.cname}
    	</td>
    	<td>
    	${c.cdesc}
    	</td>
    	
    	<td><a href="deletecategory?id=${c.cid }"type="button" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
        <a href="" type="button" class="btn btn-warning btn-sm"> <span class="glyphicon glyphicon-edit"></span></a></td>
    	</tr>
    </c:forEach>

    </table>
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
										<input type="text" name="sname" id="sname" tabindex="1" class="form-control" placeholder="Supplier Name" >
									</div>
									<div class="form-group">
										<input type="text" name="saddress" id="saddress" tabindex="1" class="form-control" placeholder="Address" >
									</div>
									<div class="form-group">
										<input type="email" name="semail" id="semail" tabindex="1" class="form-control" placeholder="Email" >
									</div>
									<div class="form-group">
										<input type="text" name="scontact" id="scontact" tabindex="1" class="form-control" placeholder="Contact" >
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
<br>
<br>
<div class="w3-container">
  
  <table class="w3-table-all">
  
            
    <thead>
      <tr class="w3-gray">
        <th>Id</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Contact</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
    </thead>
    <c:forEach items="${suppliers}" var="s">
    	<tr>
    	<td>
    	${s.sid}
    	</td>
    	<td>
    	${s.sname}
    	</td>
    	<td>
    	${s.semail}
    	</td>
    	<td>
    	${s.scontact}
    	</td>
    	<td>
    	${s.saddress}
    	</td>
    	
    	<td><a href="deletesupplier?id=${s.sid } "type="button" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
        <a href="" type="button" class="btn btn-warning btn-sm"> <span class="glyphicon glyphicon-edit"></span></a></td>
    	</tr>
    </c:forEach>
    
    </table>
    </div>  
    <br>
    <br>
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
<%--     	<%
    		List<Supplier> supplier=(List<Supplier>) request.getAttribute("supplier");
    		pageContext.setAttribute("supplier", supplier);
    		out.println("<h1>" + supplier.size() +"</h1>");
    	
    	%> --%>
			<div class="col-md-6 col-sm-offset-3">
						<form id="add"  action="addproduct" method="POST" role="form" style="display: block;" >
																		
									<div class="form-group">
									<select   class="form-control" name="sid" id="sid" tabindex="1" >
										<option value="Select name"> Select Supplier Name</option>
										<c:forEach items="${suppliers}" var="s">
      									<option value="${s.sid}">${s.sname}</option>
										</c:forEach>
    									</select>
									</div>
									<div class="form-group">
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" >
									</div>
									<div class="form-group">  
									<select  name="cid" class="form-control" id="cid" tabindex="1" > 										 										
    									<option value="Select name">Select Product Category</option>										
    									<c:forEach items="${categories}" var="c">
      									<option value="${c.cid}">${c.cname}</option>      									
										</c:forEach>
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
									<div>
									<input type="file" name="pimage" id="pimage" tabindex="1" class="form-control"placeholder="Image">				
									</div>
									<br>												
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
<div class="w3-container">
  
  <table class="w3-table-all">
  
            
    <thead>
      <tr class="w3-gray">
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Action</th>
      </tr>
    </thead>
    <c:forEach items="${products}" var="p">
    	<tr>
    	<td>
    	${p.pid}
    	</td>
    	<td>
    	${p.pname}
    	</td>
    	<td>
    	${p.pdesc}
    	</td>
    	<td>
    	${p.pquantity}
    	</td>
    	<td>
    	${p.pprice}
    	</td>
    	
    	<td><a href="deleteproduct?id=${p.pid } "type="button" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
        <a href="" type="button" class="btn btn-warning btn-sm"> <span class="glyphicon glyphicon-edit"></span></a></td>
    	</tr>
    </c:forEach>
    </table>
    </div>  
    <br>
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

<br>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
</body>
 </html>
 
 
 
  