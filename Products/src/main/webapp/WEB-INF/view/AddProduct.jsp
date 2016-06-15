<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <link rel='stylesheet' href='<c:url value="/resources/css/bootstrap/css/bootstrap.min.css"/>'/>
<script src="<c:url value='/resources/jquery/angular.min.js'/>"></script>
<script src="<c:url value='/resources/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/css/bootstrap/js/bootstrap.min.js'/>"></script>
</head>
<body>
<div class="panel panel-primary">
<div class="panel-body">
<form method='post'>
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
<input type='text' name='prname'/>
</td>
</tr>
<tr>
<td>
Price
</td>
<td>
<input type='text' name='price'/>
</td>
</tr>
<tr>
<td>
Quantity
</td>
<td>
<input type='text' name='quantity'/>
</td>
</tr>
<tr>
<td>
Upload Image
</td>
<td>
<input type='file' name='prname'/>
</td>
</tr>
<tr>
<td>
Description
</td>
<td>
<textarea>
</textarea>
</td>
</tr>
<tr>

<td>
<input type='submit' value='add'/>
</td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>