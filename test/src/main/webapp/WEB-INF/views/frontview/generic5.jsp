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
							<h1>투자사이트 등록하기</h1>
							<span class="image main"><img src="${pageContext.request.contextPath}/resources/b/images/pic13.jpg" alt="" /></span>
							<p>메이펀딩 투자사이트에 나의 명품을 등록하여 명품가치에 준한 투자를 진행할 수 있는 서비스를 제공한다. </p>
							<p>메이펀딩은 P2P 기반의 투자사이트로 캐시로드 명품거래소와 연계 운영되는 시스템이다. 캐시로드는 전국 10여개 명품거래소를 보유하고 있는 명품거래 전문의 대부업 기관으로 다양한 명품을 직거래할 수 있는 서비스를 제공한다.</p>
							<p>투자는 명품의 단보물을 전제로 단기 투자인 3개월 내외 이루어지며, 단보물(명품)을 등록한 사용자가 3개월 내에 발행하는 이자에 대하여 투자지분에 따른 이윤을 수령하는 형태로 이루어진다.</p>
							<p>단보물(명품)에 대한 가치는 메이펀딩에 소속된 감정 전문가에 의해 감정되어 그 가치가 결정되며, 결정된 가치 기준에 준해 투자가 이루어진다.</p>
							<p>이와 같은 투자 방식은 담보물을 전제로 전세계 단보물(명품) 시세를 기준으로 이루어지는 투자 개념으로 투자 손실 발생시 타사 펀딩에 비해 투자 손실을 최소화 할 수 있는 장점을 가진다.</p>
							<p>상세 문의는 메이펀딩 사이트를 참조하세요.</p>
						</div>
					</div>

					<div id="main">
						<div class="inner"> 
							<section class="tiles">
								<article class="style2">
									<span class="image">
										<img src="${pageContext.request.contextPath}/resources/b/images/pic003.jpg" alt="" />
									</span>
									<a href="/frontview/generic3">
										<h2>등록 Web 사이트 이동</h2>
										<div class="content">
											<p>(보안절차에 의거 앱프로그램의 접근불가)</p>
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
								<h2>등록 및 투자 문의</h2>
								<form method="post" action="#">
									<div class="fields">
										<div class="field half">
											<input type="text" name="name" id="name" placeholder="Name" />
										</div>
										<div class="field half">
											<input type="email" name="email" id="email" placeholder="Email" />
										</div>
										<div class="field">
											<textarea name="message" id="message" placeholder="Message"></textarea>
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="문의 요청" class="primary" /></li>
									</ul>
								</form>
							</section>
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