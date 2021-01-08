<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  <meta http-equiv="X-UA-Compatible" content="IE=edge">-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css" >
<link rel="stylesheet" href="css/bootstrap.css" >
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/login.css"/>
</head>

<!--
<div class="text-center">
	 Button HTML (to Trigger Modal) 
	<a href="#myModal" class="trigger-btn" data-toggle="modal">Click to Open Login Modal</a>
</div>
-->

 
<body>
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">				
				<h4 class="modal-title">Sign In For Users</h4>
                <!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
			</div>
			<div class="modal-body">
				<form action="/DBMS/LoginController" method="post">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input id="name" type="text" class="form-control" name="username" placeholder="Username" required="required">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input id="pass" type="password" class="form-control" name="password" placeholder="Password" required="required">
						</div>
					</div>
					<div>
					<p style="color:red">${errormessage}</p>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block btn-lg">Sign In</button>
					</div>
					<!--  <p class="hint-text"><a href="#">Forgot Password?</a></p>-->
				</form>
			</div>
			<div class="modal-footer">Don't have an account? <a href="SignUp.jsp">Create one for Voters</a></div>
			
			<div class="modal-footer">Don't have an account? <a href="candidateSignUp.jsp">Create one for Candidate</a></div>
		</div>
	</div>
     
</body>
</html>                            