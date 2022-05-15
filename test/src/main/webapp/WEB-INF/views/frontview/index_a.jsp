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
		<title>명품 가치 측정</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/c/assets/css/main.css" />
		<script src="jquery-3.2.0.min.js"></script>    
	</head>
	
	<script  type="text/javascript"> 
		function callAndroidtests1(){      
		window.androidJs.callAndroid1("MOVE","VIEWCAMERA","null","null");//"A" : 일반 촬영   
		}  
	</script> 
	<body class="homepage is-preload">
		<li style="list-style:none;"><a href="/frontview/index" class="button ">홈으로 이동</a></li> 
		<div id="page-wrapper">

			<!-- Features -->
				<section id="features">
					<div class="container">
						<header>
							<h2>명품 가치측정은 다름과 같은 방법으로 진행한다<strong></strong>!</h2>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic01.jpg" alt="" /></a>
										<header>
											<h3>1단계 측정 대상(명품) 준비</h3>
										</header>
										<p>측정 대상을 <strong>평편한 테이블 위</strong>에 올려 놓고 스마트기기로 측정 가능하도록 구겨짐 없이 진열한다. </p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic02.jpg" alt="" /></a>
										<header>
											<h3>2단계 카메라로 촬영</h3>
										</header>
										<p>측정 대상과 스마트기기의 카메라를 수평으로 유지한 상태에서 <strong>10Cm 거리</strong>를 유지한 상태에서 호흡을 가다듬고 손의 흔들림 없이 촬영 버튼을 클릭한다. </p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic03.jpg" alt="" /></a>
										<header>
											<h3>3단계 측정 결과 보기</h3>
										</header>
										<p><strong>가치 측정 결과는</strong> 모델명, 분류, 유사성측도, 가치측도 순으로 표현되며, 정밀측정을 위해서는 전문가 문의 요청을 수행해야 한다.</p>
									</section>

							</div>
							<div class="col-12">
								<ul class="actions">
									<li><a onclick="javascript:callAndroidtests1()" class="button icon solid fa-file">카메라 뷰로 이동</a></li>
								</ul>
							</div>
						</div>
					</div>
				</section>

			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<p> <strong>상세 설명</strong> </p>
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
												<h2><a href="#"><strong>[주의 사항]</strong></a></h2>
											</header>
											<a href="#" class="image featured"><img src="${pageContext.request.contextPath}/resources/c/images/pic04.jpg" alt="" /></a>
											<h3>카메라 촬영 영상이 선명해야 한다.</h3>
											<p> 설명, 촬영시 카메라를 흔들면 영상이 흐려지고 흐려진 영상은 가치측정에서 요류를 발생할 수 있다.</p>
											<h3>정확한 요구거리를 준수해야 한다.</h3>
											<p> 설명, 최적 거리를 확보한 경우 가치측정의 분석과정에서 안정성을 확보할 수 있다.</p>
											<h3>신뢰성을 위해서 전문가의 분석이 요구된다.</h3>
											<p> 설명, 본 앱에서 가치측정은 전문가의 분석에 참고자료로 활용되며, 가치측정조건의 항에서 하나의 항목에 대한 측도이므로 모든 조건을 고려하기 위해서 전문가의 분석이 필요하다.</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">Web 서비스 연동 요청</a></li>
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