<%--
  Created by IntelliJ IDEA.
  User: ckdud
  Date: 2022-05-31
  Time: 오후 1:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="persistence.dto.TeacherDTO" %>
<%@ page import="persistence.dao.TeacherDAO" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Teacher.css
" type="text/css">
</head>
<body>
<jsp:useBean id="TeacherDTO" class="persistence.dto.TeacherDTO"></jsp:useBean>
<jsp:setProperty property="*" name="TeacherDTO"></jsp:setProperty>
<% TeacherDAO dao = TeacherDAO.getInstance();
    dao.Create(TeacherDTO);
%>
<div>
    <table>
        <tr>
            <td>아이디</td>
            <td><%=TeacherDTO.getTeacherId()%></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><%=TeacherDTO.getTeacherPassWord()%></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><%=TeacherDTO.getTeacherName()%></td>
        </tr>
    </table>
</div>
</body>
</html>
