<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<html>  
<head>
	<title>Home</title>
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="${pageContext.request.contextPath}/resources/assets/images/favicons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/resources/assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.7.1/gsap.min.js" 
	integrity="sha512-UxP+UhJaGRWuMG2YC6LPWYpFQnsSgnor0VUF3BHdD83PS/pOpN+FYbZmrYN+ISX8jnvgVUciqP/fILOXDjZSwg==" 
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!-- 구글 로그인 관련 태그  -->	
<!-- 	<meta name="google-signin-scope" content="profile email"> -->
<!-- 	<meta name="google-signin-client_id" content="557075236864-njlqhf3inq52llg1077mca5dhe1oh2jk.apps.googleusercontent.com"> -->
<!-- 	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script> -->
	<!-- jQuery 2.1.4 -->
	<script src="/resources/admin/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Default stylesheets-->
    <link href="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/lib/animate.css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="${pageContext.request.contextPath}/resources/assets/css/colors/default.css" rel="stylesheet">  
    <!-- Main stylesheet and color file-->
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="${pageContext.request.contextPath}/resources/assets/css/colors/default.css" rel="stylesheet">  	
</head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
<!-- nav 구간 시작       -->
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="/">TEST_MALL</a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Shop</a>
                <ul class="dropdown-menu" role="menu">
                 <li class="dropdown"><a class="dropdown-toggle" href="/shop/list?c=100&l=1" data-toggle="dropdown">금융상품</a>
                    <ul class="dropdown-menu">
                      <li><a href="/shop/list?c=101&l=2">주식</a></li>
                      <li><a href="/shop/list?c=102&l=2">채권</a></li>
                    </ul>
                  </li>
				 <li class="dropdown"><a class="dropdown-toggle" href="/shop/list?c=200&l=1" data-toggle="dropdown">부동산</a>
                    <ul class="dropdown-menu">
                      <li><a href="/shop/list?c=201&l=2">토지</a></li>
                      <li><a href="/shop/list?c=202&l=2">아파트</a></li>
                    </ul>
                 </li>
				 <li class="dropdown"><a class="dropdown-toggle" href="/shop/list?c=300&l=1" data-toggle="dropdown">가상자산</a>
                    <ul class="dropdown-menu">
					<li><a href="/shop/list?c=301&l=2">비트코인</a></li>
					<li><a href="/shop/list?c=302&l=2">알트코인</a></li>
                    </ul>
                 </li>                 
                </ul>
              </li>              
				<c:if test="${member == null}">
					<li>
						<a href="/member/signin">Login</a>
					</li>
					<li>
						<a href="/member/signup">Join with us</a>
					</li>
					<li>
						<a href="/list/list">리스트페이지 (테스트)</a>
					</li>
				</c:if>
				<c:if test="${member != null}">
				
				<c:if test="${member.verify == 9}">
				<li>
					<a href="/admin/index">관리자 화면</a>	
				</li>	
				</c:if>
					<li>
						<a href="#">${member.userId}님 환영합니다.</a>
					</li>
					<li>
						<a href="/member/memberview?useridx=${member.useridx}">마이 페이지</a>
					</li>
					<li>
						<a href="/shop/cartList">카트 리스트</a>
					</li>
					<li>
						<a href="/shop/orderList">주문 리스트</a>
					</li>
					<li>
						<a href="/member/signout">로그아웃</a>
					</li>
				</c:if>              
            </ul>
          </div>
        </div>
      </nav>
<!-- nav 구간 끝       -->  

<!-- 상단 섹션구간 시작 -->     
      <div class="main">
        <section class="module bg-dark-30" data-background="${pageContext.request.contextPath}/resources/images/css/log.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">Login</h1>
              </div>
            </div>
          </div>
        </section>
<!-- 상단 섹션구간 끝 -->        
        
<!-- Main과 footer구간 시작         -->
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-5 col-sm-offset-1 mb-sm-40">
                <h4 class="font-alt">Login</h4>
                <hr class="divider-w mb-10">
                <form role="form" method="post" autocomplete="off">
                  <div class="form-group">
                    <input class="form-control" id="userId" name="userId" required="required" class="text" onfocus="this.value='';" value="아이디를 입력하세요." />	
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" id="userPass" name="userPass" required="required" value="" />
                  </div>
                  <div class="form-group">
                    <button class="btn btn-round btn-b" type="submit" id="signin_btn" name="signin_btn">로그인</button>
                  </div>
<!--                   <div class="form-group"><a href="">Forgot Password?</a></div> -->

				<c:if test="${msg == false}">
					<p style="color:#f00;">아이디나 비밀번호를 확인해주세요</p>
				</c:if>

                </form>
              </div>
            </div>
          </div>
        </section>
        
<!-- footer 구간 시작         -->
        <div class="module-small bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">About Titan</h5>
                  <p>The languages only differ in their grammar, their pronunciation and their most common words.</p>
                  <p>Phone: +1 234 567 89 10</p>Fax: +1 234 567 89 10
                  <p>Email:<a href="#">somecompany@example.com</a></p>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Recent Comments</h5>
                  <ul class="icon-list">
                    <li>Maria on <a href="#">Designer Desk Essentials</a></li>
                    <li>John on <a href="#">Realistic Business Card Mockup</a></li>
                    <li>Andy on <a href="#">Eco bag Mockup</a></li>
                    <li>Jack on <a href="#">Bottle Mockup</a></li>
                    <li>Mark on <a href="#">Our trip to the Alps</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Blog Categories</h5>
                  <ul class="icon-list">
                    <li><a href="#">Photography - 7</a></li>
                    <li><a href="#">Web Design - 3</a></li>
                    <li><a href="#">Illustration - 12</a></li>
                    <li><a href="#">Marketing - 1</a></li>
                    <li><a href="#">Wordpress - 16</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Popular Posts</h5>
                  <ul class="widget-posts">
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="assets/images/rp-1.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Designer Desk Essentials</a></div>
                        <div class="widget-posts-meta">23 january</div>
                      </div>
                    </li>
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="assets/images/rp-2.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Realistic Business Card Mockup</a></div>
                        <div class="widget-posts-meta">15 February</div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr class="divider-d">
        <footer class="footer bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-6">
                <p class="copyright font-alt">&copy; 2017&nbsp;<a href="index.html">TitaN</a>, All Rights Reserved</p>
              </div>
              <div class="col-sm-6">
                <div class="footer-social-links"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-dribbble"></i></a><a href="#"><i class="fa fa-skype"></i></a>
                </div>
              </div>
            </div>
          </div>
        </footer>
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>

<!--  js구간 시작 -->
    <script src="${pageContext.request.contextPath}/resources/assets/lib/jquery/dist/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/wow/dist/wow.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/flexslider/jquery.flexslider.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/smoothscroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
  </body>
</html>
