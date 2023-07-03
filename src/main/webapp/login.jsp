<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="webjars/bootstrap/5.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/my.css">
</head>
<body>
<div class="container">
<%
	String n=(String)session.getAttribute("user"); 
	String p =(String)session.getAttribute("pass");
%>
		<div class="mt-5 p-3">
		<%
			if(n != null || p != null){
		%>
			<div class="alert alert-danger" role="alert">
  				Username or Password  Fail
			</div>
			
 		<%  } %>
			<form action="LoginController" method="get">
				<div class="row justify-content-center">
					<div class="col-1">
						<label for="u" class="label-control">Username</label>
					</div>
					<div class="col-2 ">
						<% if(n != null){ %>
							<input type="text" id="u" class="form-control-border form-control" name="username" value="<% out.print(n); %>" />
						<% } else { %>
							<input type="text" id="u" class="form-control" name="username" value="" />
						<% } %>
					</div>
				</div>
				<div class="row justify-content-center mt-3">
					<div class="col-1">
						<label for="p" class="label-control">Password</label>
					</div>
					<div class="col-2">
						<% if(p != null){ %>
							<input type="password" id="p" class="form-control form-control-border" name="password" value="<% out.print(p); %>" /> 
						<% } else { %>
							<input type="password" id="p" class="form-control" name="password" value="" />
						<% } %>
					</div>
				</div>	
				
				<div class="row justify-content-center">
					<div class="col-1"></div>
					<input	type="submit" class="col-1 btn btn-primary mt-3" name="submit" value="Login" /><br>
				</div>
			</form>
		</div>
	</div>
	 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>
