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
	<section id="registration-confirmation" class="mt-5">
		<div class="confirmation d-flex flex-column text-center">
			<div class="respons">
				<div class="box-respons">
					<h2 class="text-primary">Thank You!</h2>
					<p class="text-secondary">
						your succesfully register to abcjobs portal community. <span
							class="text-primary"><%= request.getAttribute("email") %></span>
						Thanks!
					</p>
					<a href="login">
						<button class="btn btn-success mt-3">OK</button>
					</a>
				</div>
			</div>
		</div>
		</div>
	</section>
</body>
</html>