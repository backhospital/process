<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 	    
<!DOCTYPE HTML>
<html>
	<head>
		<title>SPACECORE</title>
		<meta charset="utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/b/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/b/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="/frontview/index" class="logo">
									<span class="symbol"><img src="${pageContext.request.contextPath}/resources/b/images/logo.svg" alt="" /></span><span class="title">SPACECORE</span>
								</a>

							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						<ul>
							<li><a href="/frontview/index">Home</a></li>
							<li><a href="/frontview/generic2">Luxury Search</a></li>
							<li><a href="/frontview/generic3">Comparison My Luxury</a></li>
							<li><a href="/frontview/generic6">Registered My Luxury</a></li>
							<li><a href="/frontview/index">Contact</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<h1>GUCCI 명품 가치 측정하기</h1>
							<span class="image main"><img src="${pageContext.request.contextPath}/resources/b/images/pic13.jpg" alt="" /></span>
							<p>본 앱은 시험운영 검증을 위해 GUCCI BAGS를 위해 제작된 앱입니다.</p> 
							<p>향후 데이터축적과 더불어 본 항에서 세부카테고리를 구성하여 다양한 상품을 즉시 가치 측정할 수 있도록 서비스를 제공하겠습니다.</p> 
						</div>
					</div>

					<div id="main">
						<div class="inner"> 
							<section class="tiles">
								<article class="style1">
									<span class="image">
										<img src="${pageContext.request.contextPath}/resources/b/images/pic003.jpg" alt="" />
									</span>
									<a href="/frontview/generic3">
										<h2>명품 가치조회 시작</h2>
										<div class="content">
											<p>나의 명품의 가치 측도를 확인하기 위해서 클릭해주세요.</p>
										</div>
									</a>
								</article>
							</section>
						</div>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner"> 
							<section>
								<h2>팔로워(관련 서비스)</h2>
								<ul class="icons">
									<li><a href="#" class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon brands style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon brands style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon solid style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon solid style2 fa-envelope"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
								<li>&copy; </li><li>Development company: <a href="">SPACECORE</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/b/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/b/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/b/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/b/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/b/assets/js/main.js"></script>
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