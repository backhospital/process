<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>  
<head>
	<title>Home</title>
    <script src="/resources/jquery/jquery-3.3.1.min.js"></script>
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="${pageContext.request.contextPath}/resources/assets/images/favicons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/resources/assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
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
	<style>
		section#content ul li { display:inline-block; justify-content: center; margin-left:30px; margin-right:30px; margin-bottom:80px; margin-top: 50px; }
		section#content div.data1 img { width:400px; height:350px; }
		section#content div.data3 { padding:10px ; text-align:center; }
		section#content div.data3 a { color:#000; }
		
		section#content div.data1 img { width:400px; height:350px; }
		section#content div.data3 { padding:10px 0; text-align:center; }
		section#content div.data3 a { color:#000; }
		section.module { font-size:14px;}		
	</style>	
</head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
<!--       <div class="page-loader"> -->
<!--         <div class="loader">Loading...</div> -->
<!--       </div> -->
<!-- nav 구간 시작       -->
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span><span class="icon-bar"></span>
            <span class="icon-bar"></span></button><a class="navbar-brand" href="/admin/index">TEST_MALL</a>          
            </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">관리자메뉴</a>
                <ul class="dropdown-menu" role="menu">
					<li><a href="/admin/goods/register">상품 등록</a></li>
					<li><a href="/admin/goods/list">상품 목록</a></li>
					<li><a href="/admin/shop/orderList">주문 목록</a></li>
					<li><a href="/admin/shop/allReply">상품 소감</a></li>
					<li><a href="/admin/goods/memberlist">유저 목록</a></li>					                	             
                </ul>
              </li>              
   				<c:if test="${member != null}">
					<li>
						<a href="/">일반 화면</a>	
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
        <section class="module bg-dark-30" data-background="${pageContext.request.contextPath}/resources/images/css/admin4.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">관리자 주문변경 페이지</h1>
              </div>
            </div>
          </div>
        </section>
<!-- 상단 섹션구간 끝 -->
      
      
<!--  main footer 구간 시작      --> 
      
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <h4 class="font-alt mt-40 mb-0">주문 상태 보기</h4>
                <hr class="divider-w mt-10 mb-20">
                <div class="row multi-columns-row">
			<div class="orderInfo">
					<c:forEach items="${orderView}" var="orderView" varStatus="status">
						
						<c:if test="${status.first}">
							<p><span>수령인 : </span>${orderView.orderRec}</p>
							<p><span>주소 : </span>(${orderView.userAddr1}) ${orderView.userAddr2} ${orderView.userAddr3}</p>
							<p><span>가격 : </span><fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
							<p><span>상태 : </span>${orderView.delivery}</p>
							
							<div class="deliveryChange">
								<form role="form" method="post" class="deliveryForm">
								
									<input type="hidden" name="orderId" value="${orderView.orderId}" />
									<input type="hidden" name="delivery" class="delivery" value="" />
									
<!-- 									<button type="button" class="delivery1_btn">배송중</button> -->
									<button type="button" class="delivery2_btn">배송완료</button>
									<button type="button" class="list">리스트 확인하기</button>
									
									
									<script>
// 										$(".delivery1_btn").click(function(){
// 											$(".delivery").val("배송중");
// 											run();
// 										});
										
										$(".delivery2_btn").click(function(){
											$(".delivery").val("배송완료");
											run();											
										});
										
										function run(){
											$(".deliveryForm").submit();
										}
										
										$(".list").click(function(){
											location.href = "/admin/shop/orderList2";
										});
											
										
									
									</script>
								</form>
							</div>
						</c:if>
						
					</c:forEach>
				</div>
				<br><br>
                <h4 class="font-alt mt-40 mb-0">주문 상품 정보</h4>
                <hr class="divider-w mt-10 mb-20">
                <div class="row multi-columns-row mb-70">
                  <div class="col-sm-6 col-md-6 col-lg-6" style="float: left;">
                    <div class="content-box">
					<c:forEach items="${orderView}" var="orderView">									
						<div class="thumb">
							<img src="${orderView.gdsThumbImg}" />
						</div>									
					</c:forEach>                      
                    </div>
                  </div>
                  
                  <div class="col-sm-6 col-md-6 col-lg-6">
                    <div class="content-box">
					<c:forEach items="${orderView}" var="orderView">									
						<div class="gdsInfo">
							<p><span>상품명 : </span>${orderView.gdsName}</p>
							<p><span>개당 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice}" /> 원</p>
							<p><span>구입 수량 : </span>${orderView.cartStock} 개</p>
							<p><span>최종 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice * orderView.cartStock}" /> 원</p>	                   
						</div>									
					</c:forEach>                     
                    </div>
                  </div>                    
                </div>
                </div>
              </div>
            </div>
            </div>
        </section>

<!-- footer 구간      -->
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
             
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
    
<!--  footer 구간 / main 구간 끝      -->     

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