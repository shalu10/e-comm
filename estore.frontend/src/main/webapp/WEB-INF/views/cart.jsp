<!DOCTYPE html>
<html>
<%@page isELIgnored="false" %>

<%@include file="header.jsp"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.niit.estore.backend.model.*" %>
<body>
 <%@include file="navbar.jsp" %>
 <br>
 <br>
 <div class="w3-content" style="max-width:1600px">
 <header class="w3-container w3-center w3-padding-48 w3-white">
    <h1 class="w3-xxxlarge"><b>THE BICYCLE SHOP</b></h1>
    <h4>You create the <span class="w3-tag">journey</span> we supply the <span class="w3-tag">parts</span></h4>
  </header>
<div class="container"> 
<div id="content">
		<center><h1>Your Shopping Cart</h1></center>
	</div>
	<br>
  <div class="row">  
    <div class="col-sm-12">
    <form id="add" action="cart" method="GET" role="form" style="display: block;" > 
      <div class="panel panel-primary">
       <div align="center" class="col-sm-2 panel-heading">Product Id</div>
      <div align="center" class="col-sm-2 panel-heading">Product Name</div>
      <div align="center" class="col-sm-2 panel-heading">Quantity</div>
      <div align="center" class="col-sm-2 panel-heading">Cost</div>
      <div align="center" class="col-sm-2 panel-heading">Amount</div>
      <div align="center" class="col-sm-2 panel-heading">Action</div>
      </div> </form></div></div>
      <%-- <h1>Cart Item ${sessionScope['user']}</h1> --%>
          <c:forEach items="${sessionScope['cartItems']}" var="item"> 
  
 <div class="row">  
    <div class="col-sm-12">
	  <div align="center" class="col-sm-2 panel-body">${item.product.pid}</div> 
      <div align="center" class="col-sm-2 panel-body">${item.product.pname}</div>
      <div align="center" class="col-sm-2 panel-body">${item.quantity}</div>
      <div align="center" class="col-sm-2 panel-body">${item.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">${item.quantity * item.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">
      <a href="product?id=${item.product.pid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deleteitem?id=${item.product.pid}" type="button" class="btn btn-danger btn-sm "onclick="return confirm('Are you sure?')" ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      
       
      </div>
      
      </div>
           </c:forEach>  
      <div class="col-sm-12 panel panel-default"></div>	
</div>

<div id="content">
			
			<ul id="shopping-cart-actions">
				<li>
					<a href="products" class="btn btn-warning btn-sm">Continue Shopping</a>
				</li>
				<li>
					<a href="checkout" class="btn btn-warning btn-sm">Go To Checkout</a>
				</li>
			</ul>
			</div>
<br>
<br>
<br>
<%@include file="footer.jsp"%>
</div>
</body>
</html>