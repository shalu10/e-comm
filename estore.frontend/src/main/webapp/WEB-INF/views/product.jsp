<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
 <%@include file="header.jsp" %>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>

<%@include file="navbar.jsp"%>
<br>
<br>
<br>
<div id="site">
	<header id="masthead">
		<center ><h1> Product Details <span class="tagline"></span> </p></h1>
		</center>
	</header>
	<br>
	
<!-- <div id="product"> -->
<div class="container">    
  <div class="row"><!-- <h2>Product Details</h2> -->
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">${product.pname}</div>
        <div class="panel-body"><img src="./resource/image/${product.pimage}" class="img-responsive" style="width:100% height="auto"" alt="Image" ></div>
        <div class="panel-footer">Price:${product.pprice}</div>
      </div>
    </div>

    <form action="addToCart" method="get">
    
	<div class="col-sm-8">
	<div class="panel panel-primary">
        <div class="panel-heading">Product Details</div>
        <div class="panel-body"><table class="table table-striped">
		<tr><td class="col-sm-2">Product Type:</td><td align="left">BICYCLE</td></tr>
		<tr><td class="col-sm-2">Model No:</td><td align="left">M3498</td></tr>
		<tr><td class="col-sm-2">Description:</td><td align="left"> ${product.pdesc} </td></tr>		 
		<tr><td class="col-sm-2">Price:</td><td align="left">${product.pprice}</td></tr>
		<tr><td class="col-sm-2">Quantity:</td><td align="pull-right"><input type="text" name="txtQuantity"  /></td></tr>
		</table></div>
		  <input type="hidden" name="id" value="${product.pid}" /> 
        
		<div class="panel-footer">
		<%-- <a href="addToCart?id=${product.pid}"> --%>
		<button type="submit" class="btn btn-warning btn-sm btn-block">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span></a>
		</button>
		<!-- </a> -->
		</div>
	</div>
	<div class="col-sm-offset-5 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>Continue Shopping
	</a></div>      
</div>
</form>
</div>
</div>

<%-- <br>
<br>
<div class="container">    
  <div class="row"><!-- <h2>Product Details</h2> -->
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">JETT MAC</div>
        <div class="panel-body"><img src="./resource/image/bik2.jpg" class="img-responsive" style="width:100% height="auto"" alt="Image" ></div>
        <div class="panel-footer">Price:$222.00</div>
      </div>
    </div>

    <form action="addToCart" method="get">
    
	<div class="col-sm-8">
	<div class="panel panel-primary">
        <div class="panel-heading">Product Details</div>
        <div class="panel-body"><table class="table table-striped">
		<tr><td class="col-sm-2">Product Type:</td><td align="left">SINGLE-SPEED BICYCLE</td></tr>
		<tr><td class="col-sm-2">Model No:</td><td align="left">S3448</td></tr>
		<tr><td class="col-sm-2">Description:</td><td align="left"> "A journey across space to discover the source of the Neucromorph outbreak" </td></tr>		 
		<tr><td class="col-sm-2">Price:</td><td align="left">Price:$222.00</td></tr>
		<tr><td class="col-sm-2">Quantity:</td><td align="pull-right"><input type="text" name="txtQuantity"  /></td></tr>
		</table></div>
		<input type="hidden" name="id" value="${product.pid}" />
        
		<div class="panel-footer"><button type="submit" class="btn btn-warning btn-sm btn-block">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
		</button></div>
	</div>
	<div class="col-sm-offset-5 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>Continue Shopping
	</a></div>      
</div>
</form>
</div>
</div>
 --%>
<br>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
</body>
</html>