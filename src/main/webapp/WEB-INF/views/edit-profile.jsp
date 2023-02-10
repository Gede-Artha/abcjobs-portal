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
	<%@ include file="../component/navbar.jsp"%>
	<div class="container bootstrap snippets bootdey"
		style="margin-top: 40px">
		<h1 class="text-primary">Edit Profile</h1>
		<hr>
		<div class="row">
			<!-- left column -->
			<div class="col-md-3">
				<div class="text-center">
					<img src="https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/bali-nusa-tenggara/bali/bali/Image1.jpg"
						class="avatar  img-thumbnail">
					<h6>Upload a different photo...</h6>

					<input type="file" class="form-control">
				</div>
			</div>

			<!-- edit form column -->
			<div class="col-md-9 personal-info">
				<div class="alert alert-info alert-dismissable">
					<a class="panel-close close" data-dismiss="alert">×</a> <i
						class="fa fa-coffee"></i> This is an <strong>.alert</strong>. please fill the profile data corectly if you want to change.
				</div>
				<main>
					<div class="container mt-5 mb-5">
						<form:form action="save-edit" method="post"
							modelAttribute="profile" id="form"
							onsubmit="return checkValidation()">
							<div class="row justify-content-center">
								<div class="col-lg-5 col-md-8">
									<div class="d-flex flex-column regis-wrapper">
										<div class="heading">
											<h2 class="text-primary" align="center">Change data</h2>
										</div>

										<!-- id -->
										<div class="form-group">
											<form:hidden path="id_profile" class="form-control" />
										</div>

										<!-- First Name -->
										<div class="form-group">
											<label for="first_name">First Name</label>
											<form:input path="first_name" type="text" name="first_name"
												class="form-control" id="fname" />
										</div>
										<p class="error errorFname">First Name is required</p>

										<!-- Last Name -->
										<div class="form-group">
											<label for="last_name">Last Name</label>
											<form:input path="last_name" type="text" name="last_name"
												class="form-control" id="lname" />
										</div>
										<p class="error errorLname">Last Name is required</p>

										<!-- Country -->
										<div class="form-group">
											<label for="country">Country</label>
											<form:input path="country" type="text" name="country"
												class="form-control" id="country" />
										</div>
										<p class="error errorCountry">Country is required</p>

										<!-- City -->
										<div class="form-group">
											<label for="city">City</label>
											<form:input path="city" type="text" name="city"
												class="form-control" id="city" />
										</div>
										<p class="error errorCity">City is required</p>

										<button type="submit" class="btn btn-primary mt-4">Edit
											Profile</button>
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</main>


			</div>

		</div>

	</div>
	<%@ include file="../component/footer.jsp"%>
	<hr>
</body>
</html>