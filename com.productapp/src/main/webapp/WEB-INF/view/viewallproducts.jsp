<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>
<script src="<c:url value='/resources/jquery/angular.min.js'/>"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PC World</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
      <li><a href="addpc">Add a product</a></li>
     
     
     
    </ul>
  </div>
</nav>

<div ng-app="myApp" ng-controller="myCtrl"> 

<table class="table table-stripped">
  <tr ng-repeat="x in info">
  <form:form action='sendforupdate'  method="post" commandName="sendforupdate">
    <td><form:input value="{{ x.ProductId }}"  path="ProductId" readonly="true"/></td>
    <td><form:input value="{{ x.productName}}" path="productName" readonly="true"/></td>
    <td><form:input value="{{x.price}}" path="price" readonly="true"/></td>
    <td><form:input value="{{x.quantity}}" path="quantity" readonly="true"/></td>
 
    <td><a href='viewsingle?id={{x.ProductId}}' class="btn btn-primary">view</a>|<a href='updatepc?id={{x.ProductId}}' class="btn btn-primary">edit</a>|<a href='deletepc?id={{x.ProductId}}' class="btn btn-warning"> delete</a></td>
 </form:form>
  </tr>
</table>
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