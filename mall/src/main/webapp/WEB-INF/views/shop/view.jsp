<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>  
<head>
	<title>Home</title>
    <script src="/resources/jquery/jquery-3.3.1.min.js"></script>
    <script src="/resources/ckeditor/ckeditor.js"></script>
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
		section.replyForm { padding:50px 0; }
		section.replyForm div.input_area { margin:10px 0; }
		section.replyForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px;; height:150px; }

		section.replyList { padding:30px 0; }
		section.replyList ol { padding:0; margin:0; }
		section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
		section.replyList div.userInfo { }
		section.replyList div.userInfo .userName { font-size:16px; font-weight:bold; }
		section.replyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px; }
		section.replyList div.replyContent { font-size:16px; padding:10px; margin:10px 0; }
		section.replyList div.replyFooter { margin-bottom:10px; }
		
		section.replyList div.replyFooter button { font-size:14px; border: 1px solid #999; background:none; margin-right:10px; }		
	</style>
	
	<style>
		div.replyModal { position:relative; z-index:1; display:none; }
		div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
		div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:550px; height:300px; padding:20px 10px; background:#fff; border:2px solid #666; }
		div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px; height:200px; }
		div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
		div.modalContent button.modal_cancel { margin-left:20px; }
	</style>
    
<script>
function replyList() {
	
	var gdsNum = ${view.gdsNum};
	
	// 비동기식 데이터 요청
	$.getJSON("/shop/view/replyList" + "?n=" + gdsNum, function(data){
		var str = "";
		
		$(data).each(function(){
			
			console.log(data);
			
			// 날짜 데이터를 보기 쉽게 변환
			var repDate = new Date(this.repDate);
			repDate = repDate.toLocaleDateString("ko-US")
							
			// HTML코드 조립
			str += "<li data-repNum='" + this.repNum + "'>" //"<li data-gdsNum='" + this.gdsNum + "'>"
				 + "<div class='userInfo'>"
				 + "<span class='userName'>" + this.userName + "</span>"
				 + "<span class='date'>" + repDate + "</span>"
				 + "</div>"
				 + "<div class='replyContent'>" + this.repCon + "</div>"
				 
				 + "<c:if test='${member != null}'>"
				 
				 + "<div class='replyFooter'>"
				 + "<button type='button' class='modify' data-repNum='" + this.repNum + "'>M</button>"
				 + "<button type='button' class='delete' data-repNum='" + this.repNum + "'>D</button>"
				 + "</div>"
				 
				 + "</c:if>"
				 
				 + "</li>";											
		});
		
		// 조립한 HTML코드를 추가
		$("section.replyList ol").html(str);
	});
	
}
</script>      	
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
        <section class="module bg-dark-30" data-background="${pageContext.request.contextPath}/resources/images/css/shop.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">상품 정보 페이지</h1>
              </div>
            </div>
          </div>
        </section>
