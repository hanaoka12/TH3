<%-- 
    Document   : Login
    Created on : May 8, 2024, 1:51:24 PM
    Author     : 503
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
    <h1>Đăng nhập</h1>
    <form action="login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${requestScope.rememberedUsername}" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="checkbox" id="rememberMe" name="rememberMe">
        <label for="rememberMe">Nhớ tài khoản</label><br><br>
        <button type="submit">Đăng nhập</button>
    </form>
</body>
</html>


