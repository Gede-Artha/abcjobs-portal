<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<header>
	<nav
		class="navbar navbar-expand-lg navbar-dark bg-primary shadow py-3 px-5 mb-4">
		<div class="container-fluid">
			<a class="navbar-brand" class="font-weight-bold" href="#">ABC
				Jobs</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<c:if test="${profile != null}">
						<li class="nav-item"><a class="nav-link" href="homepage">Homepage</a>
						</li>
					</c:if>

					<c:if test="${profile == null}">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="<%=request.getContextPath()%>">Home</a></li>
					</c:if>
					<c:if test="${profile != null}">
						<li class="nav-item"><a class="nav-link" href="user-profile">Profile</a>
						</li>
					</c:if>
					<c:if test="${profile != null}">
						<section id="search-users" style="margin-left:20px">
							<div class="container d-flex flex-column">
								<form method="get" action="search">
									<input type="text" name="keyword" /> <input type="submit"
										value="Search" />
								</form>
							</div>
						</section>
					</c:if>
				</ul>
				<div>
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<c:if test="${profile == null}">

							<div class="nav-button d-flex flex-column flex-lg-row">
								<a href="login"
									class="btn btn-success me-0 me-lg-3 mb-3 mb-lg-0">Login</a> <a
									href="register" class="btn btn-success mb-3 mb-lg-0">Register</a>
							</div>
						</c:if>
					</ul>

					<c:if test="${profile != null}">
						<div class="nav-button d-flex flex-column flex-lg-row">
							<a href="logout"
								class="btn btn-success me-0 me-lg-3 mb-3 mb-lg-0">Logout</a>
						</div>
					</c:if>


				</div>
			</div>
		</div>
	</nav>
</header>














