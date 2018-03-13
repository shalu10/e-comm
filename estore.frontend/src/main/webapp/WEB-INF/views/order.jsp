<!DOCTYPE html>
<html>
<%@page isELIgnored="false" %>
<%@include file="header.jsp"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>
<%@include file="navbar.jsp" %>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>Spok'e Cycles</strong>
                        <br>
                        21/35 Anna nagar
                        <br>
                        Madurai,Tamilnadu 90026
                        <br>
                        <abbr title="Phone">P:</abbr> (213) 484-6829
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: 7th march, 2018</em>
                    </p>
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>
            </div>
             <%-- <c:forEach items="${sessionScope['cartItems']}" var="item">  --%>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <c:set var="net" scope="session" value="0" />
                     <c:forEach items="${sessionScope['cartItems']}" var="item">  
                    <tbody>
                    
                        <tr>
                            <td class="col-md-9"><em>${item.product.pname}</em></h4></td>
                            <td class="col-md-1" style="text-align: center"> ${item.quantity} </td>
                            <td class="col-md-1 text-center">${item.product.pprice}</td>
                            <td class="col-md-1 text-center">${item.quantity * item.product.pprice}</td>
                            <c:set var="net" value="${net+ (item.quantity * item.product.pprice) }" />
                            
                        </tr>
                        </c:forEach>
                          
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>${net}</strong></h4></td>
                        </tr>
                       
                    </tbody>
                </table>
                
               
               <div>
                    <h1 style="text-align:center;">
                        Thank's for shopping.
                    </h1>
                    
                </div>
            </div>
            </div>
            <%-- </c:forEach> --%>
        </div>
    </div>
	</body>
	</html>
