<%-- 
    Document   : logout
    Created on : May 20, 2025, 12:14:12 AM
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Hủy session hiện tại (nếu có)
    session.invalidate();

    // Chuyển hướng về trang đăng nhập
    response.sendRedirect("Login.jsp");
%>

