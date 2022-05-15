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
		<h2>승인목록보기</h2>
		<a href="/admin/offerlist">승인신청보기</a>
			<table>
				<thead>
					<tr>
						<th>신청번호</th>
						<th>브랜드명</th>
						<th>상품명</th>
						<th>요청가격</th>
					</tr>
				</thead>
				<tbody>	
					<c:forEach items="${approvelist}" var="approvelist">				
					<tr>
						<!-- 사용자가 신청한 번호보기 -->										
							<td><a href ="/admin/view_approve?idx=${approvelist.idx}">${approvelist.idx}</a></td>
							<td>${approvelist.productid}</td>
							<td>${approvelist.data3}</td>
							<td>${approvelist.data2}</td>						
					</tr>	
					</c:forEach>		
				</tbody>
			</table>	
		</div>
	</section>

</div>

</body>
</html>