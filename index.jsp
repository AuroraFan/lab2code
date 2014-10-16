<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SearchAuthor</title>
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
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="hero-unit well">
				<h1>
					<cite>Digital Library</cite>
				</h1>
				<p>
					In this library, you can search books according to author name, or cheek their information, and update/delete these information.
				</p>
				<p>
					Input author name to start searching.
				</p>
						
				 <form action = "Action_viewlist" method = "post">
				 	<input class="input-large search-query" type="text" name="authorname"/>
				 	<button type="submit" class="btn btn-primary btn-medium" value = "search">SEARCH</button>
				 </form>
				 </div>
		</div>
	</div>
</div>
  </body>
</html>
