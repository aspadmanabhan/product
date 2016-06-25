
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>
   <script src="<c:url value='/resources/jquery/angular.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div class="continer">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PC World</a>
    </div>
    <ul class="nav navbar-nav">
    
 
   
  
      <li class="active"><a href="#">Home</a></li>
      
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
      
   <security:authorize access="hasRole ('ROLE_ADMIN')">
      <li><a href="addpc">Add a product</a></li>
       <li><a href="register">Registration</a></li>
    </security:authorize>
      <li><a href="viewallproducts">View All products</a></li>
 
    </ul>
  </div>
</nav>
<br>
  
<div ng-app="myApp" ng-controller="myCtrl"> 

<table class="table table-stripped">
  <tr ng-repeat="x in info">
  
    <td><input type="text" value="{{ x.ProductId }}"  path="ProductId" readonly="true"/></td>
    <td><input  type="text" value="{{ x.productName}}" path="productName" readonly="true"/></td>
    <td><input type="text" value="{{x.price}}" path="price" readonly="true"/></td>
    <td><input type="text" value="{{x.quantity}}" path="quantity" readonly="true"/></td>
    
 
    <td><a data-toggle="modal" data-target="#myModal" href='viewsingle?id={{x.ProductId}}' class="btn btn-primary">view</a>|
    <security:authorize access="hasRole('ROLE_ADMIN')"><a href='updatepc?id={{x.ProductId}}' class="btn btn-primary">edit</a>|<a href='deletepc?id={{x.ProductId}}' class="btn btn-warning"> delete</a></security:authorize></td>

  </tr>
</table>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">Modal title</h4>

            </div>
            <div class="modal-body"><div class="te"></div></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
   $http.get("ViewAll")
    .then(function(response) {
        $scope.info = response.data;
    });
});
</script>

</body>
</html>