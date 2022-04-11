<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>

<div class="content-wrapper" style="min-height: 1345.6px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Detail New</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Detail New</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="card card-primary">
				<div class="card-header">
					<h3 class="card-title">Quick Example</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form>
					<div class="card-body">
						<div class="form-group">
							<label for="id">ID</label> <label
								type="label" class="form-control" id="id">${news.id }</label>
						</div>
						<div class="form-group">
							<label for="title">Title</label> <input
								type="text" class="form-control" id="title"
								value="${news.title }">
						</div>
						<div class="form-group">
							<label for="shortDescription">ShortDescription</label> <input
								type="text" class="form-control" id="shortDescription"
								value="${news.shortDescription }">
						</div>
						<div class="form-group">
							<label for="thumbNail">ThumbNail</label>
							<div class="input-group">
								<div class="custom-file">
									<input type="file" class="custom-file-input"
										id="exampleInputFile"> <label
										class="custom-file-label" for="exampleInputFile"
										>${news.thumbnail }</label>
								</div>
								<div class="input-group-append">
									<span class="input-group-text">Upload</span>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="card card-outline card-info">
								<div class="card-header">
									<h3 class="card-title">Summernote</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<textarea id="summernote" style="display: none;">
										${news.content }
              						</textarea>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="cars">Category</label> <select name="cars" id="cars">
								<c:forEach var="category" items="${category}" varStatus="status">
									
										<option value="${category.id}">${category.name}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="title">CreatedDate</label> <label
								type="" class="form-control" id="createdDate"
								>${news.createdDate }</label>
						</div>
						<div class="form-group">
							<label for="title">CreatedBy</label> <label
								type="" class="form-control" id="createdBy"
								>${news.createdBy }</label>
						</div>
						<!-- /.card-body -->

						<div class="card-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
				</form>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>