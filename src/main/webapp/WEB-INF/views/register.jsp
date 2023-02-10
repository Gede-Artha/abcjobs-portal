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

		<main>
			<div class="container mt-5 mb-5">
				<form:form action="thank-you" method="post" id="form"
					modelAttribute="register" onsubmit="return checkValidation()">
					<div class="row justify-content-center">
						<div class="col-lg-5 col-md-8">
							<div class="d-flex flex-column regis-wrapper">
								<div align="center" class="heading">
									<h2 class="text-primary">Sign Up</h2>
								</div>

								<!-- Email -->
								<div class="form-group">
									<label for="email">Email</label>
									<form:input path="email" type="text" name="email"
										placeholder="Enter email" class="form-control" id="email" />
								</div>
								<p class="error errorEmail">Email is required</p>

								<!-- Password -->
								<div class="form-group">
									<label for="password">Password</label>
									<form:input path="password" type="password" name="password"
										placeholder="Enter password" class="form-control"
										id="password" />
								</div>
								<p class="error errorPassword">Password is required</p>

								<!-- First Name -->
								<div class="form-group">
									<label for="first_name">First Name</label>
									<form:input path="profile.first_name" type="text"
										name="first_name" placeholder="First name"
										class="form-control" id="fname" />
								</div>
								<p class="error errorFname">First Name is required</p>

								<!-- Last Name -->
								<div class="form-group">
									<label for="last_name">Last Name</label>
									<form:input path="profile.last_name" type="text"
										name="last_name" placeholder="Last name" class="form-control"
										id="lname" />
								</div>
								<p class="error errorLname">Last Name is required</p>

								<!-- Country -->
								<div class="form-group">
									<label for="country">Country</label>
									<form:input path="profile.country" type="text" name="country"
										placeholder="Country" class="form-control" id="country" />
								</div>
								<p class="error errorCountry">Country is required</p>

								<!-- City -->
								<div class="form-group">
									<label for="city">City</label>
									<form:input path="profile.city" type="text" name="city"
										placeholder="City" class="form-control" id="city" />
								</div>
								<p class="error errorCity">City is required</p>

								<button type="submit" class="btn btn-primary mt-4">Register</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</main>

		<%@ include file="../component/footer.jsp"%>
	</div>

	<script src="js/validator.js"></script>

</body>
</html>