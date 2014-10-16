<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="lab2.Book" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>BookInformation</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>book information</h1>
    <h3>Title: </h3><h5>click title to update</h5>
    <%Book Bookinf = (Book)request.getAttribute("bookinf");
    String booktitle;
     %><%booktitle = Bookinf.Title; %>
     <a href = "update.jsp?booktitle=<%=booktitle%>"><%=booktitle%></a>
     
	<table>
		<tr>
			<th>Pulisher</th><td><%=Bookinf.Publisher %></td>
		</tr>
		<tr>
			<th>PublisheDate</th><td><%=Bookinf.PublishDate %></td>
		</tr>
		<tr>
			<th>Price</th><td><%=Bookinf.Price %></td>
		</tr>
		<tr>
			<th>Author</th><td><%=Bookinf.Name %></td>
		</tr>
		<tr>
			<th>Age</th><td><%=Bookinf.Age %></td>		
		</tr>
		<tr>
			<th>Country</th><td><%=Bookinf.Country %></td>
		</tr>
	</table>
	
	<form action = "Action_delete" method = "post">
		<input type="hidden" name="booktitle" value="<%=booktitle%>" />
		<button type="submit" class="btn btn-primary btn-medium" value = "search">DELETE</button>
	</form>
	<a href = "index.jsp">back to front page</a>
</body>
</html>
