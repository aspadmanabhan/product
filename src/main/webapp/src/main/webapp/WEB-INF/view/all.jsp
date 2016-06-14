<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='<c:url value="/resources/css/bootstrap/css/bootstrap.min.css"/>'/>
<script src="<c:url value='/resources/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/css/bootstrap/js/bootstrap.min.js'/>"></script>
</head>
<body>
<div class="container">

<table class="table table stripped">
<thead>
<tr>
<th>
Product Name
</th>
<th>
Price
</th>
<th>
Quantity
</th>
<th>
I Want To
</th>
</tr>
</thead>
<tbody>
<%
java.util.List<com.ecomm.Product> prlist=(java.util.List)request.getAttribute("prlist");
for(com.ecomm.Product p:prlist)
{
	out.println("<tr>");
	out.println("<td>");
	out.println(p.getName());
	out.println("</td>");
	out.println("<td>");
	out.println(p.getPrice());
	out.println("</td>");
	out.println("<td>");
	out.println(p.getQuantity());
	out.println("</td>");
    out.println("<td>");
    out.println("<input type='button' value='view'/>|<input type='button' value='edit'/>|<input type='button' value='delete'/>");
    out.println("</td>");
	out.println("</tr>");
}
%>
</tbody>
</table>
</div>
</body>
</html>