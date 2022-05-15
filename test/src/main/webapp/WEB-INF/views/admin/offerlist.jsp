<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<title>test Admin</title>
	
<script src="${pageContext.request.contextPath}/resources/assets/admin/jquery/jquery-3.3.1.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/admin/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/admin/bootstrap/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/resources/assets/admin/bootstrap/bootstrap.min.js"></script>
	
<style>
	body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
	ul { padding:0; margin:0; list-style:none;  }
 
	div#root { width:90%; margin:0 auto; }

 	section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
	section#container::after { content:""; display:block; clear:both; }
	aside { float:left; width:200px; }
	div#container_box { float:right; width:calc(100% - 200px - 20px); }
	
	aside ul li { text-align:center; margin-bottom:10px; }
	aside ul li a { display:block; width:100%; padding:10px 0;}
	aside ul li a:hover { background:#eee; }
	
</style>


<style>
#container_box table { width:900px; } 
#container_box table th { font-size:20px; font-weight:bold;
							text-align:center; padding:10px; border-bottom:2px solid #666; }
#container_box table tr:hover { background:#eee; }
#container_box table td { padding:10px; text-align:center; }
#container_box table img { width:150px; height:auto; }
</style>

</head>
<body>
<div id="root">
	
	<section id="container">

		<div id="container_box">
		<h2>신청목록보기</h2>
		<a href="/">메인페이지</a>
		<br>
		<a href="/admin/offer_approve_list">승인목록보기</a>
		<a href="/admin/offer_reject_list">거절목록보기</a>
		<h3>개선방향설정 : 1.(오퍼 -> 승인시 리스트테이블 등록) / 2.(오퍼 ->  승인테이블 -> 리스트테이블 등록) 중 2번으로 설정</h3>
		<hr>
			<table>
				<thead>
					<tr>
						<th>신청번호</th>
						<th>브랜드명</th>
						<th>상품명</th>
						<th>요청가격</th>
						<th>진행상태</th>	
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${offerlist}" var="offerlist">
					<tr>
						<td><a href ="/admin/view?idx=${offerlist.idx}">${offerlist.idx}</a></td>
						<td>${offerlist.productid}</td>
						<td>${offerlist.data3}</td>
						<td>${offerlist.data2}</td>
						<td>
							<c:choose>
							<c:when test="${offerlist.verify == 0}"> 심사중 </c:when>
							<c:when test="${offerlist.verify == 1}"> 승인완료 </c:when>
							<c:when test="${offerlist.verify == 2}"> 거절완료 </c:when>
							</c:choose>
						<td>
					</tr>			
					</c:forEach>
				</tbody>
			</table>
		</div>
	</section>

</div>

</body>
</html>