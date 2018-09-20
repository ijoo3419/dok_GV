<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style>
#jb-container {
	width: 940px;
	margin: 0px auto;
	padding: 20px;
}

#jb-header {
	padding: 20px;
	margin-bottom: 20px;
}

#jb-content {
	width: 580px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
}

#jb-sidebar {
	width: 260px;
	padding: 20px;
	margin-bottom: 20px;
	float: left;
}

#jb-footer {
	clear: both;
	padding: 20px;
}

 #edit :hover {
	cursor: pointer;
}

@font-face {
	font-family: 'GoyangDeogyang' !important;
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GoyangDeogyang.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: GoyangDeogyang !important;
}

p {
	font-family: GoyangDeogyang;
}

li {
	font-family: GoyangDeogyang;
	list-style: none;
	padding-left: 0px;
}

</style>












<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
   <link rel="stylesheet"
      href="${contextPath }/resources/css/noscript.css" />
</noscript>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="is-preload">

	<%@ include file="../common/headBar.jsp"%>

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<header id="header">
			<!-- <a href="index.html" class="logo">Massively</a> -->
		</header>

		<!-- Nav -->
	<nav id="nav">
			<ul class="links">
				<li><a href="play.li"><font
						size="4">상영등록</font></a></li>
				<li><a href="theater.li"><font size="4">영화관
							등록</font></a></li>
				<li><a href="movieRoom.li"><font size="4">상영관
							등록</font></a></li>
				<li><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li><a href="reservation.li"><font size="4">예매
							현황</font></a></li>
				<li><a href="notice.li"><font size="4">공지사항
							등록</font></a></li>
				<li><a href="inquire.li"><font size="4">문의내역</font></a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Post -->
			<section class="post">
				<header class="major">
					<h4>loginUser님, 오늘도 영화 같은 하루 보내세요.</h4>
				</header>

				<!-- Text stuff -->

				<hr>



				<div id="jb-container" class="box"> 
					<!-- <div class="box" id="jb-header">
						<h1></h1>
					</div> -->
					<div id="jb-content" class="box">
						<div>
						<img align="left" src="http://image2.megabox.co.kr/mop/home/mypage/main_title4.png" alt="최근 예매 내역">
						<img align="right" onclick="booked()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="더보기" id="plus">
						<br>
						</div>
						<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu
							laoreet. Proin gravida velit dictum dui consequat malesuada.
							Aenean et nibh eu purus scelerisque aliquet nec non justo.
							Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut
							ultricies. Mauris id odio pretium, sollicitudin sapien eget,
							adipiscing risus.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu
							laoreet. Proin gravida velit dictum dui consequat malesuada.
							Aenean et nibh eu purus scelerisque aliquet nec non justo.
							Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut
							ultricies. Mauris id odio pretium, sollicitudin sapien eget,
							adipiscing risus.</p> -->
							
							<p>(영화포스터)(영화제목)(예매시간)(영화관)</p>
							<p>-</p>
							
					</div>
					<div id="jb-sidebar" class="box">
					<div class="h3_wrap">
						<img align="left" src="http://image2.megabox.co.kr/mop/home/mypage/main_title3.png" alt="개인정보">
						<img align="right" onclick="goToEdit()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn5.jpg" alt="수정하기 " id="edit">
						</div>
						<br>
						<ul>
							<li>휴대폰 : </li>
							<li>선호 장르 : </li>
						</ul>
					</div>
					
					<div id="jb-sidebar" class="box">
					<div class="h3_wrap">
						<img align="left" src="http://image2.megabox.co.kr/mop/home/mypage/main_title8.png" alt="나의문의내역">
						<img align="right" onclick="pluss()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="더보기" id="pluss">
						</div>
						<br>
						
						<ul>
							<p> 문의 내역이 없습니다. </p>
						</ul>
					
					</div>
					<div id="jb-footer" class="box">
						<img src="http://image2.megabox.co.kr/mop/home/mypage/main_title7.png" alt="나의 무비스토리">
						<br>
						<ul>
							<li><a href="javascript:void(0)" onclick="showMenu('mypage-moviestory', 'interesting')" title="보고싶어 보기">
								<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon1.png" onclick="wish()"></span>
								<strong class="ml10" onclick="wish()">보고싶어</strong>
								<strong class="c_purple pull-right">0</strong>
							</li>
							<li><a href="javascript:void(0)" onclick="showMenu('mypage-moviestory', 'seen')" title="본영화 보기">
								<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon2.png" onclick="watched()"></span>
								<strong class="ml10" onclick="watched()">본영화</strong>
								<strong class="c_purple pull-right">1</strong>
							</a></li>
							<li><a href="javascript:void(0)" onclick="showMenu('mypage-moviestory', 'comment')" title="나의 한줄평 보기">
								<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon4.png" onclick="rev()"></span>
								<strong class="ml10" onclick="rev()">나의 한줄평</strong>
								<strong class="c_purple pull-right">0</strong></li>
						</ul>
					</div>
				</div>
			</section>

		</div>



		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>
	
	<script>
		function goToEdit(){
			location.href = "editInfo.jsp";
		}
		
		function pluss(){
			location.href = "ask.jsp";
		}
		
		function watched(){
			location.href = "bookingHist.jsp";
		}
		
		function rev(){
			location.href = "reviews.jsp";
		}
		
		function wish(){
			location.href = "wishlist.jsp";
		}
		
		function booked(){
			location.href = "bookingHist.jsp";
		}
		
	</script>

	<!-- Scripts -->
	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>

</body>
</html>>