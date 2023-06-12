<%--
  Created by IntelliJ IDEA.
  User: seosanghyeon
  Date: 2023/06/03
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>
<html>
<head>
    <!-- Favicons -->
    <link href="${path}/resources/css/assets/img/favicon.png" rel="icon">
    <link href="${path}/resources/css/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <%-- font awesome css 라이브러리--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="https://kit.fontawesome.com/d0b3f12e44.js" crossorigin="anonymous"></script>
    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="${path}/resources/css/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/resources/css/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="${path}/resources/css/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="${path}/resources/css/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="${path}/resources/css/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="${path}/resources/css/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="${path}/resources/css/assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="${path}/resources/css/assets/css/style.css" rel="stylesheet">
    <title>어드민 메인페이지</title>
</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <a href="${path}/adminMainPage" class="logo d-flex align-items-center">
            <img src="assets/img/logo.png" alt="">       <!-- 이미지 바꾸기 -->
            <span class="d-none d-lg-block">NoobGPT</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>  <!-- 메뉴 열고닫는 버튼-->
    </div>
    <!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div>

    <!-- End Search Bar -->
    <%
        if (session.getAttribute("loginUser") != null) { // 로그인 돼 있을 때
    %>
    <div onclick="location.href='${path}/logout'"><i class="fa-solid fa-right-from-bracket logout_btn"
                                                     style="color: var(--accecnt-color);font-size: 1.5em; padding-top: 2px"></i>
    </div>
    <%
    } else { // 로그아웃 돼 있을 때
    %>
    <div onclick="location.href='${path}/login'"><i class="fa-solid fa-right-to-bracket logout_btn"
                                                    style="color: var(--accecnt-color); font-size: 1.5em; padding-top: 2px"></i>
    </div>
    <%
        }
    %>
</header>
<!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">

            <a class="nav-link collapsed" href="${path}/adminMainPage">
                <i class="bi bi-grid"></i>
                <span>대쉬보드</span>
            </a>
        </li>

        <!-- End Dashboard Nav -->

        <!-- Start member Nav -->
        <li class="nav-item">

            <a class="nav-link collapsed" data-bs-target="#member-nav" data-bs-toggle="collapse" href="#">

                <i class="bi bi-menu-button-wide"></i>
                <span>회원관리</span>
                <i class="bi bi-chevron-down ms-auto"></i>

            </a>


            <ul id="member-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">

                <li>

                    <a href="${path}/adminMemberPage">
                        <i class="bi bi-circle"></i><span>회원 테이블</span>
                    </a>

                </li>

            </ul>
        </li>

        <!-- End Member Nav -->

        <!-- Start Content Nav -->

        <li class="nav-item">

            <a class="nav-link collapsed" data-bs-target="#content-nav" data-bs-toggle="collapse" href="#">

                <i class="bi bi-journal-text"></i><span>컨텐츠관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="content-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">

                <li>
                    <a href="${path}/adminPostPage">
                        <i class="bi bi-circle"></i><span>전체 게시물</span>
                    </a>
                </li>

                <li>
                    <a href="${path}/adminReviewPage">
                        <i class="bi bi-circle"></i><span>후기 관리</span>
                    </a>
                </li>
            </ul>
        </li>

        <!-- End Content Nav -->

        <!-- Start Statistics Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#statistics-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>통계</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="statistics-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="${path}/adminStatisticsPage">
                        <i class="bi bi-circle"></i><span>일별 요약</span>
                    </a>
                </li>
                <li>
                    <a href="https://analytics.google.com/analytics/web/?hl=ko&pli=1#/p363945097/realtime/overview?params=_u..pageSize%3D25%26_u..nav%3Dmaui">
                        <i class="bi bi-circle"></i><span>방문자 현황 그래프</span>
                    </a>
                </li>
            </ul>
        </li>

        <!-- End Statistics Nav -->

        <!-- Start Ad Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#Ad-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-bar-chart"></i><span>광고 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="Ad-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/${path}adminAdPage">
                        <i class="bi bi-circle"></i><span>광고수익 전체통계</span>
                    </a>
                </li>
                <li>
                    <a href="/${path}adminAdFormPage">
                        <i class="bi bi-circle"></i><span>광고 수익 신청 양식</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Ad Nav -->
    </ul>
</aside>
<!-- End Sidebar-->

<main id="main" class="main">
    <div class="pagetitle">
        <h1>광고관리</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">광고관리</a></li>
                <li class="breadcrumb-item active">광고신청양식</li>
            </ol>
        </nav>
    </div>
    <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">광고 신청 양식</h5>

                <!-- General Form Elements -->

                <form>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">이메일</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="대여어때 이메일을 입력해주세요">
                            <button type="submit" class="btn btn-secondary btn-sm">아이디 검사</button>
                            <small id="emailHelp" class="form-text text-muted">아이디검사 해주세요</small>
                            <small id="emailHelp" class="form-text text-muted">/검사 완료</small>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputName" class="col-sm-2 col-form-label">성함</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" placeholder="성함을 입력해주세요">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputIMG" class="col-sm-2 col-form-label">넣을 광고</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="file" id="formFile">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputDate" class="col-sm-2 col-form-label">날짜 시작</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputDate" class="col-sm-2 col-form-label">날짜 끝</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">요구사항</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" style="height: 100px" placeholder="요구사항을 입력해주세요"></textarea>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <legend class="col-form-label col-sm-2 pt-0">원하시는 광고위치를 선택해주세요</legend>
                        <div class="col-sm-10">

                            <div class="top-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck1">
                                <label class="form-check-label" for="gridCheck1">
                                    상단
                                </label>
                            </div>

                            <div class="bottom-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck2">
                                <label class="form-check-label" for="gridCheck2">
                                    하단
                                </label>
                            </div>


                            <div class="left-center-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck3">
                                <label class="form-check-label" for="gridCheck3">
                                    왼쪽 중간
                                </label>
                            </div>


                            <div class="right-center-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck4">
                                <label class="form-check-label" for="gridCheck4">
                                    오른쪽 중간
                                </label>
                            </div>
                        </div>
                    </div>



                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">광고 가격</label>
                        <div class="col-sm-10">
                            <select class="form-select" multiple aria-label="multiple select example">
                                <option selected>꼭 읽어주세요</option>
                                <option value="1">1. 사용자가 클릭시 10원</option>
                                <option value="2">2. 사용자에게 보여질시 7원</option>
                                <option value="3">3. 크기에 따라 가격측정 달라짐</option>
                            </select>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">제출하기</label>
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">제출하기</button>
                        </div>
                    </div>

                </form><!-- End General Form Elements -->

            </div>
        </div>

    </div>

</main><!-- End #main -->
</body>
<!-- Vendor JS Files -->
<script src="${path}/resources/css/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="${path}/resources/css/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${path}/resources/css/assets/vendor/chart.js/chart.umd.js"></script>
<script src="${path}/resources/css/assets/vendor/echarts/echarts.min.js"></script>
<script src="${path}/resources/css/assets/vendor/quill/quill.min.js"></script>
<script src="${path}/resources/css/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="${path}/resources/css/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="${path}/resources/css/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="${path}/resources/css/assets/js/main.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</html>

