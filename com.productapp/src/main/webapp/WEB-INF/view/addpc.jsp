<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
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
     
    </ul>
  </div>
</nav>

<form:form method="post" action="addpc" commandName="add" enctype="multipart/form-data">
<table class="table table-stripped">
<tr>

<div class="form-group">
<td>
    <label for="productName">Product Name:</label>
    </td>
    <td>
    <form:input type="text"  path="productName"/>
 <form:errors path="productName"/>
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
 <form:errors path="price"/>
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
 <form:errors path="quantity"/>
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
  <form:errors path="description"/>
  </td>
  </div>
  </tr>
  <tr>
  
  <div class="form-group">
    <td>
    
    
    
    <label for="imageUrl">Image for product</label>
    </td><td>
   
    <form:input type="text" path="imageUrl"  />
   <form:errors path="imageUrl"/>
    </form>
 </td>
 </div>
  </div>
  </tr>
  <tr>
   <div class="form-group">
    <td>
    <input type="submit" value="Add pc information" class="btn btn-primary"/>
</td>
 </tr>
 <tr>
 <td>
 <a href="<c:url value="addimage"/>"  >Click to upload image</a>
 </td>
 </tr>

  </table>
  </form:form>
 
 
 </body>
</html>