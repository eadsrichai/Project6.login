<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page session = "true" %>

<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="webjars/bootstrap/5.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/my.css">
</head>
<body>
<div class="container">
<p class="fs-1 text-center  bg-primary text-white mt-3">ลงทะเบียนเข้าใช้งาน</p>
<%
	String n=(String)session.getAttribute("result"); 
	
%>
		
			<form action="LoginController" method="get">
				<div class="row justify-content-center">
					<div class="col-1">
						<label for="u" class="label-control">Username</label>
					</div>
					<div class="col-2 ">
						
							<input type="text" id="u" class="form-control-border form-control" name="username" value="" />
						
					</div>
				</div>
				<div class="row justify-content-center mt-3">
					<div class="col-1">
						<label for="p" class="label-control">Password</label>
					</div>
					<div class="col-2">
						
							<input type="password" id="p" class="form-control" name="password" value="" />
						
					</div>
				</div>	
				
				<div class="row justify-content-center">
					<div class="col-1"></div>
					<input	type="submit" class="col-1 btn btn-primary mt-3" name="submit" value="Regis" /><br>
				</div>
			</form>
		
		<div class="mt-5 p-3">
		<%
			if(n == "OK"){
		%>
			<div class="alert alert-success" role="alert">
  				<% out.print("ลงทะเบียนสำเร็จ"); %>
			</div>
			
 		<%  }else { %>
 		
 		<div class="alert alert-danger" role="alert">
  				<% out.print("ลงทะเบียนไม่สำเร็จ"); %>
			</div>
 		
 		
 		<% } %>
 		</div>
	</div>
	 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>
