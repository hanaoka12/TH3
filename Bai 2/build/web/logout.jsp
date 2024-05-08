<%-- 
    Document   : logout
    Created on : May 8, 2024, 1:53:42 PM
    Author     : 503
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
    <h1>Logout</h1>
    <% 
        session.invalidate();
    %>
    <p>Bạn đã đăng xuất thành công!</p>
    <a href="login.jsp">Đăng nhập lại</a>
</body>
</html>

