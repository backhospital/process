<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 	    
<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>��ǰ ��ġ ����</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/c/assets/css/main.css" />
		<script src="jquery-3.2.0.min.js"></script>    
	</head>
	
	<script  type="text/javascript"> 
		function callAndroidtests1(){      
		window.androidJs.callAndroid1("MOVE","VIEWCAMERA","null","null");//"A" : �Ϲ� �Կ�   
		}  
	</script> 
	<body class="homepage is-preload">
		<li style="list-style:none;"><a href="/frontview/index" class="button ">Ȩ���� �̵�</a></li> 
		<div id="page-wrapper">

			<!-- Features -->
				<section id="features">
					<div class="container">
						<header>
							<h2>��ǰ ��ġ������ �ٸ��� ���� ������� �����Ѵ�<strong></strong>!</h2>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic01.jpg" alt="" /></a>
										<header>
											<h3>1�ܰ� ���� ���(��ǰ) �غ�</h3>
										</header>
										<p>���� ����� <strong>������ ���̺� ��</strong>�� �÷� ���� ����Ʈ���� ���� �����ϵ��� ������ ���� �����Ѵ�. </p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic02.jpg" alt="" /></a>
										<header>
											<h3>2�ܰ� ī�޶�� �Կ�</h3>
										</header>
										<p>���� ���� ����Ʈ����� ī�޶� �������� ������ ���¿��� <strong>10Cm �Ÿ�</strong>�� ������ ���¿��� ȣ���� ���ٵ�� ���� ��鸲 ���� �Կ� ��ư�� Ŭ���Ѵ�. </p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic03.jpg" alt="" /></a>
										<header>
											<h3>3�ܰ� ���� ��� ����</h3>
										</header>
										<p><strong>��ġ ���� �����</strong> �𵨸�, �з�, ���缺����, ��ġ���� ������ ǥ���Ǹ�, ���������� ���ؼ��� ������ ���� ��û�� �����ؾ� �Ѵ�.</p>
									</section>

							</div>
							<div class="col-12">
								<ul class="actions">
									<li><a onclick="javascript:callAndroidtests1()" class="button icon solid fa-file">ī�޶� ��� �̵�</a></li>
								</ul>
							</div>
						</div>
					</div>
				</section>

			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<p> <strong>�� ����</strong> </p>
					</div>
				</section>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="#"><strong>[���� ����]</strong></a></h2>
											</header>
											<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic04.jpg" alt="" /></a>
											<h3>ī�޶� �Կ� ������ �����ؾ� �Ѵ�.</h3>
											<p> ����, �Կ��� ī�޶� ���� ������ ������� ����� ������ ��ġ�������� ����� �߻��� �� �ִ�.</p>
											<h3>��Ȯ�� �䱸�Ÿ��� �ؼ��ؾ� �Ѵ�.</h3>
											<p> ����, ���� �Ÿ��� Ȯ���� ��� ��ġ������ �м��������� �������� Ȯ���� �� �ִ�.</p>
											<h3>�ŷڼ��� ���ؼ� �������� �м��� �䱸�ȴ�.</h3>
											<p> ����, �� �ۿ��� ��ġ������ �������� �м��� �����ڷ�� Ȱ��Ǹ�, ��ġ���������� �׿��� �ϳ��� �׸� ���� �����̹Ƿ� ��� ������ ����ϱ� ���ؼ� �������� �м��� �ʿ��ϴ�.</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">Web ���� ���� ��û</a></li>
											</ul>
										</article>

									<!-- Post 
										<article class="box post">
											<header>
												<h2><a href="#">By the way, many thanks to <strong>regularjane</strong>
												for these awesome demo photos</a></h2>
											</header>
											<a href="#" class="image featured"><img src="images/pic05.jpg" alt="" /></a>
											<h3>----</h3>
											<p>----</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">"----</a></li>
											</ul>
										</article>-->

								</div>

							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium" hidden="hidden">

									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">----</span>
																<h3><a href="#">----</a></h3>
															</header>
															<p>----</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 28</span>
																<h3><a href="#">And another post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 24</span>
																<h3><a href="#">One more post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
											</ul>
										</section>

									<!-- Highlights -->
										<section>
											<ul class="divided">
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of note</a></h3>
															</header>
															<a href="#" class="image left"><img src="${pageContext.request.contextPath}/resources/c/images/pic06.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of less note</a></h3>
															</header>
															<a href="#" class="image left"><img src="${pageContext.request.contextPath}/resources/c/images/pic07.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
											</ul>
										</section>

								</div>

						</div>
					</div>
				</section>
 

		</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/c/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/c/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/c/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/c/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/c/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/c/assets/js/main.js"></script>

	</body>
</html>