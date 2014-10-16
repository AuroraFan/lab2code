<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
    <base href="<%=basePath%>">
    
    <title>BookList</title>
    
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
  <a href = "index.jsp">back to front page</a>
 	<h2>book list</h2>
 	<h4>click book name to cheek on details</h4>
  	<ul id="list">
  	<%List<String> Booklist = (List)request.getAttribute("booklist");
  		//System.out.println("booklist "+Booklist);
  		if(Booklist != null){
  		for(String booktitle:Booklist){
  	 %>
  		<li>
  			<a href = "Action_viewinf?booktitle=<%=booktitle%>"><%=booktitle%></a>
  		</li>
  	<%}}%>
  	</ul>
  </body>
</html>
