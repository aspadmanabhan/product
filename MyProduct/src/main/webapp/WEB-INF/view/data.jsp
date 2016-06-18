
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

<div ng-app='product' ng-controller='MyCtrl'>
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
<tr ng-repeat="a in mydata">
<td>
{{a.prname}}
</td>
<td>
{{a.price}}
</td>
<td>
{{a.quantity}}
</td>
</tr>
</table>
</div>
<script>

app=angular.module("product",[]);
app.controller('MyCtrl',function($scope){
	
$scope.mydata=[{prname: 'ooty tour package',price:'400 per day/night per person',quantity:'3 rooms available'},{prname:'shimla tour package',price:'4 night/3 days Rs 10000',quantity:'accommodation for seven'},{prname:'rajasthan tour package',price:'1000 per head per day',quantity:'accomodation for 30 people'}];	
	
});
</script>

</body>
</html>
</body>
</html>