<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
    }

    nav {
        background-color: #333;
        overflow: hidden;
    }

    nav a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }

    nav a:hover {
        background-color: #ddd;
        color: black;
    }

    nav a.logo {
        font-size: 24px;
        font-weight: bold;
    }

    nav button {
        float: right;
        display: block;
        background-color: transparent;
        border: none;
        color: white;
        padding: 14px 20px;
        cursor: pointer;
    }

    nav button:hover {
        background-color: #ddd;
        color: black;
    }
    
    .content-box {
        height: 500px;
        background-color: #bfefff;
        padding: 20px;
        
    }
    
    .input-type {
     text-align: center;
        
    }
</style>
</head>
<body>

<nav>
    <a href="/home/main" class="logo">로고이미지</a>
    <a href="/home/main">Home</a>
    <a href="#">VR 아카이빙</a>
    <a href="#">영상 게시판</a>
    <a href="#">디지털 조감도</a>
    <c:if test="${empty login}">
    <button type="button" onclick="location.href='/home/login'">로그인</button>
    <button type="button" onclick="location.href='/home/newMember'">회원가입</button>
    </c:if>
    <c:if test="${!empty login}">
    </c:if>
    
</nav>

<div class="content-box">
	
</div>
<div class="input-type">
<input type="text"><button>검색</button>
</div>
</body>
</html>