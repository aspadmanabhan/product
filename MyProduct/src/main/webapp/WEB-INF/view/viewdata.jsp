<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='<c:url value="/resources/css/bootstrap/css/bootstrap.min.css"/>'/>
<script src="<c:url value='/resources/jquery/angular.min.js'/>"></script>
<script src="<c:url value='/resources/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/css/bootstrap/js/bootstrap.min.js'/>"></script>

</head>
<body>
<table class="table table stripped">
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
</tr>
<tr>
<% 
String info="";
String data=request.getParameter("pr");
String data1=request.getParameter("pi");
String q=request.getParameter("q");

out.println("<td><h3>"+data+"</h3>");

if(data.equals("2 days 3 nights tour package for ooty"))
{
	info="Package available at a discount on week days,<br/>addittional services will be chargable<br/>Seperate guide will be provided only for groups with people more then 2";
	
	%>
	<img src='<c:url value="/resources/images/image7.jpg"/>'/>
	<%
}
if(data.equals("four nights five days package for shimla"))
{
	info="Package is not available in month of june and july<br/>Tax is applicable as per state laws";
	%>
	<img src='<c:url value="/resources/images/image3.jpg"/>'/>
	<%
}
if(data.equals("seven nights 8 days package for kashmir"))
{
	info="Package is only available in month of December and January,Cleints may need to show valid identification document";
	%>
	<img src='<c:url value="/resources/images/image4.jpg"/>'/>
	<%	
}
out.println("</td>");
out.println("<td><h3>"+data1+"</h3></td>");
out.println("<td><h3>"+q+"</h3></td>");
%>
</tr>
</table>
<table class="table table stripper">
<tr>
<th>
Description
</th>
</tr>
<tr>
<td>
<% 
out.println(info);
%>
</td>
</tr>
</table>
</body>
</html>