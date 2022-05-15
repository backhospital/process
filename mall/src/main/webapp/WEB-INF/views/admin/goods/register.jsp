<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <section class="module bg-dark-30" data-background="${pageContext.request.contextPath}/resources/images/css/admin3.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">관리자 상품등록 페이지</h1>
              </div>
            </div>
          </div>
        </section>
<!-- 상단 섹션구간 끝 -->
      
      
<!--  main footer 구간 시작      -->         
      <section class="module">
        <div class="container">
			<h2>상품 등록</h2><hr>
			
			<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
			
			<div class="inputArea">	
				<label>1차 분류</label>
				<select class="category1">
					<option value="">전체</option>
				</select>
			
				<label>2차 분류</label>
				<select class="category2" name="cateCode">
					<option value="">전체</option>
				</select>
			</div>
			
			<div class="inputArea">
				<label for="gdsName">상품명</label> &nbsp; &nbsp;
				<input type="text" id="gdsName" name="gdsName" />
			</div>
			
			<div class="inputArea">
				<label for="gdsPrice">상품가격</label>
				<input type="text" id="gdsPrice" name="gdsPrice" />
			</div>
			
			<div class="inputArea">
				<label for="gdsStock">상품수량</label>
				<input type="text" id="gdsStock" name="gdsStock" />
			</div>
			
			<div class="inputArea">
				<label for="gdsDes">상품소개</label>
				<textarea rows="5" cols="50" id="gdsDes" name="gdsDes"></textarea>
				
				<script>
					var ckeditor_config = {
							resize_enaleb : false,
							enterMode : CKEDITOR.ENTER_BR,
							shiftEnterMode : CKEDITOR.ENTER_P,
							filebrowserUploadUrl : "/admin/goods/ckUpload"
					};
					
					CKEDITOR.replace("gdsDes", ckeditor_config);
				</script>
				
			</div>
			
			<div class="inputArea">
				<label for="gdsImg">이미지</label>
				<input type="file" id="gdsImg" name="file" />
				<div class="select_img"><img src="" /></div>
				
				<script>
					$("#gdsImg").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(500);								
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
				</script>
				
				<%=request.getRealPath("/") %> 
				
			</div>
			
			<div class="inputArea">
				<button type="submit" id="register_Btn" class="btn btn-primary">등록</button>			
			</div>
			
			</form>
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
	<script>
	// 컨트롤러에서 데이터 받기
	var jsonData = JSON.parse('${category}');
	
	// 필요한 배열과 오브젝트 변수 생성
	var cate1Arr = new Array();
	var cate1Obj = new Object();
	
	// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {
		
		if(jsonData[i].level == "1") {  // 레벨이 1인 데이터가 있다면 
			cate1Obj = new Object();  // 초기화
			
			// cate1Obj에 cateCode와 cateName를 저장
			cate1Obj.cateCode = jsonData[i].cateCode; 
			cate1Obj.cateName = jsonData[i].cateName;
			
			// cate1Obj에 저장된 값을 cate1Arr 배열에 저장
			cate1Arr.push(cate1Obj);
		}
	}
	
	// 1차 분류 셀렉트 박스에 데이터 삽입
	var cate1Select = $("select.category1")
	
	for(var i = 0; i < cate1Arr.length; i++) {
	
		// cate1Arr에 저장된 값을 cate1Select에 추가
		cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
							+ cate1Arr[i].cateName + "</option>");	
	}
	
	
	// 클래스가 category1인 select변수의 값이 바뀌었을 때 실행
	$(document).on("change", "select.category1", function(){
	
		
		// 필요한 배열과 오브젝트 변수를 생성
		var cate2Arr = new Array();
		var cate2Obj = new Object();
		
		// 2차 분류 셀렉트 박스에 삽입할 데이터 준비
		for(var i = 0; i < jsonData.length; i++) {
			
			if(jsonData[i].level == "2") {  // 레빌이 2인 데이터가 있다면
				cate2Obj = new Object();  // 초기화
				
				// cate2Obj에 cateCode, cateName, cateCodeRef를 저장
				cate2Obj.cateCode = jsonData[i].cateCode;
				cate2Obj.cateName = jsonData[i].cateName;
				cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
				
				// cate2Obj에 저장된 값을 cate1Arr 배열에 저장
				cate2Arr.push(cate2Obj);
			} 
		}
		
		var cate2Select = $("select.category2");
		
		/*
		for(var i = 0; i < cate2Arr.length; i++) {
				cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
									+ cate2Arr[i].cateName + "</option>");
		}
		*/
		
		// cate2Select의 값을 제거함(초기화)
		cate2Select.children().remove();
	 
		// cate1Select에서 선택한 값을 기준으로 cate2Select의 값을 조정
		$("option:selected", this).each(function(){
			
			var selectVal = $(this).val();  // 현재 선택한 cate1Select의 값을 저장
		
			cate2Select.append("<option value='" + selectVal + "'>전체</option>");  // cate2Select의 '전체'에 현재 선택한 cate1Select와 같은 값 부여
			
			// cate2Arr의 데이터를 cate2Select에 추가
			for(var i = 0; i < cate2Arr.length; i++) {
				
				// 현재 선택한 cate1Select의 값과 일치하는 cate2Arr의 데이터를 가져옴
				if(selectVal == cate2Arr[i].cateCodeRef) {
					cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
										+ cate2Arr[i].cateName + "</option>");
				}
			}		
		});
		
	});
	</script>
	
	<script>
	var regExp = /[^0-9]/gi;
	
	$("#gdsPrice").keyup(function(){ numCheck($(this)); });
	$("#gdsStock").keyup(function(){ numCheck($(this)); });
	
	function numCheck(selector) {
		var tempVal = selector.val();
		selector.val(tempVal.replace(regExp, ""));
	}
	</script>    
  </body>
</html>
