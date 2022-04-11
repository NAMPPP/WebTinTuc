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
				<form:form action="../updateNew/" modelAttribute="updateNews" method="POST">
					<div class="card-body">
						<div class="form-group">
							<label for="id">ID</label> <label
								type="label" class="form-control" id="id">${news.id}</label>
						</div>
						<div class="form-group">
							<label for="title">Title</label> 
							<form:input type="text" class="form-control" 
							value="${news.title}" path="title"/>
						</div>
						<div class="form-group">
							<label for="shortDescription">ShortDescription</label>
							<form:input type="text" class="form-control"
								value="${news.shortDescription}"  path="shortDescription"/>
						</div>
						<div class="form-group">
							<label for="thumbNail">ThumbNail</label>
							<form:input type="text" class="form-control"
								 value="${news.thumbnail}" path="thumbnail"/>
						</div>
						<div class="col-md-12">
							<div class="card card-outline card-info">
								<div class="card-header">
									<h3 class="card-title">Content</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<form:textarea  value="" id="summernote" style="display: none;" path="content" />${news.content}
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="cars">Category</label>
							<form:select path="categoryid">
								<c:forEach var="category" items="${category}" varStatus="status">
										<form:option value="${category.id}" label="${category.name}"/>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group">
							<label for="title">CreatedDate</label>
							<form:label class="form-control" id="createdDate" path="createdDate">${news.createdDate}</form:label>
						</div>
						<div class="form-group">
							<label for="title">CreatedBy</label>
							
							<form:label class="form-control" id="createdBy" path="createdBy">${news.createdBy}</form:label>
						</div>
						<!-- /.card-body -->

						<div class="card-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
				</form:form>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>