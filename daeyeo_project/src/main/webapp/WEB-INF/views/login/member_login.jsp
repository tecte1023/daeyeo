<%--
  Created by IntelliJ IDEA.
  User: gwansuni
  Date: 2023/05/02
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:useBean id="loginForm" class="com.daeyeo.config.LoginForm" scope="request"/>
<html>
<head>
    <title>대여대여 로그인</title>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/login_style.css">

    <!-- Custom fonts for this template-->
    <link href="${path}/resources/css/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${path}/resources/css/assets/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/footer_bottom.css">
    <style>
        .error {
            color: #bd2130;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        // 로그인 실패시 에러 메시지 출력
        $(document).ready(function () {
            var errorMessage = "${errorMessage}";
            if (errorMessage != null && errorMessage !== "") {
                alert(errorMessage);
            }
        });
    </script>
</head>
<body>
<div class="body_container">
    <%@ include file="/WEB-INF/views/includes/header.jsp" %>
    <div class="main_content">
        <%--        <div class="dum_area">--%>
        <%--            &lt;%&ndash;flex용 더미 데이터            &ndash;%&gt;--%>
        <%--        </div>--%>
        <%--        <div class="login_form_total">--%>
        <%--            <img src="${path}/resources/img/logo_transparent.png" alt="dd">--%>
        <%--            <form action="" method="post" id="login_form">--%>
        <%--                <fieldset>--%>
        <%--                    <legend>로그인</legend>--%>
        <%--                    <div></div>--%>
        <%--                    <div class="login_form_inputs">--%>
        <%--                        <input type="text" name="memberId" id="memberId" placeholder="아이디 입력">--%>
        <%--                        <input type="password" name="memberPw" id="memberPw" placeholder="비밀번호 입력">--%>
        <%--                    </div>--%>
        <%--                    <div class="login_form_btn">--%>
        <%--                        <label for="saveId">--%>
        <%--                            <input type="checkbox" name="saveId" id="saveId">--%>
        <%--                            아이디 저장--%>
        <%--                        </label>--%>
        <%--                        <button class="loginFormBtn" formaction="#" formmethod="post">아이디 찾기</button>--%>
        <%--                        <button class="loginFormBtn" onclick="window.location.href='#'">비밀번호 찾기</button>--%>
        <%--                        <button class="loginFormBtn" onclick="window.location.href='#'">회원가입</button>--%>
        <%--                    </div>--%>
        <%--                    <div class="login_form_login">--%>
        <%--                        <button type="submit" id="loginBtn">로그인</button>--%>
        <%--                    </div>--%>
        <%--                    <div class="login_form_api">--%>
        <%--                        <button type="submit" id="loginByGoogle">구글 아이디로 로그인</button>--%>
        <%--                        <button type="submit" id="loginByKakao">카카오 아이디로 로그인</button>--%>
        <%--                    </div>--%>
        <%--                </fieldset>--%>
        <%--            </form>--%>
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">환영합니다!</h1>
                                    </div>
                                    <form action="/login.do" object="${loginForm}" method="post" class="user">
                                        <!-- name속성: 서버로 전송할 때 변수이름의 역할 -->
                                        <div class="form-group">
                                            <input type="text" name="userEmail"
                                                   class="form-control form-control-user"
                                                   value="<%= loginForm.getuserEmail() %>"
                                                   placeholder="Enter Email Address...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="userPw"
                                                   class="form-control form-control-user"
                                                   value="<%= loginForm.getuserPw()%>"
                                                   id="exampleInputPassword" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="customCheck">아이디 저장</label>
                                            </div>
                                        </div>
                                        <div>
                                            <input type="submit" value="로그인2"
                                                   class="btn btn-primary btn-user btn-block">
                                        </div>
                                        <hr>
                                        <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <%--                                        <a href="index.html" class="btn btn-facebook btn-user btn-block">--%>
                                        <%--                                            <i class="fab fa-facebook-f fa-fw"></i> Login with KakaoTalk--%>
                                        <%--                                        </a>--%>
                                        <div>
                                            <input type="hidden" name="${_csrf.parameterName}"
                                                   value="${_csrf.token}">
                                        </div>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="login/findPw">비밀번호 찾기</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="login/register">회원가입</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--                </div>--%>
        <div class="dum_area">
            <%--flex용 더미 데이터            --%>
        </div>
    </div>
    <%-- footer --%>
    <%@ include file="/WEB-INF/views/includes/footer.jsp" %>
</div>
</body>
</html>
