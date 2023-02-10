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
<%@ include file="../component/navbar.jsp" %>
	<div class="root">
  
      <main >
        <section id="login" >
          <div class="container mt-5" >
            <div class="d-flex justify-content-center" >
              <div class="login-form" >
                <h2  class="text-primary"  align="center" >Sign in</h2>
                
                <!-- Login Form -->
                <form:form action="doLogin" method="post" modelAttribute="userLogin" class="mt-4 d-flex flex-column" id="form">
                  <div class="form-group">
                    <form:input path="email" id="loginEmail" class="form-control mb-3" style="${error}" type="text" placeholder="Email" />
                  </div>
                  
                  
                  <div class="form-group">
                    <form:input path="password" id="loginPassword" class="form-control" style="${error}" type="password" placeholder="Password" />
                  </div>
                  <span style="color: #b02a37; margin-top: 6px">${message}</span>
                  
                  
                  <div class="forgot-password mt-3 mb-3 text-end">
                    <a class="text-decoration-none" href="forgot-password">Forgot Password?</a>
                  </div>
                  <button class="btn btn-primary" type="submit">Login</button>
                </form:form>
                
                <p class="p-0 mt-3">
                  Still Dont have an account?
                  <a class="text-primary text-decoration-none" href="register"> Register </a>
                </p>
              </div>
            </div>
          </div>
        </section>
      </main>
       <%@ include file="../component/footer.jsp" %>
   	</div>
</body>
</html>