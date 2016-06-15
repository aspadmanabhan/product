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
</head>
<body>
  <%
String price="";
String quantity="";
String pr="";
String prname=request.getParameter("pr");
if(prname.equals("ooty"))
{
	pr="3 days four nights tour package for ooty";
	price="13000";
 quantity="4 rooms available";
}
if(prname.equals("shimla"))
{
	pr="four nights five days package for shimla";
	price="18000";
	
	quantity="3 rooms available";
}
if(prname.equals("kashmir"))
{
	pr="seven nights 8 days package for kashmir";
	price="19000";
	quantity="8 rooms available";
}
if(prname.equals("all"))
{
	java.util.List prlist=new java.util.ArrayList();
	com.ecomm.Product p1=new com.ecomm.Product();
	p1.setName("3 days four nights tour package for ooty");
			p1.setPrice("13000");
			p1.setQuantity("4 rooms available");
	prlist.add(p1);
	com.ecomm.Product p2=new com.ecomm.Product();
	p2.setName("four nights five days package for shimla");
			p2.setPrice("18000");
			p2.setQuantity("3 rooms available");
	prlist.add(p2);
	com.ecomm.Product p3=new com.ecomm.Product();
	p3.setName("seven nights 8 days package for kashmir");
			p3.setPrice("19000");
			p3.setQuantity("8 rooms available");
	prlist.add(p3);
	request.setAttribute("prlist",prlist);
	request.getRequestDispatcher("/all").include(request, response);
	
}
else
{
com.ecomm.Product obj=new com.ecomm.Product();
obj.setName(pr);
obj.setPrice(price);
obj.setQuantity(quantity);
request.setAttribute("pr",obj);

%>
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
<tr>
<td>
<% com.ecomm.Product pro=(com.ecomm.Product)request.getAttribute("pr");

out.println(pro.getName());
%>
</td>
<td>

<% com.ecomm.Product pro1=(com.ecomm.Product)request.getAttribute("pr");

out.println(pro1.getPrice());
%>
</td>
<td>
<% com.ecomm.Product pro2=(com.ecomm.Product)request.getAttribute("pr");

out.println(pro2.getQuantity());
%>
</td>
<td>
<input type='button' value='view'/>|<input type='button' value='edit'/>|<input type='button' value='delete'/>
</td>
</tr>

</tbody>
</table>
</div>
<%
}
%>

 
 
 
</body>
</html>