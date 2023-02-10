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
      <%@ include file="../component/navbar.jsp" %>

	  <main>
        <div class="container mt-5 mb-5">
          <form action="" method="post" id="form" onsubmit="return changePassword()">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column form-wrapper">
                  <div class="heading">
                    <h2 class="text-primary"  align="center">Change Password</h2>
                  </div>

                  <!-- Old Password -->
                  <div class="form-group">
                    <label for="password">Old Password</label>
                    <input type="password" name="password" placeholder=" Input Old Password" class="form-control" id="password" />
                  </div>
                  <p class="error errorPassword">Old Password is required</p>

                  <!-- New Password -->
                  <div class="form-group">
                    <label for="password">New Password</label>
                    <input type="password" name="password" placeholder="Input New Password" class="form-control" id="password" />
                  </div>
                  <p class="error errorNewPassword">New Password is required</p>

                  <button type="submit" class="btn btn-primary mt-4">Change Password</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </main>

      <%@ include file="../component/footer.jsp" %>
   	</div>
</body>
</html>