<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
</head>
<body>
<div class="panel panel-primary">
<div class="panel panel-heading">

Payement Details
</div>
<div class="panel panel-body">
<h3>
<table class="table table-default">

<tr>
<td>
Enter Card Details
</td>
<td>
<input type='text' name='txt'/>
</td>
<td>
<input type='submit' class='btn btn-primary'/>
</td>
</tr>
</table>
</h3>
</div>
</div>
</body>
</html>