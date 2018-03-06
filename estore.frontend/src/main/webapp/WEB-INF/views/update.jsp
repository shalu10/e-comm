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
		<center ><h1> Updates <span class="tagline"></span> </p></h1>
		</center>
	</header>
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
						<input type="hidden" name="pid" value="${p.pid}" />									
									
									<div class="form-group">
										<select   class="form-control" name="sid" id="sid" tabindex="1" >								
										
										<c:forEach items="${suppliers}" var="s">
										<c:choose>
											<c:when test="${s.id eq p.sid.id}">
												<option value="${s.id}" selected="selected">${s.name}</option>
											</c:when>
											<c:otherwise>
												<option value="${s.id}">${s.name}</option>
											</c:otherwise>											
										</c:choose>
										
										
										</c:forEach>
    									</select>
									
									</div>
									<div class="form-group">
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" value="${p.pname}" >
									</div>
									<div class="form-group">  
 										 <select  name="cid" class="form-control" id="cid" tabindex="1" > 										 										
    																			
    									<c:forEach items="${categories}" var="c">
    										<c:choose>
    											<c:when test="${c.cid eq p.cid.cid }">
    												<option value="${c.cid}" selected>${c.cname}</option>
    											</c:when>
    											<c:otherwise>
    												<option value="${c.cid}">${c.cname}</option>
    											</c:otherwise>
    										</c:choose>    									
										</c:forEach>
    									</select>
    									
    								</div>
								
									<div class="form-group">
										<input type="text" name="pdesc" id="pdesc" tabindex="1" class="form-control" placeholder="Description" value="${p.pdesc}" >
									</div>
									<div class="form-group">
										<input type="text" name="pstock" id="pquantity" tabindex="1" class="form-control" placeholder="Quantity"  value="${p.pquantity}">
									</div>
									<div class="form-group">
										<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price"  value="${p.pprice}">
									</div>
									<div class="form-group">
										<input type="file" name="pimg" id="pimg" tabindex="1" class="form-control" placeholder="Image" value="${p.pimage}">
										
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

<div class="container">
    	<div class="row">
			<div class="col-lg-12">
					<div class="panel panel-update">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Update Category</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="update" action="updatecategory" method="POST" role="form" style="display: block;" >
									
									<input type="hidden" name="cid" value="${c.cid}" />
									<div class="form-group">
										<input type="text" name="cname" id="cname" tabindex="1" class="form-control" placeholder="Category Name" value="${c.cname}">
									</div>
									<div class="form-group">
										<input type="text" name="cdesc" id="cdesc" tabindex="1" class="form-control" placeholder="Description" value="${c.cdesc}" >
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update Category">
											</div>
											
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								</form>
</div>
</div>
</div></div></div>
</div></div>
<div class="container">
    	<div class="row">
			<div class="col-lg-12">
					<div class="panel panel-update">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Update Supplier</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="update" action="updatesupplier" method="POST" role="form" style="display: block;" >
									
									<input type="hidden" name="id" value="${s.id}" />
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="Supplier Name" value="${s.name}">
									</div>
									<div class="form-group">
										<input type="text" name="email" id="email" tabindex="1" class="form-control" placeholder="Supplier Email" value="${s.email}" >
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="1" class="form-control" placeholder="Supplier Address" value="${s.address}">
									</div>
									<div class="form-group">
										<input type="text" name="contact" id="contact" tabindex="1" class="form-control" placeholder="Supplier Contact" value="${s.contact}" >
									</div>
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update Supplier">
											</div>
											
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								</form>
</div>
</div>
</div></div></div>
</div></div>
<br>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
</body>
 </html>
 