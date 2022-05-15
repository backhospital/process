<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>SPACECORE</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/index/assets/img/회사로고(스페이스코어)_투명.png">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/index/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/index/assets/css/templatemo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/index/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/index/assets/css/fontawesome.min.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand text-success logo h1 align-self-center" href="/index">
                <img src = "${pageContext.request.contextPath}/resources/index/assets/img/회사로고(스페이스코어)_투명_이름.png" style = "width: auto; height: 60px;">
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/contact">Contact</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="/">Project</a></li>
                    </ul>
                </div>
			</div>
        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/index/assets/img/제목 없음1.png" style="height:580px; width: auto;">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>SPACECORE</b></h1>
                                <h3 class="h2">우리는 코드로 세상을 만들어 갑니다.</h3>
                                <p>
                                
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/index/assets/img/smartcity4.jpg" style="height:580px; width: auto;">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1 text-success">SPACECORE</h1>
                                <h3 class="h2">미래를 생각하는 기술을 만들어 갑니다.</h3>
                                <p>
                                
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">스페이스코어는</h1>
                <p>
					고객을 위한 <strong>최고의 기술</strong>을 개발하고 있습니다.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="${pageContext.request.contextPath}/resources/index/assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">하드웨어</h5>
                <p class="text-center"><a class="btn btn-success">바로가기</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="${pageContext.request.contextPath}/resources/index/assets/img/category_img_02.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">AI스마트</h2>
                <p class="text-center"><a class="btn btn-success">바로가기</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="${pageContext.request.contextPath}/resources/index/assets/img/category_img_05.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">소프트웨어</h2>
                <p class="text-center"><a class="btn btn-success">바로가기</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="background_image" style="padding-top: 400px; padding-bottom:100px; background-image: url('${pageContext.request.contextPath}/resources/index/assets/img/cta-bg.jpg');">
             <div class="container">
                   <div class="col-lg-6 mb-0 d-flex align-items-center">
                       <div class="text-align-left align-self-center">
                           <h1 class="h2" style="color: white;"><b>당신에게 필요한 기술을 제공합니다.</b></h1><br>
                           <h3 class="h3" style="color: white;">전자기기 AI 개발의 시스템솔루션 전문기업 SPACECORE</h3>
                           <h3 class="h5" style="color: white;">최상의 기술을 바탕으로 고객에게 필요한 기술을 제공하고 있습니다.</h3>
                           <h3 class="h5" style="color: white;"><a href = "">SPACECORE와 함께하세요!</a></h3>
                           <p>
                           
                           </p>
                       </div>
                   </div>
             </div>			
        </div>
    </section>
    <!-- End Featured Product -->


    <!-- Start Footer -->
    <footer class="template-mo-zay-hero-carousel" id="tempaltemo_footer">

        <div class="w-100 bg-light py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <h6 style="font-size: 12px;">
                            &copy; SPACECORE<br> 
                             대표 : 정용배 | 정보책임자 : 아무나  <br> 사업자번호 : 598-05-00841 | 주소 : 경상남도 창원시 성산구 완암로 50, 넥스동 10층 1006호 SPACECORE
                        </h6>                            
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="${pageContext.request.contextPath}/resources/index/assets/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/index/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/index/assets/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/index/assets/js/templatemo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/index/assets/js/custom.js"></script>
    <!-- End Script -->
</body>

</html>