<!-- 상단 섹션구간 끝 -->
      
      
<!--  main footer 구간 시작      -->         
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 mb-sm-40"><img src="${view.gdsImg}" style="width:580px; height:320px;"/></div>
              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-12">
                    <h1 class="product-title font-alt">${view.gdsName}</h1>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12"><h3><p class="cateName"><span>카테고리 : </span>${view.cateName}</p></h3>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="price font-alt"><span class="amount"><fmt:formatNumber pattern="###,###,###" value="${view.gdsPrice}" /> 원</span></div>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                  </div>
                </div>
				<c:if test="${view.gdsStock != 0}">
						
						<p class="cartStock">
							<span>구입 수량</span>
							<button type="button" class="plus">+</button>
							<input type="number" class="numBox" min="1" max="${view.gdsStock}" value="1" readonly="readonly"/>
							<button type="button" class="minus">-</button>
							
							<input type="hidden" value="${view.gdsStock}" class="gdsStock_hidden" />
							
							<script src="/resources/js/user/shop/stockBtn.js"></script>	
						</p>
						
						<p class="addToCart">
							<button type="button" class="addCart_btn">카트에 담기</button>
							<script>
								$(".addCart_btn").click(function(){
									
									var gdsNum = $("#gdsNum").val();
									var cartStock = $(".numBox").val();
									
									var data = {
											gdsNum : gdsNum,
											cartStock : cartStock
											};
									
									$.ajax({
										url : "/shop/view/addCart",
										type : "post",
										data : data,
										success : function(result){
											
											if(result == 1) {
												alert("카트 담기 성공");
												$(".numBox").val("1");
											} else {
												alert("회원만 사용할 수 있습니다.")
												$(".numBox").val("1");
											}
										},
										error : function(){
											alert("카트 담기 실패");
										}
									});
								});
							</script>
						</p>
						</c:if>
						
						<c:if test="${view.gdsStock == 0}">
							<p>상품 수량이 부족합니다.</p>						
						</c:if>
					</div>
						
				<div id="reply">
				
					<c:if test="${member == null }">
						<p>소감을 남기시려면 <a href="/member/signin">로그인</a>해주세요</p>
					</c:if>
					
					<c:if test="${member != null}">
					<section class="replyForm">
						<form role="form" method="post" autocomplete="off">
						
							<input type="hidden" name="gdsNum" id="gdsNum" value="${view.gdsNum}">
							
							                    						
						<div class="input_area">
						
          <div class="container">
            <div class="row mt-70">
              <div class="col-sm-12">
                <ul class="nav nav-tabs font-alt" role="tablist">
                  <li><a href="#data-sheet" data-toggle="tab"><span class="icon-tools-2"></span>Data sheet</a></li>
                  <li><a href="#reviews" data-toggle="tab"><span class="icon-tools-2"></span>Reviews</a></li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="data-sheet">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>product Data</th>
                        </tr>
                        <tr>
                          <td>${view.gdsDes}</td>
                      </tbody>
                    </table>
                  </div>
                  <div class="tab-pane" id="reviews">
                    <div class="comment-form mt-30">
                      <h4 class="comment-form-title font-alt">Add review</h4>
                        <div class="row">
                          <div class="col-sm-4">
                          <div class="col-sm-12">
                            <div class="form-group">
                              <textarea class="form-control" name="repCon" id="repCon" rows="4" placeholder="Review"></textarea>
                            </div>
                          <div class="col-sm-12">
                            <button class="btn btn-round btn-d" type="button" id="reply_btn">Submit Review</button>
                          </div>                            
                          </div>
                        </div>
                    </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>						
						
								
								<script>
									$("#reply_btn").click(function(){
										
										var formObj = $(".replyForm form[role='form']");
										var gdsNum = $("#gdsNum").val();
										var repCon = $("#repCon").val();
										
										// ReplyVO 형태로 데이터 생성
										var data = {
												gdsNum : gdsNum,
												repCon : repCon
												};
										
										$.ajax({
											url : "/shop/view/registReply",
											type : "post",
											data : data,
											success : function(){
												replyList();  // 리스트 새로고침
												$("#repCon").val("");  // 텍스트에어리어를 초기화
											}
										});
									});
								</script>
								
							</div>
							
						</form>
					</section>
					</c:if>
					
					<section class="replyList">

						<ol>
						<%--
						<c:forEach items="${reply}" var="reply">
							<li>
					   			<div class="userInfo">
					    			<span class="userName">${reply.userName}</span>
					    			<span class="date"><fmt:formatDate value="${reply.repDate}" pattern="yyyy-MM-dd" /></span>
					   			</div>
					   			<div class="replyContent">${reply.repCon}</div>
					  		</li>
					  	</c:forEach>
					  	 --%>
					 	</ol>     
					 	
					 	<script>
							replyList();
						</script>
						
						<script>
						
							$(document).on("click", ".modify", function(){
								//$(".replyModal").attr("style", "display:block;");
								$(".replyModal").fadeIn(200);
								
								var repNum = $(this).attr("data-repNum");
								var repCon = $(this).parent().parent().children(".replyContent").text();
								
								$(".modal_repCon").val(repCon);
								$(".modal_modify_btn").attr("data-repNum", repNum);
								
							});
													
							// 스크립트로 인해 생성된 HTML의 이벤트는 .click() 메서드를 사용할 수 없음
							$(document).on("click", ".delete", function(){
								
								// 사용자에게 삭제 여부를 확인
								var deletConfirm = confirm("정말로 삭제하시겠습니까?"); 
								
								if(deletConfirm) {
								
									var data = {repNum : $(this).attr("data-repNum")};  // ReplyVO 형태로 데이터 생성
									
									$.ajax({
										url : "/shop/view/deleteReply",
										type : "post",
										data : data,
										success : function(result){
											
											// result의 값에 따라 동작
											if(result == 1) {
												replyList();  // 리스트 새로고침
											} else {
												alert("작성자 본인만 할 수 있습니다.")  // 본인이 아닌 경우										
											}
										},
										error : function(){
											// 로그인하지 않아서 에러가 발생한 경우
											alert("로그인하셔야합니다.")
										}
									});
								}
							});
						
						</script>

					</section>
				
				
				</div>					
					
            </div>
            </div>
            </section>

<div class="replyModal">

	<div class="modalContent">
		
		<div>
			<textarea class="modal_repCon" name="modal_repCon"></textarea>
		</div>
		
		<div>
			<button type="button" class="modal_modify_btn">수정</button>
			<button type="button" class="modal_cancel">취소</button>
		</div>
		
	</div>

	<div class="modalBackground"></div>
	
</div>

<script>
$(".modal_modify_btn").click(function(){
	var modifyConfirm = confirm("정말로 수정하시겠습니까?");
	
	if(modifyConfirm) {
		var data = {
					repNum : $(this).attr("data-repNum"),
					repCon : $(".modal_repCon").val()
				};  // ReplyVO 형태로 데이터 생성
		
		$.ajax({
			url : "/shop/view/modifyReply",
			type : "post",
			data : data,
			success : function(result){
				
				if(result == 1) {
					replyList();
					$(".replyModal").fadeOut(200);
				} else {
					alert("작성자 본인만 할 수 있습니다.");							
				}
			},
			error : function(){
				alert("로그인하셔야합니다.")
			}
		});
	}
	
});

$(".modal_cancel").click(function(){
	//$(".replyModal").attr("style", "display:none;");
	$(".replyModal").fadeOut(200);
});
</script>


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
