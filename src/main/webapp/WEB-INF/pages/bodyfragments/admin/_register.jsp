<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Registration Page</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/Admin/plugins/fontawesome-free/css/all.min.css" />">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="<c:url value="/Admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css" />">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value="/Admin/dist/css/adminlte.min.css" />">
</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<a href="../../index2.html"><b>Admin</b>LTE</a>
		</div>

		<div class="card">
			<div class="card-body register-card-body">
				<p class="login-box-msg">Register a new membership</p>


				<form:form action="../registerPage/" modelAttribute="user"
					method="POST">
				
					<div class="input-group mb-3">
						<form:input type="email" class="form-control"
							placeholder="userName" path="userName" />
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<form:input type="password" class="form-control"
							placeholder="password" path="password" />
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<form:input type="text" class="form-control"
							placeholder="Full name" path="fullName" />
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<a>Gender: Male</a>
								<form:radiobutton path="roleid" value="1" />
								Female
								<form:radiobutton path="roleid" value="2" />
							</div>
						</div>
						<form:input type="hidden" class="form-control"
							 path="status" value="1" />
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</div>
					</div>
				</form:form>

				<div class="social-auth-links text-center">
					<p>- OR -</p>
					<a href="#" class="btn btn-block btn-primary"> <i
						class="fab fa-facebook mr-2"></i> Sign up using Facebook
					</a> <a href="#" class="btn btn-block btn-danger"> <i
						class="fab fa-google-plus mr-2"></i> Sign up using Google+
					</a>
				</div>

				<a href="login.html" class="text-center">I already have a
					membership</a>
			</div>
			<!-- /.form-box -->
		</div>
		<!-- /.card -->
	</div>
	<!-- /.register-box -->

	<!-- jQuery -->
	<script src="<c:url value="/Admin/plugins/jquery/jquery.min.js"/>"></script>
	<!-- Bootstrap 4 -->
	<script
		src="<c:url value="/Admin/plugins/plugins/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/Admin/dist/js/adminlte.min.js"/>"></script>
</body>
</html>