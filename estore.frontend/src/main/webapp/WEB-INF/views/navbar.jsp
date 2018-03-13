<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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
        </div>
       <div id="navbar" class="navbar-collapse collapse">
        	<ul class="nav navbar-nav navbar-right">
          			<li><a href="products"><i class="fa fa-product-hunt"></i>Products</a></li>
					<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
					 <c:if test="${empty pageContext.request.userPrincipal}">
	       				<li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
	      				<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      				</c:if>
      				<%-- <c:if test="${sessionScope['user'] ne null }">
      				Welcome ${sessionScope['user'].name}
      				
      				</c:if> --%>
      				<c:if test="${not empty pageContext.request.userPrincipal}">
    						<font color="White">Welcome <c:out value="${pageContext.request.userPrincipal.name}" /> </font>
    						<li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
					</c:if>
      		</ul>
         
	  		<ul class="nav navbar-nav navbar-Left">
	  		        <li><a href="index"><i class="fa fa-home"></i>Home</a></li>
					<li><a href="add"><span class="glyphicon glyphicon-user"></span>Admin</a>
			</ul>
			
		</div>
     
     
     
</nav>
     
    