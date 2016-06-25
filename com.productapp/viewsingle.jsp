<%@page import="com.ecom.PersonalComputer"%>
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
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
java.util.List lst=(java.util.List)request.getAttribute("data1");
com.ecom.PersonalComputer c=(com.ecom.PersonalComputer)lst.get(0);
session.setAttribute("product",c);
request.setAttribute("name",c.getProductName());
request.setAttribute("pr",c.getPrice());
request.setAttribute("quantity",c.getQuantity());
request.setAttribute("des",c.getDescription());
request.setAttribute("img",c.getImageUrl());
out.println(c.getProductName());
%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PC World</a>
    </div>
    <ul class="nav navbar-nav">
    <li>

    
    </li>
 
   
  
      
    </ul>
  </div>
</nav>

<table class="table table-stripped">
<tr>
  <td>
Product Name
</td>
<td>
<%=request.getAttribute("name") %>
</td>
</tr>
<tr>
<td>
Product Price
</td>
<td>
<%=request.getAttribute("pr") %>
</td>
</tr>
<tr>
<td>
Product Quantity
</td>
<td>
<%=request.getAttribute("quantity") %>
</td>
</tr>
<tr>
<td>
Product Description
</td>
<td>
<%=request.getAttribute("des") %>
</td>
</tr>
<tr>
<td>
Image
</td>
<td>
<img src="<c:url value='<%=(String)request.getAttribute("img") %>'/>" />
</td>
</tr>
<tr>
<td>

<a href="<c:url value='cart'/>"&_eventId=next&id=>Add to cart</a>
</td>
</tr>
</table>
</body>
</html>