<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>test Admin</title>
	
<script src="${pageContext.request.contextPath}/resources/assets/admin/jquery/jquery-3.3.1.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/admin/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/admin/bootstrap/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/resources/assets/admin/bootstrap/bootstrap.min.js"></script>

<script src="/resources/ckeditor/ckeditor.js"></script>
	
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

.select_img img { margin:20px 0; }

</style>

</head>
<body>
<div id="root">
	
	<section id="container">
	
		<div id="container_box">
			<h2>상품 등록</h2>
			
			<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
			
			
			<div class="inputArea">
				<label for="productid">브랜드명</label>
				<input type="text" id="productid" name="productid" />
			</div>
			
			<div class="inputArea">
				<label for="data3">상품명</label>
				<input type="text" id="data3" name="data3" />
			</div>
			
			<div class="inputArea">
				<label for="data2">상품가격</label>
				<input type="text" id="data2" name="data2" />
			</div>
			
			<div class="inputArea">
				<label for="data4">상품정보</label>
				<textarea rows="5" cols="50" id="data4" name="data4"></textarea>				
			</div>
			
			<div class="inputArea">
				<label for="data1">이미지</label>
				<input type="file" id="data1" name="file" />
				<div class="select_img"><img src="" /></div>
				
				<script>
					$("#data1").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(500);								
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
				</script>
				
				
			</div>
			
			<div class="inputArea">
				<button type="submit" id="register_Btn" class="btn btn-primary">등록</button>			
			</div>
			
			</form>
			
		</div>
	</section>


</div>


</body>
</html>