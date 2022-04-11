<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/basefragments/taglib.jsp"%>

<div class="content-wrapper" style="min-height: 1604.8px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>News</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">News</li>
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
				<h3 class="card-title">News</h3>
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
							<th style="width: 20%">UserName</th>
							<th style="width: 20%">Password</th>
							<th style="width: 30%">Fullname</th>
							<th style="width: 1%">Status</th>
							<th style="width: 5%">Roleid</th>
							<th style="width: 8%" class="text-center">Status</th>
							<th style="width: 20%"></th>
						</tr>
					</thead>
					<%-- <tbody>
						<c:forEach var="news" items="${news}" varStatus="status">
							<tr>
								<td>${news.id}</td>
								<td><a> ${news.title} </a> <br> <small>
										Created ${news.createdDate}</small> <br> <small>By
										${news.createdBy} </small></td>
								<td>
									<ul class="text-center">
										<img class="profile-user-img img-fluid img-circle"
											src="<c:url value="${news.thumbnail}"/>" alt="">
									</ul>
								</td>
								<td><a> ${news.categoryid} </a></td>
								<td class="project-state"><span class="badge badge-success">Success</span></td>
								<td class="project-actions text-right"><a
									class="btn btn-primary btn-sm" href="#"> <i
										class="fas fa-folder"> </i> View
								</a> <a class="btn btn-info btn-sm" href="#"> <i
										class="fas fa-pencil-alt"> </i> Edit
								</a> <a class="btn btn-danger btn-sm" href="#"> <i
										class="fas fa-trash"> </i> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody> --%>
				</table>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->

	</section>
	<!-- /.content -->
</div>