<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 	    
<!DOCTYPE HTML>
<html>
	<head>
		<title>SPACECORE</title>
		<style>
			section#content ul li { display:inline-block; margin-left:30px; margin-bottom:50px; }
			section#content div.data1 img { width:400px; height:350px; }
			section#content div.data3 { padding:10px ; text-align:center; }
			section#content div.data3 a { color:#000; }
			
			section#content div.data1 img { width:400px; height:350px; }
			section#content div.data3 { padding:10px 0; text-align:center; }
			section#content div.data3 a { color:#000; }
		</style>
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
							<h1>명품 주얼리</h1>
							<span class="image main"><img src="${pageContext.request.contextPath}/resources/b/images/pic13.jpg" alt="" /></span>
							<p>온라인 주얼리 쇼핑몰 종로3가닷컴은 2021년 상담한 고객들이 선호하는 해외 명품 브랜드를 분석한 결과 이같이 나타났다고 30일 밝혔다.</p>
							<p>종로3가닷컴에서 상담한 브랜드 중 베스트5를 꼽아보면 1위부터 티파니, 해리 윈스턴, 까르띠에, 반클리프 아펠, 불가리로 순으로 집계됐다.</p>
							<p>1위 스와로브스키</p>
							<p>2위 TIFFANY&CO.</p>
							<p>3위 반클리프&아펠</p>
							<p>4위 구찌</p>
							<p>5위 로이드</p>
							<p>6위 스톤헨지</p>
							<p>7위 골드팡</p>
							<p>8위 까르띠에</p> 
						</div>
					</div>
					<div style="text-align:center;">
					<iframe id="iframe_insert" name="frame" src="../other/somereview.html" height="1000px"></iframe>
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