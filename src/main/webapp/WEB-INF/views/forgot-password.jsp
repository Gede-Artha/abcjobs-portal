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


	<div class="login-form" style="margin-top: 8rem;">
		<form action="forgot-password-confirmation" method="post" id="form"
			onsubmit="return checkValidation()" class="d-flex flex-column">
			<h2 class="text-center text-primary">Forget Password</h2>

			<div class="form-group">
				<input id="email" class="form-control" type="text"
					placeholder="Enter your email" />
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">Get
					new password</button>
			</div>
		</form>
		<p class="text-center text-danger">
			<a href="#">you will get soon new password that</a>
		</p>
		<p class="text-center text-danger">
			<a href="#">sent n youre email</a>
		</p>
	</div>

	<%@ include file="../component/footer.jsp"%>
	<script src="js/forgot-password.js"></script>
</body>
</html>