<%--
  Created by IntelliJ IDEA.
  User: dlsxi
  Date: 2023-04-30
  Time: 오전 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/footer_bottom.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/mypage/myPage.css?after">
    <title>마이페이지</title>
    <link rel="stylesheet" href="${path}/resources/webjars/css/bootstrap.min.css">
    <script src="${path}/resources/webjars/js/bootstrap.min.js"></script>
</head>
<body>

<div class="body_container">
    <%@ include file="/WEB-INF/views/includes/header.jsp" %>
    <div class="main_content">

        <div class="TableParentContainer">

            <div class="h2_container">
                <div id="h2">
                    <h2>나의 찜 목록</h2>
                    <hr>
                    <br>
                </div>
            </div>

            <!-- 왼쪽 표 -->
            <div class="divInform">
                <table class="informTable">
                    <th id="modifyInfo">정보 수정</th>
                    <tr>
                        <td><a href="passwordChange">비밀번호 변경</a></td>
                    </tr>
                    <tr>
                        <td><a href="profile">계정</a></td>
                    </tr>
                    <tr>
                        <td><a href="myWishList">내가 찜한 목록</a></td>
                    </tr>
                    <tr>
                        <td><a href="reservation">예약 기록</a></td>
                    </tr>
                    <tr>
                        <td><a href="rental_write_form">대여 등록</a></td>
                    </tr>
                    <tr>
                        <td><a href="rental_manage">대여 관리</a></td>
                    </tr>
                    <tr>
                        <td><a href="rental_log">대여 기록</a></td>
                    </tr>
                </table>
            </div>

            <div class="TableChildContainer">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                    <tr>
                        <th>userEmail</th>
                        <th>content</th>
                        <th>memoDate</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>dlsxo@kyungmin.ac.kr</td>
                        <td>Sample content 1</td>
                        <td>2023-05-1</td>
                    </tr>
                    <tr>
                        <td>dbsdn@kyungmin.ac.kr</td>
                        <td>Sample content 2</td>
                        <td>2023-05-2</td>
                    </tr>
                    <tr>
                        <td>rhksgud@kyungmin.ac.kr</td>
                        <td>Sample content 3</td>
                        <td>2023-05-4</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>dbsdn@kyungmin.ac.kr</td>
                        <td>Sample content 2</td>
                        <td>2023-05-2</td>
                    </tr>
                    <tr>
                        <td>rhksgud@kyungmin.ac.kr</td>
                        <td>Sample content 3</td>
                        <td>2023-05-4</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    <tr>
                        <td>tkdgus@kyungmin.ac.kr</td>
                        <td>Sample content 4</td>
                        <td>2023-05-14</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <%-- footer --%>
    <%@ include file="/WEB-INF/views/includes/footer.jsp" %>
</div>
</body>
</html>
