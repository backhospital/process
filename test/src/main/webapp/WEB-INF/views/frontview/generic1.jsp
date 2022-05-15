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
							<h1>��ǰ �־�</h1>
							<span class="image main"><img src="${pageContext.request.contextPath}/resources/b/images/pic13.jpg" alt="" /></span>
							<p>�¶��� �־� ���θ� ����3�������� 2021�� ����� ������ ��ȣ�ϴ� �ؿ� ��ǰ �귣�带 �м��� ��� �̰��� ��Ÿ���ٰ� 30�� ������.</p>
							<p>����3�����Ŀ��� ����� �귣�� �� ����Ʈ5�� �žƺ��� 1������ Ƽ�Ĵ�, �ظ� ������, ��쿡, ��Ŭ���� ����, �Ұ����� ������ ����ƴ�.</p>
							<p>1�� ���ͷκ꽺Ű</p>
							<p>2�� TIFFANY&CO.</p>
							<p>3�� ��Ŭ����&����</p>
							<p>4�� ����</p>
							<p>5�� ���̵�</p>
							<p>6�� ��������</p>
							<p>7�� �����</p>
							<p>8�� ��쿡</p> 
						</div>
					</div>
					<div style="text-align:center;">
					<iframe id="iframe_insert" name="frame" src="../other/somereview.html" height="1000px"></iframe>
					</div>
				<!-- Footer -->
					<footer id="footer">
						<div class="inner"> 
							<section>
								<h2>�ȷο�(���� ����)</h2>
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
				if (name.value === "���� ���� ���")
					name.value = "�㺸 ���� ���";
				else
					name.value = "���� ���� ���";
			}	
			</script>

	</body>
</html>