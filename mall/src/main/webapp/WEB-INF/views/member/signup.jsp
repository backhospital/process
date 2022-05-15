<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <h1 class="module-title font-alt mb-0">Register</h1>
              </div>
            </div>
          </div>
        </section>
<!-- 상단 섹션구간 끝 -->        
        
<!-- Main과 footer구간 시작         -->
<section class="module">
	<div class="container">
			<form action="" method="post" name="joinform" role="form" autocomplete="off">
				<div class="row">
					<div class="form-group">	
                    	<input class="form-control" type="text" id="userId" name="userId" placeholder="아이디를 입력하세요" required="required"/>
						<p class="idCheck" style="margin-bottom:0;"><span class="idCheckMsg" style="font-size:12px; font-weight:bold;"></span></p>
						<button type="button" class="btn btn-primary modalModBtn" style= "visibility: hidden;" id="id_dupli_use">사용 하기</button>
						<input type="hidden" id="idDuplication" value="false">
					</div>

						<div class="form-group">
							<input type="password" class="form-control" name="userPass" id="userPass1" placeholder="비밀번호를 입력하세요" required="required">
							<p class="pw1Check" style="margin-bottom:0;"><span class="pw1CheckMsg" style="font-size:12px; font-weight:bold;"></span></p>
						</div>


						<div class="form-group">
							<input type="password" class="form-control" name="userPass2" id="userPass2" placeholder="비밀번호를 입력하세요" required="required">
							<p class="pw2Check" style="margin-bottom:0;"><span class="pw2CheckMsg" style="font-size:12px; font-weight:bold;"></span></p>
						</div>


						<div class="form-group">
							<input type="text" class="form-control" name="userName" id="userName" placeholder="이름을 입력하세요" required="required">
						</div>


						<div class="form-group">
							<input type="text" class="form-control" name="userPhon" id="userPhon" placeholder="010-0000-0000" required="required">
							<p class="phoneCheck" style="margin-bottom:0;"><span class="phoneCheckMsg" style="font-size:12px; font-weight:bold;"></span></p>
						</div>


						<div class="form-group ">
							이메일<span>*</span> &nbsp;&nbsp;						
								<input type="text" class="form-control" name="userEmail" id="userEmail" placeholder="이메일을 입력하세요" required="required">
						</div>


						<div class="form-group">
							<p>우편번호<span>*</span></p>
							<div class="join_btn">
								<input type="text" class="form-control" name="userZip" id="userZip" onclick="addrclick()" readonly="readonly">
								<button type="button" class="site-btn" onclick="addrclick()">주소 검색</button>
							</div>
						</div>


						<div class="form-group">
							<p>주소</p>
							<input type="text" class="form-control" name="userAddr1" id="userAddr1" readonly="readonly">
						</div>


						<div class="form-group">
							<p>상세 주소</p>
							<input type="text" class="form-control" name="userAddr2" id="userAddr2">
						</div>

					<div class="col-lg-12 Btn_wide">
						<button type="button" class="site-btn" id="MJoin_submit_Btn">가입하기</button>
					</div>
				</div>
			</form>
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
    <script type="text/javascript">
    /* 회원가입 유효성 제어   */

