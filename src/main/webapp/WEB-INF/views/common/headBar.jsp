<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>headBar</title>
<style>
.headerd {
	position: fixed;
	height: 50px;
	top: 0;
	width: 100%;
	background-color: #fff;
	border-bottom: 1px solid #e5e5e5;
	z-index: 1000;
}

.nau {
	padding: 0;
	margin: 0;
	list-style: none;
}

.nau {
	margin-left: 600px;
	font-size: 0px;
}

.nli {
	width: 100px;
	display: inline-block;
	height: 50px;
	font-size: 17px;
	border-right: 1px solid #a9a5a5;
}

p {
	text-align: center;
}

.logo {
	float: left;
	margin-left: 200px;
}

a:hover {
	cursor: pointer;
}
a:-webkit-any-link{
	text-decoration:none;
	text-decoration-style:none;
	text-decoration-color:none;
	color:black;
}
</style>
</head>
<body>
	<div class="headerd">
		<div class="logo">
			<img src="${contextPath }/resources/images/logo.jpg" height="40px"
				width="150px">
		</div>
		<ul class="nau">	<!-- href="#"부분 자신한테 맞게 변경하기 ex) 로그인 : href="login.me"-->
			<li class="nli" style="border-left: 1px solid #a9a5a5;"><a
				href="movie.mo" title="영화 바로가기"><p>영화</p></a></li>
			<li class="nli"><a href="cinema.ci" title="극장 바로가기"><p>극장</p></a></li>
			<li class="nli"><a href="#" title="예매 바로가기"><p>예매</p></a></li>
			<li class="nli"><a href="#" title="공지사항 바로가기"><p>공지사항</p></a></li>
			<li class="nli"><a href="#" title="로그인 하기"><p>로그인</p></a></li>
			<li class="nli"><a href="#" title="로그아웃 하기"><p>로그아웃</p></a></li>
			<li class="nli"><a href="#" title="마이페이지 바로가기"><p>마이페이지</p></a></li>
			<li class="nli"><a href="#" title="영화관 관리 바로가기"><p>영화관관리</p></a></li>
			<li class="nli"><a href="admin.ad" title="관리자 페이지"><p>관리자</p></a></li>
		</ul>
	</div>
</body>
</html>