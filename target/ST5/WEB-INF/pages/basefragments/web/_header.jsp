<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>

<header class="tech-header header">
	<div class="container-fluid">
		<nav
			class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="/ST5"><img
				src="<c:url value="/tech/images/version/tech-logo.png" />" alt=""></a>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link"
						href="/ST5">Home</a></li>
					<li
						class="nav-item dropdown has-submenu menu-large hidden-md-down hidden-sm-down hidden-xs-down">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown01"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</a>
						<ul class="dropdown-menu megamenu" aria-labelledby="dropdown01">
							<li>
								<div class="container">
										<div class="mega-menu-content clearfix">
										<c:forEach var="cate" items="${category}" varStatus="status">
											<div class="tab">
												<a href="/ST5/categoryPage/${cate.id}/" title="${cate.name}"
													class="tablinks active">${cate.name}</a>
											</div>
										</c:forEach>
										</div>
									
									<!-- end mega-menu-content -->
								</div>
							</li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="tech-category-02.html">Videos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="tech-category-03.html">Reviews</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/ST5/contactusPage/">Contact Us</a></li>
				</ul>
				<ul class="navbar-nav mr-2">
					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fa fa-rss"></i></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fa fa-android"></i></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fa fa-apple"></i></a></li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- end container-fluid -->
</header>



