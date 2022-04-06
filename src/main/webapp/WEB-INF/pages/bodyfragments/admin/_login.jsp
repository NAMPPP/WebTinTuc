<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE | Log in</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css" href="<c:url value="/tech/css/bootstrap.css"/>"/>
<link rel="stylesheet"
	href="<c:url value="/Admin/plugins/fontawesome-free/css/all.min.css" />">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="<c:url value="/Admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css" />">
<!-- Theme style -->
<link rel="stylesheet" 
	href="<c:url value="/Admin/dist/css/adminlte.min.css" />">
</head>

<body class="hold-transition login-page">
	<form:form name="submitForm" method="POST">
		<div align="center">
			<table>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="userName" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
			<div style="color: red">${error}</div>

		</div>
	</form:form>
	<div class="login-box">
		<div class="login-logo">
			<a href="../../index2.html"><b>Admin</b>LTE</a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Sign in to start your session</p>

				<form action="../../index3.html" method="post">
					<div class="input-group mb-3">
						<input type="email" class="form-control" placeholder="Email">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="Password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input type="checkbox" id="remember"> <label
									for="remember"> Remember Me </label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">Sign
								In</button>
						</div>
						<!-- /.col -->
					</div>
				</form>

				<div class="social-auth-links text-center mb-3">
					<p>- OR -</p>
					<a href="#" class="btn btn-block btn-primary"> <i
						class="fab fa-facebook mr-2"></i> Sign in using Facebook
					</a> <a href="#" class="btn btn-block btn-danger"> <i
						class="fab fa-google-plus mr-2"></i> Sign in using Google+
					</a>
				</div>
				<!-- /.social-auth-links -->

				<p class="mb-1">
					<a href="forgot-password.html">I forgot my password</a>
				</p>
				<p class="mb-0">
					<a href="register.html" class="text-center">Register a new
						membership</a>
				</p>
			</div>
			<!-- /.login-card-body -->
		</div>
	</div>

	<!-- jQuery -->
	<script
		src="<c:url value="/Admin/plugins/jquery/jquery.min.js"/>"></script>
	<!-- Bootstrap 4 -->
	<script
		src="<c:url value="/Admin/plugins/plugins/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/Admin/dist/js/adminlte.min.js"/>"></script>


</body>
</html>