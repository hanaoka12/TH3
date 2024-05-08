<%-- 
    Document   : dashboard
    Created on : May 8, 2024, 1:51:33 PM
    Author     : 503
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
    <h1>Dashboard</h1>
    <% 
        String username = (String) session.getAttribute("username");
        if(username != null) {
    %>
        <p>Chào mừng, <%= username %>!</p>
        <form action="logout.jsp" method="post">
            <button type="submit">Đăng xuất</button>
        </form>
        <form action="login" method="post">
            <input type="checkbox" id="rememberMe" name="rememberMe">
            <label for="rememberMe">Nhớ tài khoản</label><br><br>
            <button type="submit">Cập nhật cài đặt</button>
        </form>
    <% } else { %>
        <p>Bạn chưa đăng nhập!</p>
        <a href="login.jsp">Đăng nhập</a>
    <% } %>
</body>
</html>


