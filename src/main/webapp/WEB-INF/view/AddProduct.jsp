<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
 <link rel='stylesheet' href='<c:url value="/resources/css/bootstrap/css/bootstrap.min.css"/>'/>
<script src="<c:url value='/resources/jquery/angular.min.js'/>"></script>
<script src="<c:url value='/resources/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/css/bootstrap/js/bootstrap.min.js'/>"></script>
</head>
<body>
<div class="panel panel-primary">
<div class="panel-body">
<form:form commandName="add"  method="post" action="AddProduct">
<table border="2">
<h3>
Add a Product
</h3>
</table>
<table class="table table-hover">
<tr>
<td>
Product Name
</td>
<td>
<form:input path="name" name='name' />

</td>
</tr>
<tr>
<td>
Price
</td>
<td>
<form:input path='price' name='price'/>
</td>
</tr>
<tr>
<td>
Quantity
</td>
<td>
<form:input path='quantity' name='quantity'/>
</td>
</tr>
<td>
Description
</td>
<td>
<form:textarea path="description"/>
</td>
<tr>

<td>
<input type='submit' value='add'/>
</td>
</tr>
</table>
</form:form>
</div>
</div>
</body>
</html>