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
                            <a class="nav-link" href="/index">Home</a>
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



    <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>About Us</h1>
                    <p>
 						저희 회사는 2017년 설립이래, Iot 시스템기술 개발과 AI 설계 개발을 통해 공장 자동화 솔루션 개발을 비롯해 예비군 스마트워치 소프트웨어 개발
 						육군/해군 소프트웨어 솔루션 개발등을 하고 있습니다. <br>
 						저희 회사는 하드웨어/소프트웨어 개발을 비롯해 4차산업혁명에 대응하는 개발을 통해 고객의 필요에 맞는 창조적인 기술로 새로운 시대를 열어가겠습니다. 
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/resources/index/assets/img/회사로고(스페이스코어)_투명_그레이.png" style="width: 300px; height: auto;" alt=" ">
                </div>
            </div>
        </div>
    </section>
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
        <div class="row pt-5 pb-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">History</h1><hr>
                <p>
                   ○ 2017년 11월 : 스페이스코어 창업 <br>
                   ○ 2018년 11월 : 도매업 등록 <br>
                   ○ 2018년 11월 : 전자상거래업 등록 <br>
                   ○ 2018년 11월 : 통신판매사업자 등록 <br>
                   ○ 2019년 3월 : 사업장 이전 (창원시 성산구 완암로 50, 넥스동 10층 1006호) <br>
                   ○ 2019년 4월 : 서비스업 개시 <br>
                   ○ 2019년 4월 : 임베디드 소프트웨어 개발사업 개시 <br>
                </p>
            </div>
        </div>
    </section>
    <!-- End Section -->
    
    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="background_image" style="padding-top: 400px; padding-bottom:200px; background-image: url('${pageContext.request.contextPath}/resources/index/assets/img/id-banner-2.jpg');">
             <div class="container">
                   <div class="col-lg-6 mb-0 d-flex align-items-center">
                       <div class="text-align-left align-self-center">
                           <h1 class="h2" style="color: white;"><b>기업의 방향</b></h1><br>
                           <p style="color: white;">
                           회사는 신뢰를 기반으로 기술을 구현하여 우리의 삶을 풍요롭게 만들어 갑니다.
                           </p>
                       </div>
                   </div>
             </div>			
        </div>
    </section>
    <!-- End Featured Product -->
    
    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="background_image" style="padding-top: 400px; padding-bottom:100px; background-image: url('${pageContext.request.contextPath}/resources/index/assets/img/id-banner-4.jpg');">
             <div class="container">
                   <div class="col-lg-6 mb-0 d-flex align-items-center">
                       <div class="text-align-left align-self-center">
                           <h1 class="h2" style="color: white;"><b>경영이념</b></h1><br>
                           <p style="color: white;">
                           <h4 style="color: white;">1. 기술과 신뢰로</h4>
                           </p>
                           <p style="color: white;">
                           <h4 style="color: white;">2. 최고를 지향하며</h4>
                           </p>
                           <p style="color: white;">
                           <h4 style="color: white;">3. 미래를 창조한다</h4>
                           </p>
                       </div>                      
                   </div>
             </div>			
        </div>
    </section>
    <!-- End Featured Product -->
    <!-- Start Brands -->
    <section class="bg-light py-5">
        <div class="container my-4">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Research and Development</h1>
                    <p>
                        저희 회사는 기술개발을 통해 여러 기관을 통한 연구실적을 갖추고 있습니다.
                    </p>
                </div>
                <div class="col-lg-9 m-auto tempaltemo-carousel">
                    <div class="row d-flex flex-row">
                        <!--Controls-->
                        <div class="col-1 align-self-center">
                            <a class="h1" href="#templatemo-slide-brand" role="button" data-bs-slide="prev">
                                <i class="text-light fas fa-chevron-left"></i>
                            </a>
                        </div>
                        <!--End Controls-->

                        <!--Carousel Wrapper-->
                        <div class="col">
                            <div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="templatemo-slide-brand" data-bs-ride="carousel">
                                <!--Slides-->
                                <div class="carousel-inner product-links-wap" role="listbox">

                                    <!--First slide-->
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_02.jpg" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_03.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End First slide-->

                                    <!--Second slide-->
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_02.jpg" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_03.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Second slide-->

                                    <!--Third slide-->
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_02.jpg" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="${pageContext.request.contextPath}/resources/index/assets/img/ins_03.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Third slide-->

                                </div>
                                <!--End Slides-->
                            </div>
                        </div>
                        <!--End Carousel Wrapper-->

                        <!--Controls-->
                        <div class="col-1 align-self-center">
                            <a class="h1" href="#templatemo-slide-brand" role="button" data-bs-slide="next">
                                <i class="text-light fas fa-chevron-right"></i>
                            </a>
                        </div>
                        <!--End Controls-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Brands-->


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