<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">	
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
	<li  style="background-color:beige;border-style:solid"><a href="#">Home</a>
	
	<li style="background-color:aqua;border-style:solid;"><a href="#">Contact Us</a>
	<li><a href="#"style="background-color:aqua;border-style:solid;" >About Us</a>
	<li><a href="Login.jsp"style="background-color:aqua;border-style:solid;" >Login</a>
	<li><a href="Register.jsp"style="background-color:aqua;border-style:solid;" >Register</a>
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
 <img src="image1.jpg" width="900px"  height="400px" />

 </div>
 <div class="item" style="margin-top:4%;margin-bottom:3%">
 <img src="image2.jpg" width="100%"  height="190px"/>
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
<a href="first.jsp">	<img src="image7.jpg"  width="380px" height="240px"/></a>
</div>
<div class="col-sm-4">
<a href="second.jsp"><img src="image3.jpg"  width="370px" height="240px"/></a>
</div>
<div class="col-sm-4"></div>
<a href="third.jsp"><img src="image4.jpg" width="370px" height="240px"/></a>

</div>

</div>
<br/>
<br/>


</body>
</html>