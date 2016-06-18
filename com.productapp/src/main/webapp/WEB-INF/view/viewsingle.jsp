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
<table class="table table-stripped">
<tr>
<td>
Product Name
</td>
<td>
${param.nm}
</td>
</tr>
<tr>
<td>
Product Price
</td>
<td>
${param.pr}
</td>
</tr>
<tr>
<td>
Product Quantity
</td>
<td>
${param.qi}
</td>
</tr>
<tr>
<td>
Product Name
</td>
<td>
${param.de}
</td>
</tr>
<tr>
<td>
Image
</td>
<td>
<img src="<c:url value='${param.u}'/>"/>
</td>
</tr>
</table>
</body>
</html>