$(function() {	
	
		var getCheck = RegExp(/^[a-zA-Z0-9]{5,12}$/);
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		var getPhone = RegExp(/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/);
		
		// 첫 화면 도움말 아이디
		$(".idCheck .idCheckMsg").css({
			visibility : 'visible',
			display : 'block',
			color : 'red'
		}).text("아이디는 5-12자의 영문 대소문자 및 숫자로 입력해 주세요.");

		// 첫 화면 도움말 비밀번호
		$(".pw1Check .pw1CheckMsg").css({
			visibility : 'visible',
			display : 'block',
			color : 'red'
		}).text("비밀번호는 5-12자의 영문 대소문자 및 숫자로 입력해 주세요.");

		// 아이디 입력 값 검증
		$('#userId').keyup(function() {
			
			if ($('#userId').val() == "") {
				$(".idCheck .idCheckMsg").css({
					visibility : 'visible',
					display : 'block',
					color : 'red'
				}).text("아이디를 입력해 주세요.");
			} else if (!getCheck.test($("#userId").val())) {
				$(".idCheck .idCheckMsg").css({
					visibility : 'visible',
					display : 'block',
					color : 'red'
				}).text("아이디를 5-12자의 영문 대소문자 및 숫자로 입력해 주세요.");
			} else {
				
				var userId = $('#userId').val(); // 입력되는 값
				var data = {
					userId : userId
				} 
				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

				$.ajax({
					type : "post",
					url : "/member/memberIdCk",
					data : data,
					success : function(result) {
			
						if (result == 'success') {					
							
							$(".idCheck .idCheckMsg").css({
								visibility : 'visible',
								display : 'block',
								color : 'green'
							}).text("사용 가능한 아이디 입니다.");
							
							$('#id_dupli_use').css({
								visibility : 'visible'
							});							
									
						} else {
							$(".idCheck .idCheckMsg").css({
								visibility : 'visible',
								display : 'block',
								color : 'red'
							}).text("중복된 아이디 입니다.");
							
							$('#id_dupli_use').css({
								visibility : 'hidden'
							});	
						}
				    } // success 종료
				}); // ajax 종료
			} // else종료
		});
		// 아이디 입력 값 검증
		
		// 중복 아이디 체크 사용하기 버튼
		$('#id_dupli_use').click(function() {
			$("#userId").attr('readonly', true);
			$('#idDuplication').attr('value', true);
		});

		// 비밀번호 입력 값 검증
		$('#userPass1').keyup(function() {
			if ($('#userPass1').val() == "") {
				$(".pw1Check .pw1CheckMsg").css({
					visibility : 'visible',
					display : 'block',
					color : 'red'
				}).text("비밀번호를 입력해 주세요.");
			} else if (!getCheck.test($("#userPass1").val())) {
				$(".pw1Check .pw1CheckMsg").css({
					visibility : 'visible',
					display : 'block',
					color : 'red'
				}).text("비밀번호를 5-12자의 영문 대소문자 및 숫자로 입력해 주세요.");
			} else {
				$(".pw1Check .pw1CheckMsg").css({
					visibility : 'hidden',
					display : 'block',
					color : 'red'
				}).text("");
			}
		});// 비밀번호 입력값 검증

		// 비밀번호 일치 확인 도움말
		$('#userPass2').keyup(function() {
			if ($('#userPass1').val() != $('#userPass2').val()) {
				$(".pw2Check .pw2CheckMsg").css({
					visibility : 'visible',
					display : 'block',
					color : 'red'
				}).text("비밀번호가 일치하지 않습니다.");
			} else {
				$(".pw2Check .pw2CheckMsg").css({
					visibility : 'hidden',
					display : 'block',
					color : 'red'
				}).text("");
			}
		});// 비밀번호 일치 확인
		
		// 전화번호 입력 값 검증
		$('#userPhon').keyup(function() {
			if (!getPhone.test($("#userPhon").val())) {
				$(".phoneCheck .phoneCheckMsg").css({
					visibility : 'visible',
					display : 'block',
					color : 'red'
				}).text("전화번호 형식이 올바르지 않습니다.");
			} else {
				$(".phoneCheck .phoneCheckMsg").css({
					visibility : 'hidden',
					display : 'block',
					color : 'red'
				}).text("");
			}
		});// 비밀번호 입력 값 검증
		
		// 이메일 입력 값 검증
		$('#userEmail').keyup(function() {
			if (!getMail.test($("#userEmail").val())) {
				$(".emailCheck .emailCheckMsg").css({
					visibility : 'visible',
					display : 'block',
					color : 'red'
				}).text("이메일 형식이 올바르지 않습니다.");
			} else {
				$(".emailCheck .emailCheckMsg").css({
					visibility : 'hidden',
					display : 'block',
					color : 'red'
				}).text("");
			}
		});// 이메일 입력 값 검증
		
		// 서브밋 이벤트 발생
		$('#MJoin_submit_Btn').click(function() {
			JoinSubmit();
		});

	}); 
	//회원가입 유효성 제어종료

	// 서브밋 함수
	function JoinSubmit() {
		
		// 변수
		var userId = $('#userId').val();
		var userPass = $('#userPass1').val();
		var userPass2 = $('#userPass2').val();
		var userName = $('#userName').val();
		var userPhon = $('#userPhon').val();
		var userEmail = $('#userEmail').val();
		var userAddr1 = $('#userAddr1').val();
		var userAddr2 = $('#userAddr2').val();
		var userZip = 1;
		var idCheck = $('#idDuplication').val();
		var numCheck = $('#hiddenNumberCheck').val();		
		
		
		// 형식 설정
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		var getCheck = RegExp(/^[a-zA-Z0-9]{5,12}$/);
		var getName = RegExp(/^[가-힣]+$/);
		var fmt = RegExp(/^\d{6}[1234]\d{6}$/);
		var getPhone = RegExp(/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/);
		
		//아이디 공백 확인 
		if ($("#userId").val() == "") {
			alert("아이디를 입력해 주세요");
			$("#id").focus();
			return false;
		}

		//아이디 유효성검사 
		if (!getCheck.test($("#userId").val())) {
			alert("아이디를 형식에 맞게 입력해주세요");
			$("#userId").val("");
			$("#userId").focus();
			return false;
		}
		
		//아이디 중복 확인 검사 유무 
		if (idCheck == "false"){
			alert("아이디 중복 검사 후 사용하기를 눌러주세요.");
			$("#userId").focus();
			return false;
		}

		//비밀번호 공백 확인 
		if ($("#userPass1").val() == "") {
			alert("패스워드를 입력해주세요");
			$("#userPass1").focus();
			return false;
		}

		//비밀번호 유효성검사 
		if (!getCheck.test($("#userPass1").val())) {
			alert("비밀번호를 형식에 맞게 입력해주세요");
			$("#userPass1").focus();
			return false;
		}

		//비밀번호 확인란 공백 확인 
		if ($("#userPass2").val() == "") {
			alert("패스워드 확인란을 입력해주세요");
			$("#userPass2").focus();
			return false;
		}

		//비밀번호 서로확인 
		if ($("#userPass1").val() != $("#userPass2").val()) {
			alert("비밀번호 확인이 일치하지 않습니다");
			$("#userPass2").val("");
			$("#userPass2").focus();
			return false;
		}
		
		//이름 공백 검사 
		if ($("#userName").val() == "") {
			alert("이름을 입력해주세요");
			$("#userName").focus();
			return false;
		}
		
		//전화번호 공백 검사 
		if ($("#userPhon").val() == "") {
			alert("전화번호를 입력해주세요");
			$("#userPhon").focus();
			return false;
		}
		
		//전화번호 유효성 검사 
		if (!getPhone.test($("#userPhon").val())) {
			alert("전화번호 형식에 맞게 입력해주세요");
			$("#userPhon").focus();
			return false;
		}

		//이메일 공백 확인 
		if ($("#userEmail").val() == "") {
			alert("이메일을 입력해주세요");
			$("#userEmail").focus();
			return false;
		}

		//이메일 유효성 검사 
		if (!getMail.test($("#userEmail").val())) {
			alert("이메일형식에 맞게 입력해주세요");
			$("#userEmail").focus();
			return false;
		}
			
		//주소 공백 검사 
		if ($("#userZip").val() == "" || $("#userAddr1").val() == "" || $("#userAddr2").val() == "") {
			alert("주소 정보를 입력해주세요");
			$("#userZip").focus();
			$("#userAddr1").focus();
			$("#userAddr2").focus();
			return false;
		} else{
			alert("회원가입에 성공했습니다.");
			document.joinform.submit();
		} 
		
		
	} // 회원가입 입력 데이터 유효성 검사 끝

</script>

<!-- 우편주소 api 불러오기  -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	// 주소 검색 버튼 클릭
	function addrclick() {	
		new daum.Postcode({
			oncomplete : function(data) {
				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수
	
				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}
	
				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== ''
							&& /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== ''
							&& data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					document.getElementById("userAddr1").value = extraAddr;
	
				} else {
					document.getElementById("userAddr1").value = '';
				}
	
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById("userZip").value = data.zonecode;
				document.getElementById("userAddr1").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("userAddr2").focus();
			}
		}).open();
	}

    </script>
  </body>
</html>
