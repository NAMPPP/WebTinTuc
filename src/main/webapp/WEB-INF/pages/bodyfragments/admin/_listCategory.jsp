<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>

<div class="content-wrapper" style="min-height: 1604.8px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Category</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Category</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">

		<!-- Default box -->
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">Category</h3>
				<div class="card-tools">
					<button type="button" class="btn btn-tool"
						data-card-widget="collapse" title="Collapse">
						<i class="fas fa-minus"></i>
					</button>
					<button type="button" class="btn btn-tool"
						data-card-widget="remove" title="Remove">
						<i class="fas fa-times"></i>
					</button>
				</div>
			</div>
			<div class="card-body p-0">
				<table class="table table-striped projects">
					<thead>
						<tr>
							<th style="width: 1%">ID</th>
							<th style="width: 25%">CODE</th>
							<th style="width: 15%">NAME</th>
							<th style="width: 20%"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="category" items="${category}" varStatus="status">
							<tr>
								<td>${category.id}</td>
								<td><a> ${category.code} </a></td>
								<td><a> ${category.name} </a></td>
								<td class="project-actions text-right">
									<a class="btn btn-info btn-sm" href="#"> <i
										class="fas fa-pencil-alt"> </i> Edit
								</a> <a class="btn btn-danger btn-sm" href="#"> <i
										class="fas fa-trash"> </i> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->

	</section>
	<!-- /.content -->
</div>