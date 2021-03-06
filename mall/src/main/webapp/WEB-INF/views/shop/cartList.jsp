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
	
		body { margin:0; padding:0; font-family:'?????? ??????', verdana; }
		a { color:#05f; text-decoration:none; }
		a:hover { text-decoration:underline; }
		
		h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
		ul, lo, li { margin:0; padding:0; list-style:none; }
	
		/* ---------- */
		
		div#root { width:900px; margin:0 auto; }
		header#header {}
		nav#nav {}
		section#container { }
			section#content { float:left; width:calc(99% - 20px); margin-left: 25px; }
			section#container::after { content:""; display:block; clear:both; }			
		section#container { }		
	</style>
	
	
	<style>
		/*
		section#content ul li { display:inline-block; margin:10px; }
		section#content div.goodsThumb img { width:200px; height:200px; }
		section#content div.goodsName { padding:10px 0; text-align:center; }
		section#content div.goodsName a { color:#000; }
		*/
		section#content ul li { margin:10px 0; padding:10px 0; border-bottom:1px solid #999; }
		section#content ul li img { width:250px; height:250px; }
		section#content ul li::after { content:""; display:block; clear:both; }
		section#content div.thumb { float:left; width:250px; }
		section#content div.gdsInfo { float:right; width:calc(100% - 320px); }
		section#content div.gdsInfo { font-size:20px; line-height:2; }
		section#content div.gdsInfo span { display:inline-block; width:100px; font-weight:bold; }
		section#content div.gdsInfo .delete { text-align:right; }
		section#content div.gdsInfo .delete button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee;}
		
		.allCheck { float:left; width:200px; }
		.allCheck input { width:16px; height:16px; }
		.allCheck label { margin-left:10px; }
		.delBtn { float:right; width:300px; text-align:right; margin-right: 10px;}
		.delBtn button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee; margin-right: 10px;}
		
		.checkBox { float:left; width:30px; }
		.checkBox input { width:16px; height:16px; }
		
		.listResult { padding:20px; background:#eee; }
		.listResult .sum { float:left; width:45%; font-size:22px; }
		
		.listResult .orderOpne { float:right; width:45%; text-align:right; }
		.listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
		.listResult::after { content:""; display:block; clear:both; } 
		
		.orderInfo { border:5px solid #eee; padding:20px; display:none; }
		.orderInfo .inputArea { margin:10px 0; }
		.orderInfo .inputArea label { display:inline-block; width:120px; margin-right:10px; }
		.orderInfo .inputArea input { font-size:14px; padding:5px; }
		#userAddr2, #userAddr3 { width:250px; }
		
		.orderInfo .inputArea:last-child { margin-top:30px; }
		.orderInfo .inputArea button { font-size:20px; border:2px solid #ccc; padding:5px 10px; background:#fff; margin-right:20px;}
		
		.orderInfo .inputArea #sample2_address { width:230px; }
		.orderInfo .inputArea #sample2_detailAddress { width:280px; }
		.orderInfo .inputArea #sample2_extraAddress { display:none; }
		
	</style>	
</head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
<!-- nav ?????? ??????       -->
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="/">TEST_MALL</a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Shop</a>
                <ul class="dropdown-menu" role="menu">
                 <li class="dropdown"><a class="dropdown-toggle" href="/shop/list?c=100&l=1" data-toggle="dropdown">????????????</a>
                    <ul class="dropdown-menu">
                      <li><a href="/shop/list?c=101&l=2">??????</a></li>
                      <li><a href="/shop/list?c=102&l=2">??????</a></li>
                    </ul>
                  </li>
				 <li class="dropdown"><a class="dropdown-toggle" href="/shop/list?c=200&l=1" data-toggle="dropdown">?????????</a>
                    <ul class="dropdown-menu">
                      <li><a href="/shop/list?c=201&l=2">??????</a></li>
                      <li><a href="/shop/list?c=202&l=2">?????????</a></li>
                    </ul>
                 </li>
				 <li class="dropdown"><a class="dropdown-toggle" href="/shop/list?c=300&l=1" data-toggle="dropdown">????????????</a>
                    <ul class="dropdown-menu">
					<li><a href="/shop/list?c=301&l=2">????????????</a></li>
					<li><a href="/shop/list?c=302&l=2">????????????</a></li>
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
						<a href="/list/list">?????????????????? (?????????)</a>
					</li>
				</c:if>
				<c:if test="${member != null}">
				
				<c:if test="${member.verify == 9}">
				<li>
					<a href="/admin/index">????????? ??????</a>	
				</li>	
				</c:if>
					<li>
						<a href="#">${member.userId}??? ???????????????.</a>
					</li>
					<li>
						<a href="/member/memberview?useridx=${member.useridx}">?????? ?????????</a>
					</li>
					<li>
						<a href="/shop/cartList">?????? ?????????</a>
					</li>
					<li>
						<a href="/shop/orderList">?????? ?????????</a>
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
        <section class="module bg-dark-30" data-background="${pageContext.request.contextPath}/resources/images/css/shop.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">?????? ?????????</h1>
              </div>
            </div>
          </div>
        </section>
<!-- ?????? ???????????? ??? -->
      
      
<!--  main footer ?????? ??????      -->         
	<section id="container">
		<div id="container_box">
			<section id="content">
					
				<ul>
					<li>
						<div class="allCheck">
							<input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">?????? ??????</label>
							
							<script>
							$("#allCheck").click(function(){
								var chk = $("#allCheck").prop("checked");
								if(chk) {
									$(".chBox").prop("checked", true);
								} else {
									$(".chBox").prop("checked", false);
								}
							});
							</script>
							
						</div>
						
						<div class="delBtn">
							<button type="button" class="selectDelete_btn">?????? ??????</button>
							
							<script>
								$(".selectDelete_btn").click(function(){
									var confirm_val = confirm("?????? ?????????????????????????");
									
									if(confirm_val) {
										var checkArr = new Array();
										
										// ????????? ??????????????? ???????????? ??????
										$("input[class='chBox']:checked").each(function(){
											checkArr.push($(this).attr("data-cartNum"));  // ????????? ????????? ??????
										});
											
										$.ajax({
											url : "/shop/deleteCart",
											type : "post",
											data : { chbox : checkArr },
											success : function(result){
												
												if(result == 1) {												
													location.href = "/shop/cartList";
												} else {
													alert("?????? ??????");
												}
											}
										});
									}	
								});
							</script>
							
						</div>
						
					</li>
				
					<%-- jsp?????? ?????? ?????? --%>
					<c:set var="sum" value="0" />
				
					<c:forEach items="${cartList}" var="cartList">
					<li>
						<div class="checkBox">
							<input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNum}" />
							<script>
								$(".chBox").click(function(){
									$("#allCheck").prop("checked", false);
								});
							</script>
						</div>
					
						<div class="thumb">
							<img src="${cartList.gdsThumbImg}" />
						</div>
						<div class="gdsInfo">
							<p>
								<span>?????????</span>${cartList.gdsName}<br />
								<span>?????? ??????</span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice}" /> ???<br />
								<span>?????? ??????</span>${cartList.cartStock} ???<br />
								<span>?????? ??????</span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice * cartList.cartStock}" /> ???
							</p>
							
							<div class="delete">
								<button type="button" class="delete_${cartList.cartNum}_btn" data-cartNum="${cartList.cartNum}">??????</button>
								
								<script>
									$(".delete_${cartList.cartNum}_btn").click(function(){
										var confirm_val = confirm("?????? ?????????????????????????");
										
										if(confirm_val) {
											var checkArr = new Array();
											
											checkArr.push($(this).attr("data-cartNum"));
																						
											$.ajax({
												url : "/shop/deleteCart",
												type : "post",
												data : { chbox : checkArr },
												success : function(result){
													if(result == 1) {												
														location.href = "/shop/cartList";
													} else {
														alert("?????? ??????");
													}
												}
											});
										}	
									});
								</script>
							</div>
						</div>			
					</li>
					
					<%-- ????????? ????????? sum??? ?????? ??????(gdsPrice)*?????? ??????(cartStock)????????? ?????? --%>
					<c:set var="sum" value="${sum + (cartList.gdsPrice * cartList.cartStock)}" />
					
					</c:forEach>
				</ul>
			
			<div class="listResult">
				<div class="sum">
					??? ?????? : <fmt:formatNumber pattern="###,###,###" value="${sum}" />???
				</div>
				<div class="orderOpne">
					<button type="button" class="orderOpne_bnt">?????? ?????? ??????</button>
					
					<script>
						$(".orderOpne_bnt").click(function(){
							$(".orderInfo").slideDown();  // $(".orderInfo")??? ????????????
							$(".orderOpne_bnt").slideUp();  // $(".orderOpne_bnt")??? ??????
						});						
					</script>
					
				</div>
			</div>
			
			<div class="orderInfo">
				<form role="form" method="post" autocomplete="off">
							
					<input type="hidden" name="amount" value="${sum}" />
							
					<div class="inputArea">
						<label for="">?????????</label>
						<input type="text" name="orderRec" id="orderRec" required="required" />
					</div>
					
					<div class="inputArea">
						<label for="orderPhon">????????? ?????????</label>
						<input type="text" name="orderPhon" id="orderPhon" required="required" />
					</div>
					<!-- 
					<div class="inputArea">
						<label for="userAddr1">????????????</label>
						<input type="text" name="userAddr1" id="userAddr1" required="required" />
					</div>
					
					<div class="inputArea">
						<label for="userAddr2">1??? ??????</label>
						<input type="text" name="userAddr2" id="userAddr2" required="required" />
					</div>
					
					<div class="inputArea">
						<label for="userAddr3">2??? ??????</label>
						<input type="text" name="userAddr3" id="userAddr3" required="required" />
					</div>
					-->
					<div class="inputArea">
					
						<p>
							<input type="text" id="sample2_postcode" placeholder="????????????">
							<input type="button" onclick="sample2_execDaumPostcode()" value="???????????? ??????">
						</p>
						<p>
							<input type="text" name="userAddr1" id="sample2_address" placeholder="??????" >
							<input type="text" name="userAddr2" id="sample2_detailAddress" placeholder="????????????">
							<input type="text" name="userAddr3" id="sample2_extraAddress" placeholder="????????????">
						</p>
						
						<!-- iOS????????? position:fixed ????????? ??????, ???????????? ???????????? ?????? position:absolute ?????? ???????????? top,left??? ?????? ?????? -->
						<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="?????? ??????">
						</div>
						
						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
						<script>
						    // ???????????? ?????? ????????? ?????? element
						    var element_layer = document.getElementById('layer');
						
						    function closeDaumPostcode() {
						        // iframe??? ?????? element??? ???????????? ??????.
						        element_layer.style.display = 'none';
						    }
						
						    function sample2_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
						
						                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
						                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
						                var addr = ''; // ?????? ??????
						                var extraAddr = ''; // ???????????? ??????
						
						                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
						                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
						                    addr = data.roadAddress;
						                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
						                    addr = data.jibunAddress;
						                }
						
						                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
						                if(data.userSelectedType === 'R'){
						                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
						                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
						                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
						                        extraAddr += data.bname;
						                    }
						                    // ???????????? ??????, ??????????????? ?????? ????????????.
						                    if(data.buildingName !== '' && data.apartment === 'Y'){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
						                    if(extraAddr !== ''){
						                        extraAddr = ' (' + extraAddr + ')';
						                    }
						                    // ????????? ??????????????? ?????? ????????? ?????????.
						                    document.getElementById("sample2_extraAddress").value = extraAddr;
						                
						                } else {
						                    document.getElementById("sample2_extraAddress").value = '';
						                }
						
						                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
						                document.getElementById('sample2_postcode').value = data.zonecode;
						                document.getElementById("sample2_address").value = addr;
						                // ????????? ???????????? ????????? ????????????.
						                document.getElementById("sample2_detailAddress").focus();
						
						                // iframe??? ?????? element??? ???????????? ??????.
						                // (autoClose:false ????????? ???????????????, ?????? ????????? ???????????? ???????????? ???????????? ?????????.)
						                element_layer.style.display = 'none';
						            },
						            width : '100%',
						            height : '100%',
						            maxSuggestItems : 5
						        }).embed(element_layer);
						
						        // iframe??? ?????? element??? ????????? ??????.
						        element_layer.style.display = 'block';
						
						        // iframe??? ?????? element??? ????????? ????????? ???????????? ???????????????.
						        initLayerPosition();
						    }
						
						    // ??????????????? ?????? ????????? ?????? ???????????? ???????????? ?????????????????? ???????????????
						    // resize????????????, orientationchange???????????? ???????????? ?????? ?????????????????? ?????? ????????? ?????? ?????? ????????????,
						    // ?????? element_layer??? top,left?????? ????????? ????????? ?????????.
						    function initLayerPosition(){
						        var width = 300; //???????????????????????? ????????? element??? width
						        var height = 400; //???????????????????????? ????????? element??? height
						        var borderWidth = 5; //???????????? ???????????? border??? ??????
						
						        // ????????? ????????? ????????? ?????? element??? ?????????.
						        element_layer.style.width = width + 'px';
						        element_layer.style.height = height + 'px';
						        element_layer.style.border = borderWidth + 'px solid';
						        // ???????????? ????????? ?????? ????????? ?????? ?????? ???????????? ????????? ??? ??? ????????? ????????? ????????????.
						        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
						        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
						    }
						</script>
					</div>
					
					<div class="inputArea">
						<button type="submit" class="order_btn">??????</button>
						<button type="button" class="cancel_btn">??????</button>
						
						<script>
						$(".cancel_btn").click(function(){
							$(".orderInfo").slideUp();  // $(".orderInfo")??? ?????????
							$(".orderOpne_bnt").slideDown();  // $(".orderOpne_bnt")??? ?????????
						});						
						</script>
						
					</div>
					
				</form>	
			</div>
			
				
			</section>
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