<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>


<div class="page-title lb single-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
				<h2>
					<i class="fa fa-star bg-orange"></i> ${categetid.name}
				</h2>
			</div>
			<!-- end col -->
			<div
				class="col-lg-4 col-md-4 col-sm-12 hidden-xs-down hidden-sm-down">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item"><a href="#">Blog</a></li>
					<li class="breadcrumb-item active">Reviews</li>
				</ol>
			</div>
			<!-- end col -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</div>
<!-- end page-title -->

<section class="section">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
				<div class="page-wrapper">
					<div class="blog-list clearfix">
						<!-- load news -->
						<c:forEach var="dept" items="${news}" varStatus="status">
							<div class="blog-box row">
								<div class="col-md-4">
									<div class="post-media">
										<a href="/ST5/${dept.id}/" title=""> <img
											src="<c:url value="${dept.thumbnail}"/>" alt=""
											class="img-fluid">
											<div class="hovereffect"></div>
										</a>
									</div>
									<!-- end media -->
								</div>
								<!-- end col -->

								<div class="blog-meta big-meta col-md-8">
									<h4>
										<a href="/ST5/${dept.id}/" title="">${dept.title}</a>
									</h4>
									<p>${dept.shortDescription}</p>
									<small class="firstsmall"><a class="bg-orange" href="#"
										title="">Gadgets</a></small> <small><a href="#" title="">${dept.createdDate}</a></small>
									<small><a href="#" title="">${dept.createdBy}</a></small> <small>
									</small>
								</div>
								<!-- end meta -->
							</div>
							<!-- end blog-box -->
							<hr class="invis">
						</c:forEach>
					</div>
					<!-- end blog-list -->
				</div>
				<!-- end page-wrapper -->

				<hr class="invis">

				<div class="row">
					<div class="col-md-12">
						<nav aria-label="Page navigation">
							<ul class="pagination justify-content-start">
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
			<!-- end col -->

			<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
					<div class="sidebar">
						<div class="widget">
							<div class="banner-spot clearfix">
								<!-- end banner-img -->
							</div>
							<!-- end banner -->
						</div>
						<!-- end widget -->

						<div class="widget">
							<h2 class="widget-title">Trend Videos</h2>
							<div class="trend-videos">
								<div class="blog-box">
									<div class="post-media">
										<a href="#" title=""> <img
											src="https://cdn.24h.com.vn/upload/2-2022/images/2022-04-20/cd_nivea_nha-1650402179-liverpool_manutd1.gif" alt="" class="img-fluid">
											<div class="hovereffect">
												<span class="videohover"></span>
											</div> <!-- end hover -->
										</a>
									</div>
									<!-- end media -->
									<div class="blog-meta">
										<h4>
											<a href="#" title="">Video bóng đá Liverpool - MU: Sức ép kinh hoàng, "tam tấu" chói sáng (Đá bù vòng 30 Ngoại hạng Anh)</a>
										</h4>
									</div>
									<!-- end meta -->
								</div>
								<!-- end blog-box -->

								<hr class="invis">

								<div class="blog-box">
									<div class="post-media">
										<a href="#" title=""> <img
											src="https://cdn.24h.com.vn/upload/2-2022/images/2022-04-19/1650373135-hagl_full.gif" alt="" class="img-fluid">
											<div class="hovereffect">
												<span class="videohover"></span>
											</div> <!-- end hover -->
										</a>
									</div>
									<!-- end media -->
									<div class="blog-meta">
										<h4>
											<a href="#" title="">Video bóng đá HAGL - Sydney FC: Tuyệt phẩm của Văn Thanh, chiến tích lịch sử (AFC Champions League)</a>
										</h4>
									</div>
									<!-- end meta -->
								</div>
								<!-- end blog-box -->

								<hr class="invis">

								<div class="blog-box">
									<div class="post-media">
										<a href="#" title=""> <img
											src="https://icdn.24h.com.vn/upload/2-2022/images/2022-04-18/image_dai_dien_gifdk-1650252819-509-width640height480.gif" alt="" class="img-fluid">
											<div class="hovereffect">
												<span class="videohover"></span>
											</div> <!-- end hover -->
										</a>
									</div>
									<!-- end media -->
									<div class="blog-meta">
										<h4>
											<a href="tech-single.html" title="">Nhân vật “số nhọ" nhất phim kiếm hiệp Kim Dung, tạo ra Cửu Âm Chân Kinh nhưng có cái kết bất ngờ</a>
										</h4>
									</div>
									<!-- end meta -->
								</div>
								<!-- end blog-box -->
							</div>
							<!-- end videos -->
						</div>
						<!-- end widget -->		
						<!-- end widget -->
						<div class="widget">
							<h2 class="widget-title">Recent Reviews</h2>
							<div class="blog-list-widget">
								<div class="list-group">
									<a href="tech-single.html"
										class="list-group-item list-group-item-action flex-column align-items-start">
										<div class="w-100 justify-content-between">
											<img src="upload/tech_blog_02.jpg" alt=""
												class="img-fluid float-left">
											<h5 class="mb-1">Banana-chip chocolate cake recipe..</h5>
											<span class="rating"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
											</span>
										</div>
									</a> <a href="tech-single.html"
										class="list-group-item list-group-item-action flex-column align-items-start">
										<div class="w-100 justify-content-between">
											<img src="upload/tech_blog_03.jpg" alt=""
												class="img-fluid float-left">
											<h5 class="mb-1">10 practical ways to choose organic..</h5>
											<span class="rating"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
											</span>
										</div>
									</a> <a href="tech-single.html"
										class="list-group-item list-group-item-action flex-column align-items-start">
										<div class="w-100 last-item justify-content-between">
											<img src="upload/tech_blog_07.jpg" alt=""
												class="img-fluid float-left">
											<h5 class="mb-1">We are making homemade ravioli..</h5>
											<span class="rating"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
											</span>
										</div>
									</a>
								</div>
							</div>
							<!-- end blog-list -->
						</div>
						<!-- end widget -->

						<div class="widget">
							<h2 class="widget-title">Follow Us</h2>

							<div class="row text-center">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
									<a href="#" class="social-button facebook-button"> <i
										class="fa fa-facebook"></i>
										<p>27k</p>
									</a>
								</div>

								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
									<a href="#" class="social-button twitter-button"> <i
										class="fa fa-twitter"></i>
										<p>98k</p>
									</a>
								</div>

								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
									<a href="#" class="social-button google-button"> <i
										class="fa fa-google-plus"></i>
										<p>17k</p>
									</a>
								</div>

								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
									<a href="#" class="social-button youtube-button"> <i
										class="fa fa-youtube"></i>
										<p>22k</p>
									</a>
								</div>
							</div>
						</div>
						<!-- end widget -->

						<div class="widget">
							<div class="banner-spot clearfix">
								<div class="banner-img">
									<img src="upload/banner_03.jpg" alt="" class="img-fluid">
								</div>
								<!-- end banner-img -->
							</div>
							<!-- end banner -->
						</div>
						<!-- end widget -->
					</div>
					<!-- end sidebar -->
				</div>
			<!-- end col -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>