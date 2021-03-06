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
<!-- nav ?????? ??????       -->
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span><span class="icon-bar"></span>
            <span class="icon-bar"></span></button><a class="navbar-brand" href="/admin/index">TEST_MALL</a>          
            </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">???????????????</a>
                <ul class="dropdown-menu" role="menu">
					<li><a href="/admin/goods/register">?????? ??????</a></li>
					<li><a href="/admin/goods/list">?????? ??????</a></li>
					<li><a href="/admin/shop/orderList">?????? ??????</a></li>
					<li><a href="/admin/shop/allReply">?????? ??????</a></li>
					<li><a href="/admin/goods/memberlist">?????? ??????</a></li>					                	             
                </ul>
              </li>              
   				<c:if test="${member != null}">
					<li>
						<a href="/">?????? ??????</a>	
					</li>
					<li>
						<a href="/member/signout">????????????</a>
					</li>
				</c:if> 
            </ul>
          </div>
        </div>
      </nav>
<!-- nav ?????? ???       -->  

    
<!-- ?????? ???????????? ?????? -->
        <section class="module bg-dark-30" data-background="${pageContext.request.contextPath}/resources/images/css/admin4.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">????????? ???????????? ?????????</h1>
              </div>
            </div>
          </div>
        </section>
<!-- ?????? ???????????? ??? -->
      
      
<!--  main footer ?????? ??????      -->       
        <section class="module">
        <div style="text-align: center;">
		<h4 class="font-alt mb-0"><a href="/admin/shop/orderList" >???????????? / ????????? ????????????</a></h4>
		</div>
        <hr class="divider-w mt-10 mb-20">
        <br> <br>
          <div class="container">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <h4 class="font-alt mb-0">???????????? ????????????</h4>
                <hr class="divider-w mt-10 mb-20">
                <div class="row multi-columns-row">
				<ul class="orderList2">
				<c:forEach items="${orderList2}" var="orderList2">
				<li>
				<div>
					<p><span>???????????? : </span><a href="/admin/shop/orderView?n=${orderList2.orderId}">${orderList2.orderId}</a></p>
<%-- 					<p><span>?????????</span>${orderList2.userId}</p> --%>
<%-- 					<p><span>?????????</span>${orderList2.orderRec}</p> --%>
<%-- 					<p><span>??????</span>(${orderList2.userAddr1}) ${orderList2.userAddr2} ${orderList2.userAddr3}</p> --%>
<%-- 					<p><span>??????</span><fmt:formatNumber pattern="###,###,###" value="${orderList2.amount}" /> ???</p>					 --%>
					<p><span>?????? : </span>${orderList2.delivery}</p>					
				</div>
				</li>
				</c:forEach>
				</ul>
                </div>
                </div>
              </div>
            </div>
        </section>

<!-- footer ??????      -->
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
    
<!--  footer ?????? / main ?????? ???      -->     

<!--  js?????? ?????? -->
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