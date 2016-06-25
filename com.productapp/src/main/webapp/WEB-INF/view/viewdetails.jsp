<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>
</head>
<body>
<div class="panel panel-primary">
<div class="panel panel-heading">
Product Details
</div>
<div class="panel panel-body">
<h3>
<% com.ecom.PersonalComputer p=(com.ecom.PersonalComputer)session.getAttribute("product") ;
out.println("Details for product added to cart ");
out.println(p.getProductName());
		out.println(p.getPrice());

%>
<%
request.getAttribute("u");

%>

<a href='viewpayment' data-toggle="modal" data-target="#myModal">enter address details</a>
</h3>
</div>
<div class="panel panel-footer">
<h6>pc world is a proprietory of PC Product Inc.</h6>
</div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">Modal title</h4>

            </div>
            <div class="modal-body"><div class="te"></div></div>
            <div class="modal-footer">
                            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
</body>
</html>