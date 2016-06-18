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
      <li><a href="updatepc">Update a product</a></li>
      <li><a href="deletepc">Delete a product</a></li>
      <li><a href="viewallproducts">View All products</a></li>
    </ul>
  </div>
</nav>
<form:form method="post" action="updatepc" commandName="update">
<table class="table table-stripped">
<tr>
  
  <div class="form-group">
  <td>
    <label for="productId">Product Id:</label>
    </td>
    <td>
    <form:input type="text" path="productId" value="${param.id}" readonly="true"/>
 
  </td>
  </div>
  </tr>
  
<tr>

<div class="form-group">
<td>
    <label for="productName">Product Name:</label>
    </td>
    <td>
    <form:input type="text"  path="productName" value="${param.nm}"/>
  </td>
  </div>
  </tr>
  <tr>
  
  <div class="form-group">
  <td>
    <label for="price">Product Price:</label>
    </td>
    <td>
    <form:input type="text" path="price" value="${param.pr}"/>
  </td>
  </div>
  </tr>
  <tr>
 <div class="form-group">
<td>
    <label for="quantity">Product Quantity:</label>
    </td>
    <td>
    <form:input type="text" path="quantity" value="${param.q}"/>
 </td>
  </div>
  </tr>
  
  <tr>
  <div class="form-group">
    <td>
    <label for="description">Product Description:</label>
    </td>
    <td>
    <form:textarea   path="description" placeholder="${param.de}" required="true" />
    
  </td>
  </div>
  </tr>
  <tr>
  <div class="form-group">
    <td>
    <label for="imageUrl">Image for product</label>
    </td><td>
    <form:input type="text" path="imageUrl" value="${param.i}"/>
 </td>
  </div>
  </tr>
  <tr>
   <div class="form-group">
    <td>
    <input type="submit" value="Update pc information"/>
</td>
 </tr>
  </div>
  
  </table>
  </form:form>
<div ng-app="myApp" ng-controller="myCtrl"> 

<table class="table table-hover">
  <tr ng-repeat="x in info">
    <td>{{ x.ProductId }}</td>
    <td>{{ x.productName}}</td>
    <td>{{x.price}}</td>
    <td>{{x.quantity}}</td>
    <td>{{x.description}}</td>
    
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