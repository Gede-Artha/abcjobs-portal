<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../component/header.jsp"%>
<style type="text/css">
  <%@ include file="../resources/css/style.css" %>
</style>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	<div class="root">
		<%@ include file="../component/navbar.jsp"%>

	<%-- <c:forEach var="user" items="${user}"> --%>
	<div class="container py-3" style="height: 600px">
		<div class="row">
			<div class="col-lg-4">
				<div class="card mb-4 bg-crm">
					<div class="card-body text-center">
						<img
							src="https://www.pinclipart.com/picdir/big/181-1814767_person-svg-png-icon-free-download-profile-icon.png"
							alt="avatar" class="rounded-circle img-fluid"
							style="width: 150px;">
						<h5 class="my-3">${tb_user_profile.first_name} ${tb_user_profile.last_ame}</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="card mb-4">
					<div class="card-body bg-crm">
						<hr>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Location</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0">${tb_user_profile.city}, ${tb_user_profile.country}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%-- 	</c:forEach> --%>
	
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>