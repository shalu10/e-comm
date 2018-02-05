<!DOCTYPE html>
<html>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<body>
 <%@include file="navbar.jsp" %>
 <div class="w3-content" style="max-width:1600px">
 <header class="w3-container w3-center w3-padding-48 w3-white">
    <h1 class="w3-xxxlarge"><b>THE BICYCLE SHOP</b></h1>
    <h4>You create the <span class="w3-tag">journey</span> we supply the <span class="w3-tag">parts</span></h4>
  </header>

	  <div class="wrapper">
    <form class="form-signin" action="login" method="POST">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      <input type="text" class="form-control" name="username" placeholder="Email Address" required=" " autofocus=" " />
	  <br>
      <input type="password" class="form-control" name="password" placeholder="Password" required=" " />      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <input type="submit" class="btn btn-lg btn-primary btn-block" name="butsubmit" value= "Login">
      
      <!-- <a href="index" class="btn btn-lg btn-primary btn-block" type="submit">Login</a>   --> 
    </form>
  </div>

</div>


</body>
</html>	