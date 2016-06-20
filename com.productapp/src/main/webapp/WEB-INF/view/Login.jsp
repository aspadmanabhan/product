<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>
</head>
<body>
<Center>
<h3>
Login Form
</h3>
<table class="table table-stripped">
<tr>

<div class="form-group">
<td>
    <label for="User Name">User Name:</label>
    </td>
    <td>
    <input type="text"/>
  </td>
  </div>
  </tr>
  <tr>
  
  <div class="form-group">
  <td>
    <label for="password">Product Price:</label>
    </td>
    <td>
    <input type="password"/>
  </td>
  </div>
  <div class="form-group">
  <td>
 <input type="submit" />
    </td>
    <td>
  </td>
  </div>
  </tr>
  
  </tr>
  <tr>
</tr>
</table>
</form>
</body>
</html>