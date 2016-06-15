<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap.min.css" />">

<!-- jQuery library -->
<script src='<c:url value='/resources/jquery/jquery.min.js' />'></script>
<!-- Latest compiled JavaScript -->
<script src="<c:url value="/resources/css/bootstrap/js/bootstrap.min.js" />"></script>
<meta name=
"viewport" content="width=device-width, initial-scale=1">	
</head>
<body>
<div class="container">
<nav class="navbar navbar-default">
<div class="container-fluid">
<div class="navbar-header">
<a   href="#" class="navbar-brand" >
Ecommerce Application
</a>
</div>
<ul class="nav navbar-nav" id="navi">
	<li><a class="btn btn-info" href="#">Home</a>
	
	<li><a class="btn btn-info" href="#">Contact Us</a>
	<li><a  class="btn btn-info" href="#" >About Us</a>
	<li><a class="btn btn-info" href='<c:url value='sample?pr=all'/>' >View All</a>
	<li><a class="btn btn-info" href='<c:url value='Login'/>'  >Login</a>
	<li><a class="btn btn-info" href='<c:url value='Register'/>'  >Register</a>
	<li><a class="btn btn-info" href='<c:url value='AddProduct'/>' >Add a product</a>
	</ul>
</div>
</nav>

<div id="car" class="carousel slide"  data-ride="carousel" width="20%">
<center>
<ol class="carousel-indicators">
<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
<li data-target="#mycarousel" data-slide-to="1"></li>

</ol>
<div class="carousel-inner" roles="listbox" style=" width:70%; height: 390px;">

 <div class="item active" style="margin-top:4%;margin-bottom:3%">
 
 <img src="<c:url value="/resources/images/image1.jpg" />" alt="" width="100%" />


 </div>
 <div class="item" style="margin-top:4%;margin-bottom:3%">
 <img src="<c:url value="/resources/images/image2.jpg" />" alt="" width="100%" />
 
 </div>
</div>
<a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br/>
<br/>
<div class="row">
<div class="col-sm-4">
<a href='<c:url value='sample?pr=ooty'/>'>	<img src="<c:url value="/resources/images/image7.jpg" />"  width="380px" height="240px"/></a>
</div>
<div class="col-sm-4">
<a href='<c:url value='sample?pr=shimla'/>'><img src="<c:url value="/resources/images/image3.jpg" />"  width="370px" height="240px"/></a>
</div>
<div class="col-sm-4"></div>
<a href='<c:url value='sample?pr=kashmir'/>'><img src="<c:url value="/resources/images/image4.jpg" />" width="370px" height="240px"/></a>

</div>

</div>
<br/>
<br/>


</body>
</html>