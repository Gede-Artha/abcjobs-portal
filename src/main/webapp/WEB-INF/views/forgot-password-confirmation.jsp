<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../component/header.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
</style>
<link>
</head>
<body>
	<div class="root">
		<%@ include file="../component/navbar.jsp"%>

		<section id="registration-confirmation" class="mt-5">
			<div class="confirmation d-flex flex-column text-center">
				<div class="respons">
					<div class="box-respons">
						<h2 class="text-primary">Thank You!</h2>
						<p>your youre request for reset password will sending to youre email.
							Thanks!</p>
						<a href="login">
							<button class="btn btn-success mt-3">OK</button>
						</a>
					</div>
				</div>
			</div>
	</section>
	</div>
</body>
</html>