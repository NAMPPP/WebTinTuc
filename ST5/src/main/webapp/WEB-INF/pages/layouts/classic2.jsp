<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Site Metas -->
<title><tiles:getAsString name="title" /></title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon"
	href="<c:url value="/tech/images/favicon.ico" />" type="image/x-icon" />
<link rel="apple-touch-icon"
	href="<c:url value="/tech/images/apple-touch-icon.png" />">

<!-- Design fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="<c:url value="/tech/css/bootstrap.css" />" rel="stylesheet">

<!-- FontAwesome Icons core CSS -->
<link href="<c:url value="/tech/css/font-awesome.min.css"/> "
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/tech/style.css"/>" rel="stylesheet">

<!-- Responsive styles for this template -->
<link href="<c:url value="/tech/css/responsive.css"/>" rel="stylesheet">

<!-- Colors for this template -->
<link href="<c:url value="/tech/css/colors.css"/>" rel="stylesheet">

<!-- Version Tech CSS for this template -->
<link href="<c:url value="/tech/css/version/tech.css"/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<script src="../jquery.twbsPagination.js" type="text/javascript"></script>


</head>
<body>

	<div id="wrapper">
		<!-- header -->
		<tiles:insertAttribute name="header" />
		<!-- header -->

		<!--  section -->
		<tiles:insertAttribute name="body" />
		<!--  section -->

		<!--  footer -->
		<tiles:insertAttribute name="footer" />
		<!--  footer -->

		<div class="dmtop">Scroll to Top</div>

	</div>
	<!-- end wrapper -->

	<!-- Core JavaScript
    ================================================== -->
	<script src="<c:url value="/tech/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/tech/js/tether.min.js"/>"></script>
	<script src="<c:url value="/tech/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/tech/js/custom.js"/>"></script>
	<script src="<c:url value="/tech/jquery.twbsPagination.js"/>"></script>

</body>
</html>
