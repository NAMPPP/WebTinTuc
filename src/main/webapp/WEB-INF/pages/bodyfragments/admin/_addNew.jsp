<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>

<div class="content-wrapper" style="min-height: 1345.6px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Add New</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Add New</li>
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
				<form:form action="../addNew/" modelAttribute="news" method="POST">
					<div class="card-body">
						<div class="form-group">
							<label for="id">ID</label> <label
								type="label" class="form-control" id="id">CANNOT IMPORT DATA</label>
						</div>
						<div class="form-group">
							<label for="title">Title</label> 
							<form:input type="text" class="form-control" 
							placeholder="Title" path="title"/>
						</div>
						<div class="form-group">
							<label for="shortDescription">ShortDescription</label>
							<form:input type="text" class="form-control"
								value="" placeholder="shortDescription" path="shortDescription"/>
						</div>
						<div class="form-group">
							<label for="thumbNail">ThumbNail</label>
							<form:input type="text" class="form-control"
								value="" placeholder="Please enter an image link" path="thumbnail"/>
						</div>
						<%-- <div class="form-group">
							<label for="thumbNail">ThumbNail</label>
							<div class="input-group">
								<div class="custom-file">
									<form:input type="file" class="custom-file-input"
										id="exampleInputFile" placeholder="thumbNail" path="thumbnail"/> <label
										class="custom-file-label" for="exampleInputFile"
										></label>
								</div>
								<div class="input-group-append">
									<span class="input-group-text">Upload</span>
								</div>
							</div>
						</div> --%>
						<div class="col-md-12">
							<div class="card card-outline card-info">
								<div class="card-header">
									<h3 class="card-title">Content</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<form:textarea id="summernote" style="display: none;" path="content"/>
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
							<form:input type="label" class="form-control"
								value="${datenow }" placeholder="${datenow }" path="createdDate"/>
							
						</div>
						<div class="form-group">
							<label for="title">CreatedBy</label>
							
							<form:input type="label" value="${AdminInfo.userName}" class="form-control" id="createdBy" path="createdBy"/>
						</div>
						<!-- /.card-body -->

						<div class="card-footer">
							<button type="submit" class="btn btn-primary" >Submit</button>
						</div>
				</form:form>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>