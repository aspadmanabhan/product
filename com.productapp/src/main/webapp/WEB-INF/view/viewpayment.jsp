<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <div class="panel panel-primary">
   <div class="panel panel-heading">
   Shipping and delivery details
   </div>
   <div class="panel panel-body">
<form method='post'>
<table class="table table-horizontal">
<tr>
<td>
<h3>

</h3>
<h3>
<div class="panel panel-info">
<div class="panel panel-heading">
Dear user kindly confirm your details below
</div>
<div class="panel panel-body">
<%com.ecom.USER_AUTHENTICATION u1=(com.ecom.USER_AUTHENTICATION)session.getAttribute("user");
out.println(u1.getUSER_NAME()+"<br/>");
out.println(u1.getAddress()+"<br/>");
out.println(u1.getEmail()+"<br/>");
out.println(u1.getPhone()+"<br/>");;

%>
</div>
<div class="panel panel-footer">
<h3>
<input type='submit' value='confirm' class='btn btn-primary'/>
 </h3>
</div>
</div>
</h3>
<h2>
Enter Shipping details
<textarea placeholder="Enter shipping address" >

</textarea>
</h2>
</td>
</tr>
<tr>
<td>
select checkbox if shipping details are same as billing details
<input type='checkbox'/>
</td>
</tr>
<tr>
<td>
<h2>
Enter billing details
<textArea placeholder="Enter billing address">

</textArea>
</h2>
</td>
</tr>
<tr>
<td>
<td>

<a href='payementpagejsp' class='btn btn-primary'>make payment</a>
</td>

</td>
</tr>
</table>

</form>
   
   </div>
   </div>



</body>
</html>