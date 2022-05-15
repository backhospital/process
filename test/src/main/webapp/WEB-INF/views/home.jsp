<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href="frontview/index">탬플릿 컨셉 page</a> <br>
<a href="view/list">고객요청 이미지 리스트</a> <br>
<a href="view/list2">기존상품 이미지 리스트</a> <br>
<a href="view/list3">기존상품 + 승인리스트 (join)</a> <br>
<a href="view/listPage">기존상품 + 승인리스트 (join) + 페이징처리</a> <br>
<a href="admin/offerlist">관리자 고객제안리스트</a> <br>
<a href="customer/register">고객 등록 page</a> <br>
</body>
</html>
