<%--
  Created by IntelliJ IDEA.
  User: ckdud
  Date: 2022-05-31
  Time: 오전 2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>소공 체육 센터</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Teacher.css
" type="text/css">
</head>
<body>
<div class="header">
    <div class="logo"><h1>소공 체육 센터</h1></div>
</div>
<div class="nav-bar">
    <ul>
        <li><a class="active" href="/">Home</a></li>
        <li class="dropdown">
            <a href="${pageContext.request.contextPath}/userManage/" class="dropbtn">회원 관리</a>
            <div class="dropdown-content">
                <a href="#">회원 등록</a>
                <a href="#">회원 조회</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="${pageContext.request.contextPath}/" class="dropbtn">강사 관리</a>
            <div class="dropdown-content">
                <a href="${pageContext.request.contextPath}/TeacherManage/TecherCreate.jsp">강사 등록</a>
                <a href="${pageContext.request.contextPath}/TeacherManage/TeacherRead.jsp.jsp">강사 조회</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="${pageContext.request.contextPath}/" class="dropbtn">강습 관리</a>
            <div class="dropdown-content">
                <a href="#">강습 등록</a>
                <a href="#">수강 신청</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="#" class="dropbtn">공지사항</a>
            <div class="dropdown-content">
                <a href="#">공지 등록</a>
                <a href="#">공지 조회</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="#" class="dropbtn">사물함 관리</a>
            <div class="dropdown-content">
                <a href="#">사물함 생성</a>
                <a href="#">사물함 신청</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="#" class="dropbtn">매출 조회</a>
            <div class="dropdown-content">
                <a href="#">기간별 매출 조회</a>
                <a href="#">강습별 매출 조회</a>
            </div>
        </li>
    </ul>
</div>
<div id = "wrap">
    <br><br>
    <b><font size="6" color="gray">강사등록</font></b>
    <br><br><br>

    <form method="post" action="TeacherCreateView.jsp">
        <table>
            <tr>
                <td id="id">강사아이디</td>
                <td>
                    <input name="id" type="text">
                </td>
            </tr>
            <tr>
                <td id="name">강사이름</td>
                <td>
                    <input name="id" type="text">
                </td>
            </tr>
            <tr>
                <td id="password">강사비밀번호</td>
                <td>
                    <input name="id" type="password">
                </td>
            </tr>
        </table>
        <br>
        <input type="submit" value="강사등록">
    </form>
</div>
</body>
</html>
