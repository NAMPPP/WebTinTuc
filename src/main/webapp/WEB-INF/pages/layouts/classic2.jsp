<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 </title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="<c:url value="/Admin/plugins/fontawesome-free/css/all.min.css"/>">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet" 
	href="<c:url value="/Admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css"/>">
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value="/Admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css" />">
<!-- JQVMap -->
<link rel="stylesheet" href="<c:url value="/Admin/plugins/jqvmap/jqvmap.min.css" />">
<!-- Theme style -->
<link rel="stylesheet" href="<c:url value="/Admin/dist/css/adminlte.min.css" />">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<c:url value="/Admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="<c:url value="/Admin/plugins/daterangepicker/daterangepicker.css" />plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet" href="<c:url value="/Admin/plugins/summernote/summernote-bs4.min.css" />">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake" src="<c:url value="/Admin/dist/img/AdminLTELogo.png" />"
				alt="AdminLTELogo" height="60" width="60">
		</div>

		<!-- Navbar -->
		<tiles:insertAttribute name="header" />
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<tiles:insertAttribute name="body" />
		<!-- /.content-wrapper -->
		<tiles:insertAttribute name="footer" />

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="<c:url value="/Admin/plugins/jquery/jquery.min.js" />"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="<c:url value="/Admin/plugins/jquery-ui/jquery-ui.min.js" />"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="<c:url value="/Admin/plugins/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<!-- ChartJS -->
	<script src="<c:url value="/Admin/plugins/chart.js/Chart.min.js" />"></script>
	<!-- Sparkline -->
	<script src="<c:url value="/Admin/plugins/sparklines/sparkline.js" />"></script>
	<!-- JQVMap -->
	<script src="<c:url value="/Admin/plugins/jqvmap/jquery.vmap.min.js" />"></script>
	<script src="<c:url value="/Admin/plugins/jqvmap/maps/jquery.vmap.usa.js" />"></script>
	<!-- jQuery Knob Chart -->
	<script src="<c:url value="/Admin/plugins/jquery-knob/jquery.knob.min.js"/>"></script>
	<!-- daterangepicker -->
	<script src="<c:url value="/Admin/plugins/moment/moment.min.js"/>"></script>
	<script src="<c:url value="/Admin/plugins/daterangepicker/daterangepicker.js"/>"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="<c:url value="/Admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"/>"></script>
	<!-- Summernote -->
	<script src="<c:url value="/Admin/plugins/summernote/summernote-bs4.min.js"/>"></script>
	<!-- overlayScrollbars -->
	<script
		src="<c:url value="/Admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/Admin/dist/js/adminlte.js"/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/Admin/dist/js/demo.js"/>"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="<c:url value="/Admin/dist/js/pages/dashboard.js"/>"></script>
	<script>
		$(function() {
			// Summernote
			$('#summernote').summernote()
		})
	</script>
</body>
</html>
