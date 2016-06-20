<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div class="continer">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PC World</a>
    </div>
    <ul class="nav navbar-nav">
    <li><a href="Login">Login</a></li>
    <li><a href="register">Registration</a></li>
      <li class="active"><a href="#">Home</a></li>
      
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
      <li><a href="addpc">Add a product</a></li>
      
      <li><a href="viewallproducts">View All products</a></li>
    </ul>
  </div>
</nav>
<br>
  


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
     <img src='<c:url value='/resources/images/image2.jpg' />' width="20%"/>
    </div>

    <div class="item">
      <img src='<c:url value='/resources/images/image3.jpg' />' width="20%"/>
    </div>

    <div class="item">
     <img src='<c:url value='/resources/images/image4.jpg' />' width="20%"/>
    </div>

    <div class="item">
      <img src='<c:url value='/resources/images/image7.jpg' />' width="20%"/>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<div class="row">
  <div class="col-sm-4"><img src='<c:url value='/resources/images/image8.jpg' />' width="40%"/></div>
  <div class="col-sm-4"><img src='<c:url value='/resources/images/image9.jpg' />' width="40%"/></div>
  <div class="col-sm-4"><img src='<c:url value='/resources/images/image10.jpg' />' width="40%"/></div>
</div>
</center>
</body>
</html>