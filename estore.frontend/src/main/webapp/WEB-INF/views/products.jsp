<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<body>
  <%@include file="navbar.jsp" %>
<br>
<br>	 
<br>
<div id="site">
	<header id="masthead">
		<center ><h1> <p class="text-primary">PRODUCTS
		<span class="tagline"></span> </p></h1>
		</center>
	</header>
	<br>
	<br>
	
	<div class="container"> 
 
  <div class="row">
    
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Dead Space 3 Limited Edition</div>
        <div class="panel-body"><a href="product?id=${p.pid}"><img src="./resource/images/${p.pimg}" class="img-responsive" style="width:100%" ></a></div>
        <div class="panel-footer">Price:$100</div>
		</div>
			<div class="col-sm-offset-6 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>View details
	</a></div>      
      
    </div>
	<div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Hitman Absolution Professional Edition</div>
        <div class="panel-body"><img src="./resource/image/bik2.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <!-- <div class="panel-footer"><a class=""btn btn-warning" role="button" href="product_details.html">VIEW</a> <span class="pull-right">Price:$222.00</span></div> -->
        <div class="panel-footer">Price:$222.00</div>
		</div>
		<div class="col-sm-offset-6 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>View details
	</a></div>      
      
    </div>
	<div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">OPERATION FLASHPOINT RED RIVER</div>
        <div class="panel-body"><img src="./resource/image/bik3.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <!-- <div class="panel-footer"><a class=""btn btn-warning" role="button" href="product_details.html">VIEW</a> <span class="pull-right">Price:$232.00</span></div> -->
        <div class="panel-footer">Price:$232.00</div>
      </div>
	  <div class="col-sm-offset-6 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>View details
	</a></div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">A LONG WALK TO FREEDOM</div>
        <div class="panel-body"><img src="./resource/image/bik4.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <!-- <div class="panel-footer"><a class=""btn btn-warning" role="button" href="product_details.html">VIEW</a> <span class="pull-right">Price:$123.00</span></div> -->
        <div class="panel-footer">Price:$123.00</div>
      </div>
	  <div class="col-sm-offset-6 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>View details
	</a></div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">POLITICALLY INCORRECT</div>
        <div class="panel-body"><img src="./resource/image/bik5.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <!-- <div class="panel-footer"><a class=""btn btn-warning" role="button" href="product_details.html">VIEW</a> <span class="pull-right">Price:$23.00</span></div> -->
        <div class="panel-footer">Price:$22.00</div>
      </div>
	  <div class="col-sm-offset-6 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>View details
	</a></div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">THE BONE BED</div>
        <div class="panel-body"><img src="./resource/image/bik6.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <!-- <div class="panel-footer"><a class=""btn btn-warning" role="button" href="product_details.html">VIEW</a> <span class="pull-right">Price:$100.00</span></div> -->
        <div class="panel-footer">Price:$100.00</div>
      </div>
	  <div class="col-sm-offset-6 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>View details
	</a></div>
    </div>
  </div>
</div>
	
	</body>
</html>
	