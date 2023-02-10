<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../component/header.jsp"%>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="../component/navbar.jsp"%>

	<div class="container mb-4" style="height: 500px">
		<p class = "display-5">${msgsearchResult}</p>
		<table class="table">
			<tr>
				<th>Name</th>
				<th>Country</th>
				<th>City</th>
				<th>Action</th>
			</tr>
			<c:forEach var="tb_user_profile" items="${result}">
				<tr>
					<td>${tb_user_profile.first_name} ${tb_user_profile.last_name}</td>
					<td>${tb_user_profile.country}</td>
					<td>${tb_user_profile.city}</td>
					<td><a href="seeprofile/${tb_user_profile.id_profile}">See profile</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<%@ include file="../component/footer.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>