<%@ page language="java" contentType="text/html; charset=TIS-620"
    pageEncoding="TIS-620"%>
<%@ page session = "true" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="TIS-620">
<title>Insert title here</title>
</head>
<body>

<% 
	String n=(String)session.getAttribute("user"); 
	String p =(String)session.getAttribute("pass");
	if(n != null && p != null){
		out.print("ยินดีต้อนรับคุณ " + n);  
		}else {
  		response.sendRedirect("LoginController");
	}
%>

<a href="Logout">Logout</a>
</body>
</html>