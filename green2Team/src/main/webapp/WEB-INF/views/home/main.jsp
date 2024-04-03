<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

.BoardBox {
	border: 1px solid;
	margin-bottom: 10px;
	padding: 10px;
}
</style>
</head>
<body>

	<nav>
		<a href="/home/main" class="logo">로고이미지</a> <a href="/home/main">Home</a>
		<a href="#">VR 아카이빙</a> <a href="#">영상 게시판</a> <a href="#">디지털 조감도</a>
		<c:if test="${empty login}">
			<button type="button" onclick="location.href='/home/login'">로그인</button>
			<button type="button" onclick="location.href='/home/newMember'">회원가입</button>
		</c:if>
		<c:if test="${!empty login}">
		</c:if>

	</nav>

	<div class="content-box"></div>
	<div class="input-type">
		<input type="text">
		<button>검색</button>
	</div>


	<!-- VR 아카이빙 게시판 -->
	<div>
		<h3>VR 아카이빙</h3>
		<h5>
			법률이 정하는 주요방위산업체에 종사하는 근로자의 단체행동권은 법률이 정하는 바에 의하여 이를 제한하거나 인정하지 아니할 수
			있다. 대통령-국무총리-국무위원

			<!-- 버튼 클릭 시 VR 아카이빙 페이지(게시판)로 이동해야함 -->
			<button type="button" onclick="location.href='#'">See More
				-></button>
		</h5>

		<!-- 마우스 호버 시 업로드 날짜 기능 빠짐 -->

		<c:forEach items="${vrLists}" var="board">
			<div class="BoardBox">

				<img src="<c:out value="${board.vrThumbnailImgUrl}" />"
					alt="Thumbnail" width="100" height="100">

				<div>
					<p>
						<c:out value="${fn:substring(board.vrBoardContent, 0, 30)}" />
						<c:if test="${fn:length(board.vrBoardContent) > 30}">...</c:if>
					</p>
					<p>
						조회수:
						<c:out value="${board.vrViews}" />
					</p>
				</div>

				<!-- 버튼 클릭 시 해당 게시물 상세 페이지로 이동해야함 -->
				<button type="button" onclick="location.href='#'">Read More</button>

			</div>
		</c:forEach>
	</div>


	<!-- 영상 게시판 -->
	<div>
		<h3>영상 게시판</h3>
		<h5>
			법률이 정하는 주요방위산업체에 종사하는 근로자의 단체행동권은 법률이 정하는 바에 의하여 이를 제한하거나 인정하지 아니할 수
			있다. 대통령-국무총리-국무위원

			<!-- 버튼 클릭 시 영상 게시판 페이지(게시판)로 이동해야함 -->
			<button type="button" onclick="location.href='#'">See More
				-></button>
		</h5>

		<!-- 마우스 호버 시 업로드 날짜 기능 빠짐 -->

		<c:forEach items="${videoLists}" var="board">
			<div class="BoardBox">

				<img src="<c:out value="${board.videoThumbnailImgUrl}" />"
					alt="Thumbnail" width="100" height="100">

				<div>
					<p>
						<c:out value="${fn:substring(board.videoBoardContent, 0, 30)}" />
						<c:if test="${fn:length(board.videoBoardContent) > 30}">...</c:if>
					</p>
					<p>
						조회수:
						<c:out value="${board.videoViews}" />
					</p>
				</div>
				<!-- 버튼 클릭 시 해당 게시물 상세 페이지로 이동해야함 -->
				<button type="button" onclick="location.href='#'">Read More</button>

			</div>
		</c:forEach>
	</div>

</body>
</html>