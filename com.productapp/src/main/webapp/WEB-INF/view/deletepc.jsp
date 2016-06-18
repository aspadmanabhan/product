<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" action="deletepc" commandName="delete">
<table class="table table-stripped">
<tr>
  
  <div class="form-group">
  <td>
    <label for="productId">Product Id:</label>
    </td>
    <td>
    <form:input type="text" path="productId"/>
  </td>
  </div>
  </tr>
  
<tr>

<div class="form-group">
<td>
    <label for="productName">Product Name:</label>
    </td>
    <td>
    <form:input type="text"  path="productName"/>
  </td>
  </div>
  </tr>
  <tr>
  
  <div class="form-group">
  <td>
    <label for="price">Product Price:</label>
    </td>
    <td>
    <form:input type="text" path="price"/>
  </td>
  </div>
  </tr>
  <tr>
 <div class="form-group">
<td>
    <label for="quantity">Product Quantity:</label>
    </td>
    <td>
    <form:input type="text" path="quantity"/>
 </td>
  </div>
  </tr>
  <tr>
  <div class="form-group">
    <td>
    <label for="description">Product Description:</label>
    </td>
    <td>
    <form:textarea path="description"/>
  </td>
  </div>
  </tr>
  <tr>
  <div class="form-group">
    <td>
    <label for="imageUrl">Image for product</label>
    </td><td>
    <form:input type="text" path="imageUrl"/>
 </td>
  </div>
  </tr>
  <tr>
   <div class="form-group">
    <td>
    <input type="submit" value="Delete pc information"/>
</td>
 </tr>
  </div>
  
  </table>
  </form:form>
 
  
</body>
</html>