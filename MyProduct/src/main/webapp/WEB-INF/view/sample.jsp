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
<script>

</script>
</head>
<body>

<div ng-app='myApp' ng-controller='myCtrl'>
Search <input type='text' name='search' ng-model="srch"/>
<form action='viewdata'>
<ng-form name="userform">
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
<%String d=request.getParameter("pr");

if(d.equals("ooty"))
{
%>
<tr ng-repeat="a in mydata|filter: '2 days 3 nights tour package for ooty'">
<% }
else
{
if(d.equals("shimla"))
{
	%>
	<tr ng-repeat="a in mydata|filter: 'four nights five days package for shimla'">
	<%
}
else
{
	if(d.equals("kashmir"))
	{
	%>
	<tr ng-repeat="a in mydata|filter: 'four nights five days package for shimla'">
	<%
	
	}
	else
	{
		if(d.equals("all"))
		{
			%>
			<tr ng-repeat="a in mydata|filter: srch ">
			<%
		}
			
		}
	}

}

	%>


<td>

{{a.name}}

</td>
<td>
{{a.price}}
</td>
<td>
{{a.quantity}}
</td>
<td>



	<a href="viewdata?&pr={{a.name}}&pi={{a.price}}&q={{a.quantity}}&di={{a.description}}" class="btn btn-info">View</a>|<a href='edit' class="btn btn-info">edit</a>|<a href='delete' class="btn btn-info">delete</a>
			

</td>
</tr>
</table>
</ng-form>
</form>
</div>
<script>	

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("all")
    .then(function(response) {
        $scope.mydata = response.data;
    });
});
function navigate()
{
	var app = angular.module('myApp', []);
	app.controller('myCtrl', function($scope, $http) {
	    $http.get("sample")
	    .then(function(response) {
	        $scope.myd= response.data;
	    });
	});
	
	}

</script>

</body>
</html>