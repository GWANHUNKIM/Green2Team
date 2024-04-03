<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <form action="" method="post" onsubmit="return validateForm()">
    <h3>회원가입</h3>
    	성 : <input type="text" name="firstName" size="5" required >
    	이름 : <input type="text" name="lastName" size="8" required ><br>
        아이디 : <input type="text" name="id" size="7" required ><br>
        비밀번호 : <input type="password" name="pw" required ><br>
        <input type="checkbox" id="agree" name="agree"><a href="javascript:showTerms()">약관</a>에 동의합니다
        <button type="submit">회원가입</button>
        <p>또는 소셜로 가입하기</p>
        <button>구글</button><button>카카오</button>
        <p>이미 아이디가 있으신가요?<a href="/home/login">로그인</a></p>			
    </form>
    
     <script>
        function validateForm() {
            var checkBox = document.getElementById("agree");
            if (!checkBox.checked) {
                alert("약관에 동의해주세요.");
                return false;
            }
            return true;
        }
        
        function showTerms() {
            let popup = window.open("","약관","width=400,height=300");
            popup.document.write("<h3>약관</h3>");
            popup.document.write("<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>");
        }

    </script>
    

</body>
</html>