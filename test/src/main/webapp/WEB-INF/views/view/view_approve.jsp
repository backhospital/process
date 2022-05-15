<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>test Admin</title>
	
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.3.1.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.js"></script>
	
<style>
	body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
	ul { padding:0; margin:0; list-style:none;  }
 
	div#root { width:90%; margin:0 auto; }
	
	header#header { font-size:60px; padding:20px 0; }
	header#header h1 a { color:#000; font-weight:bold; }
	
	nav#nav { padding:10px; text-align:right; }
	nav#nav ul li { display:inline-block; margin-left:10px; }
 
 		section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
	section#container::after { content:""; display:block; clear:both; }
	aside { float:left; width:200px; }
	div#container_box { float:right; width:calc(100% - 200px - 20px); }
	
	aside ul li { text-align:center; margin-bottom:10px; }
	aside ul li a { display:block; width:100%; padding:10px 0;}
	aside ul li a:hover { background:#eee; }
	
	footer#footer { background:#f9f9f9; padding:20px; }
	footer#footer ul li { display:inline-block; margin-right:10px; } 
</style>


<style>
.inputArea { margin:10px 0; }
select { width:100px; }
label { display:inline-block; width:70px; padding:5px; }
label[for='gdsDes'] { display:block; }
input { width:150px; }
textarea#gdsDes { width:400px; height:180px; }

.oriImg { width:500px; height:auto; }
.thumbImg {}

.gdsDes img { max-width:600px; height:auto; }

</style>

</head>
<body>
<div id="root">
	
		<div id="container_box">
			<h2>상품 조회</h2>
			
<!-- 			<form role="form" method="post" autocomplete="off"> -->
			<input type="hidden" name="idx" value="${approvelist.a_idx}"/>
		
			
			<div class="inputArea">
				<label for="productid">브랜드명</label>
				<span>${approvelist.productid}</span>
			</div>
			
			<div class="inputArea">
				<label for="data3">상품명</label>
				<span>${approvelist.data3}</span>
			</div>
			
			<div class="inputArea">
				<label for="data2">제안가격</label>
				<span><fmt:formatNumber value="${approvelist.data2}" pattern="###,###,###"/></span>
			</div>
					
			<div class="inputArea">
				<label for="data4">상품소개</label>				
				<div class="data4">${approvelist.data4}</div>	
			</div>
			
			<div class="inputArea">
				<label for="data1">이미지</label>
				<p>원본 이미지</p>
				<img src="${pageContext.request.contextPath } /resources/imgs/gucci_a/${approvelist.data1}" class="oriImg"/>
				
<!-- 				<p>썸네일</p> -->
<%-- 				<img src="${goods.offerthumbimg}" class="thumbImg"/>  --%>
			</div>
			
			
<!--  			<div class="inputArea">
				<button type="button" id="approve_Btn" class="btn btn-warning">승인하기</button>
				<button type="button" id="reject_Btn" class="btn btn-danger">거부하기</button>
				
				<script>
					var formObj = $("form[role='form']");
						
					$("#approve_Btn").click(function(){
						
					var con = confirm("정말로 승인 하시겠습니까?");
						
						if(con) {						
 							formObj.attr("action", "/admin/offer_approve");
							formObj.submit();
						}
					});
					
					$("#reject_Btn").click(function(){
						
 						var con = confirm("정말로 거절 하시겠습니까?");
						
 						if(con) {						
 							formObj.attr("action", "/admin/offer_reject");
 							formObj.submit();
						}
 					});
				</script>
			</div>
			
			</form>	-->
						
		</div> 
	
</div>

</body>
</html>