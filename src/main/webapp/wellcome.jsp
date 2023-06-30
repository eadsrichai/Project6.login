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

<% String name=(String)session.getAttribute("user"); 
if(name != null){
out.print("welcome "+name);  
}else {
  response.sendRedirect("LoginController");
}
%>
<a href="Logout">Logout</a>
</body>
</html>