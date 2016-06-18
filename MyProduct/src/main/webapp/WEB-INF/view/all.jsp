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
<script src="<c:url value='/resources/jquery/angular.min.js'/>"></script>
</head>
<body>
<div class="container">
<div class="col-sm-3 col-md-3 pull-right">
            <form class="navbar-form" role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="q">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form>
        </div>        

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
//java.util.List<com.ecomm.Product> prlist=(java.util.List)request.getAttribute("prlist");
/*java.util.List<com.ecomm.Product> prlist=(java.util.List)request.getAttribute("list");
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
}*/
%>
</tbody>
</table>
<div ng-app="myApp" ng-controller="myCtrl">
{{mydata}}

</div>

<script>	

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("all")
    .then(function(response) {
        $scope.mydata = response.data;
    });
});

</script>
</body>
</html>