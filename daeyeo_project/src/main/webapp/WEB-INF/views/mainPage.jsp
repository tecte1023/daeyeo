<%--
  Created by IntelliJ IDEA.
  User: gwansuni
  Date: 2023/04/29
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>
<html>
<head>
    <!-- BootStrap CSS File -->
    <link href="${path}/resources/css/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/resources/css/assets/css/style.css" rel="stylesheet">
    <!-- CSS File -->
    <link href="${path}/resources/css/main_page.css" rel="stylesheet">
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-S11E29LT0T"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-S11E29LT0T');
    </script>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-58QHFKS');</script>
    <!-- End Google Tag Manager -->
    <title>Daeyeo?Daeyeo!</title>
</head>
<body>
<div class="wrapper">
    <%@ include file="includes/header.jsp" %>
    <div class="container">
        <div class="search-container">
            <div class="search-content">
                <div class="search-field">
                    <form  action="rental/list" class="search">
                        <input type="text" name="searchWord" placeholder="검색어를 입력하세요.">
                        <button class="search-btn a-btn">검색하기</button>
                    </form>
                </div>
                <form action="rental/list" class="reserve-tab">
                    <ul class="nav nav-tabs nav-tabs-bordered" id="borderedTab" role="tablist">
                        <li class="regional-base">
                            <span class="nav-link">지역 기반</span>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="category nav-link active" data-bs-toggle="tab" type="button" value="0">공간시설
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="category nav-link" data-bs-toggle="tab" type="button" value="1">개인대여</button>
                        </li>
                        <input type="hidden" id="main-cate" name="mainCate" value="공간시설">
                    </ul>
                    <div class="tab-content">
                        <select name="sido" class="sido form-select">
                            <option value="">시/도 선택</option>
                        </select>

                        <select name="sigungu" class="sigungu form-select">
                            <option value="">시/군/구 선택</option>
                        </select>
                        <select name="subCate" class="sub-category form-select">
                            <option value="">선택</option>
                        </select>
                        <button class="reserve-btn a-btn">예약하기</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="main-content">
            <div class="recent-service">
                <h3>최근 사용 <span>서비스</span></h3>
                <div class="slider-box">
                    <div class="slider">
                        <a href="" class="card">
                            <img src="${path}/resources/img/rental/image_icon.png" class="card-img-top" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                            <div class="card-body">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">공간시설</li>
                                    <li class="breadcrumb-item">강의실</li>
                                </ol>
                                <p class="card-text">[경민대] 404호 강의실</p>
                            </div>
                        </a>
                        <a href="" class="card">
                            <img src="${path}/resources/img/rental/a.png" class="card-img-top" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                            <div class="card-body">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">공간시설</li>
                                    <li class="breadcrumb-item">강의실</li>
                                </ol>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </a>
                        <a href="" class="card">
                            <img src="${path}/resources/img/rental/airplane.jfif" class="card-img-top" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                            <div class="card-body">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">공간시설</li>
                                    <li class="breadcrumb-item">강의실</li>
                                </ol>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </a>
                        <a href="" class="card">
                            <img src="${path}/resources/img/rental/sea.jpg" class="card-img-top" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                            <div class="card-body">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">공간시설</li>
                                    <li class="breadcrumb-item">강의실</li>
                                </ol>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </a>
                        <a href="" class="card">
                            <img src="${path}/resources/img/rental/image_icon.png" class="card-img-top" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                            <div class="card-body">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">공간시설</li>
                                    <li class="breadcrumb-item">강의실</li>
                                </ol>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </a>
                    </div>
                    <div class="indicator">
                        <div class="indi-bar"></div>
                    </div>
                </div>
            </div>
            <div class="card-field">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">공유하고 싶은 것이 있으신가요?<br>대여 등록을 통해 다른 사람들과 공유해 보세요.</h5>
                        <div class="registration"><a href="" class="a-btn">대여 등록</a></div>
                    </div>
                    <div class="card-header">
                        <h5 class="card-title">대여 상품을 등록하셨나요?<br>등록한 상품을 편리하게 관리할 수 있습니다.</h5>
                        <div class="management"><a href="" class="a-btn">대여 관리</a></div>
                    </div>
                </div>
                <div class="reservation-info card">
                    <div class="card-body">
                        <a href="" class="detail">
                            <h4 class="card-title">나의 <span>예약 정보</span></h4>
                        </a>
                        <div class="news">
                            <a href="" class="item">
                                <img src="${path}/resources/img/rental/image_icon.png" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                                <div class="card-body">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">공간시설</li>
                                        <li class="breadcrumb-item">강의실</li>
                                    </ol>
                                    <p class="card-text">[경민대] 404호 강의실</p>
                                </div>
                            </a>
                            <a href="" class="item">
                                <img src="${path}/resources/img/rental/image_icon.png" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                                <div class="card-body">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">공간시설</li>
                                        <li class="breadcrumb-item">강의실</li>
                                    </ol>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </a>
                            <a href="" class="item">
                                <img src="${path}/resources/img/rental/image_icon.png" onerror="this.onerror=null; this.src='${path}/resources/img/rental/image_icon.png';">
                                <div class="card-body">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">공간시설</li>
                                        <li class="breadcrumb-item">강의실</li>
                                    </ol>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="question card">
                    <div href="" class="balloon left">
                        자주 묻는 질문
                    </div>
                    <a href="" class="balloon right">
                        <span>Q.</span>예약 변경은 어떻게 하나요?
                    </a>
                    <a href="" class="balloon left">
                        <span>Q.</span>질문2
                    </a>
                    <a href="" class="balloon right">
                        <span>Q.</span>질문3
                    </a>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="includes/footer.jsp" %>
</div>
</body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-58QHFKS"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<!-- BootStrap JS File -->
<script src="${path}/resources/css/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- JS File -->
<script src="${path}/resources/js/mainPage.js"></script>
</html>
