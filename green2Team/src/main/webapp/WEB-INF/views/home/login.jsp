<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            background-color: black; /* 전체 배경을 검정색으로 설정 */
            color: black; /* 글자 색상을 흰색으로 설정 */
        }

        form {
            background-color: white; /* 폼 태그를 하얀색으로 설정 */
            padding: 20px; /* 내부 여백 설정 */
            border-radius: 10px; /* 폼 태그 모서리를 둥글게 만듦 */
            width: 300px; /* 폼의 너비 설정 */
            margin: 0 auto; /* 가운데 정렬 */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* 그림자 효과 추가 */
        }
    </style>
</head>
<body>
	
    <form action="" method="post">
    <h3>로그인</h3>
        아이디 : <input type="text" name="id" value="${loginCommand.id}" required><br>
        비밀번호 : <input type="password" name="pw" required><br> 
        <input type="checkbox" id="rememberId" name="rememberId">로그인 저장
        <a href="#">비밀번호 찾기</a>
        <button type="submit">로그인</button>
        <p>소셜 로그인</p>
        <button>구글</button><button>카카오</button>
        <p>아이디가 없으신가요?<a href="/home/newMember">가입하기</a></p>
        					
    </form>
</body>
</html>