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
							<h1>Generic Page</h1>
							<span class="image main"><img src="${pageContext.request.contextPath}/resources/b/images/pic13.jpg" alt="" /></span>
						</div>
					</div>
	<section id="container">

		<div id="container_box">
		<h2>신청목록보기</h2>
		<hr>
			<table>
				<thead>
					<tr>
						<th>신청번호</th>
						<th>브랜드명</th>
						<th>상품명</th>
						<th>요청가격</th>
						<th>진행상태</th>	
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${offerlist}" var="offerlist">
					<tr>
						<td><a href ="/admin/view?idx=${offerlist.idx}">${offerlist.idx}</a></td>
						<td>${offerlist.productid}</td>
						<td>${offerlist.data3}</td>
						<td>${offerlist.data2}</td>
						<td>
							<c:choose>
							<c:when test="${offerlist.verify == 0}"> 심사중 </c:when>
							<c:when test="${offerlist.verify == 1}"> 승인완료 </c:when>
							<c:when test="${offerlist.verify == 2}"> 거절완료 </c:when>
							</c:choose>
						<td>
					</tr>			
					</c:forEach>
				</tbody>
			</table>
		</div>
	</section>		
					<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<h2>Get in touch</h2>
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
										<li><input type="submit" value="Send" class="primary" /></li>
									</ul>
								</form>
							</section>
							<section>
								<h2>Follow</h2>
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
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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