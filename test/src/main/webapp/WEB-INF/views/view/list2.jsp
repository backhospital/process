<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 	
<!DOCTYPE html>
<html lang="en">
<head>
<style>
	section#content ul li { display:inline-block; margin:50px; }
	section#content div.data1 img { width:350px; height:290px; }
	section#content div.data3 { padding:10px 0; text-align:center; }
	section#content div.data3 a { color:#000; }
	
	section#content div.data1 img { width:350px; height:290px; }
	section#content div.data3 { padding:10px 0; text-align:center; }
	section#content div.data3 a { color:#000; }
</style>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>테스트 시안용 페이지 입니다.</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/a/assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/a/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/a/assets/css/templatemo.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/a/assets/css/custom.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/a/css/bootstrap.min.css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/a/css/styles.css" />
<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/a/assets/css/fontawesome.min.css">
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#!">테스트 페이지</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.html">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">문의</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						href="index.html" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">상품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">All Products</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="list1.html">가방</a></li>
							<li><a class="dropdown-item" href="list1.html">시계</a></li>
						</ul></li>
				</ul>
				<form class="d-flex">
					<button class="btn btn-outline-secondary" type="submit">
						<i class="bi-cart-fill me-1"></i> Cart <span
							class="badge bg-dark text-white ms-1 rounded-pill">0</span>
					</button>
				</form>
			</div>
		</div>
	</nav>
	<!-- Header-->
	<header class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">Shop in style</h1>
				<p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
			</div>
		</div>
	</header>
	<!-- Section-->
	<section id="container">
		<div id="container_box">
		
			<section id="content">
				
				<ul>
					<c:forEach items="${list2}" var="list2">
					<li>
						<div class="data1">
 						<img src="${pageContext.request.contextPath } /resources/imgs/gucci_a/${list2.data1}">
						</div>	
						<div class="data3" style="text-align:bottom;"> ${list2.data3} </div>
						<div class="d-flex justify-content-center small text-warning mb-2">
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
						</div>
<!-- 					일정글자수가 길어지면 끊어지는 코드삽입 필요 정보를 구해봐야 함.. -->
						<div class="data2" style="text-align:center;">${list2.data2}</div>
						<div class="text-center">
						<br>
							<input class="btn btn-outline-dark mt-auto" type="button" value="공개 승인 대기" onclick="return change(this);" />
						</div>
					</li>
					</c:forEach>					
				</ul>

			</section>
			
		</div>
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<!-- JS sector -->
	<script>
	function change(name) {
		if (name.value === "공개 승인 대기")
			name.value = "담보 대출 대상";
		else
			name.value = "공개 승인 대기";
	}	
	</script>

</body>
</html>