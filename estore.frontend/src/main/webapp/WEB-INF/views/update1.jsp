<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<%@include file="header.jsp"%>
	<style>
	body{
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
}
.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
  body {
    pupdateing-top: 90px;
}
.panel-update {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-update>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align:center;
}
.panel-update>.panel-heading a{
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-update>.panel-heading a.active{
	color: #029f5b;
	font-size: 18px;
}
.panel-update>.panel-heading hr{
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-update input[type="text"],.panel-update input[type="email"],.panel-update input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-update input:hover,
.panel-update input:focus {
	outline:none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}
.btn-update {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	pupdateing: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}
.btn-update:hover,
.btn-update:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}
</style>
<body>
<%@include file="navbar.jsp"%>
<br>
<br>
<br>
<br>
<br>

<div class="container">
    	<div class="row">
			<div class="col-lg-12">
					<div class="panel panel-update">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Update Products</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="update" action="updateproduct" method="POST" role="form" style="display: block;">
						<input type="hidden" name="pid" value="${product.pid}" />									
									
									<div class="form-group">
										<select   class="form-control" name="sid" id="sid" tabindex="1" >								
										
										<c:forEach items="${suppliers}" var="supl">
										<c:choose>
											<c:when test="${supl.sid eq product.sid.sid}">
												<option value="${supl.sid}" selected="selected">${supl.sname}</option>
											</c:when>
											<c:otherwise>
												<option value="${supl.sid}">${supl.sname}</option>
											</c:otherwise>											
										</c:choose>
										
										
										</c:forEach>
    									</select>
									
									</div>
									<div class="form-group">
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" value="${product.pname}" >
									</div>
									<div class="form-group">  
 										 <select  name="cid" class="form-control" id="cid" tabindex="1" > 										 										
    																			
    									<c:forEach items="${categories}" var="cat">
    										<c:choose>
    											<c:when test="${cat.cid eq product.cid.cid }">
    												<option value="${cat.cid}" selected>${cat.cname}</option>
    											</c:when>
    											<c:otherwise>
    												<option value="${cat.cid}">${cat.cname}</option>
    											</c:otherwise>
    										</c:choose>    									
										</c:forEach>
    									</select>
    									
    								</div>
								
									<div class="form-group">
										<input type="text" name="pdesc" id="pdesc" tabindex="1" class="form-control" placeholder="Description" value="${product.pdesc}" >
									</div>
									<div class="form-group">
										<input type="text" name="pquantity" id="pquantity" tabindex="1" class="form-control" placeholder="Quantity"  value="${product.pquantity}">
									</div>
									<div class="form-group">
										<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price"  value="${product.pprice}">
									</div>
									<div class="form-group">
										<input type="file" name="pimage" id="pimage" tabindex="1" class="form-control" placeholder="Image" value="${product.pimage}">
										
									</div>				
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update Product">
											</div>
											
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								</form>
</div>
</div>
</div></div></div></div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>