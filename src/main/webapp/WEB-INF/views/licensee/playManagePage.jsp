
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>


#playTable tr th {
	font-size: 24px !important;
	font-weight: bold;
	color: #935d8c;
}

#playTable tr td {
	color: black;
}

h2 {
	color: #935d8c;
}
</style>



<meta charset="UTF-8">
<title>Insert title here</title>

<title>Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
   <link rel="stylesheet"
      href="${contextPath }/resources/css/noscript.css" />
</noscript>

</head>
	<c:import url="../common/headBar.jsp" />

<body class="is-preload">


	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">
		<!-- Intro -->


		<!-- <div id="intro">
						<h1>This is<br />
						Massively</h1>
						<p>A free, fully responsive HTML5 + CSS3 site template designed by <a href="https://twitter.com/ajlkn">@ajlkn</a> for <a href="https://html5up.net">HTML5 UP</a><br />
						and released for free under the <a href="https://html5up.net/license">Creative Commons license</a>.</p>
						<ul class="actions">
							<li><a href="#header" class="button icon solo fa-arrow-down scrolly">Continue</a></li>
						</ul> 
					</div>
			 -->
		<!-- Header -->

		<header id="header">
			<!-- <a href="index.html" class="logo">Massively</a> -->
		</header>


		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li class="active"><a href="playManagePage.jsp"><font
						size="4">상영등록</font></a></li>
				<li><a href="theaterManagePage.jsp"><font size="4">영화관
							등록</font></a></li>
				<li><a href="movieRoomManagePage.jsp"><font size="4">상영관
							등록</font></a></li>
				<li><a href="statsManagePage.jsp"><font size="4">통계/관리</font></a></li>
				<li><a href="reservationManagePage.jsp"><font size="4">예매
							현황</font></a></li>
				<li><a href="noticeManagePage.jsp"><font size="4">공지사항
							등록</font></a></li>
				<li><a href="inquireManagePage.jsp"><font size="4">문의내역</font></a></li>
			</ul>
		</nav>



		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<!-- 이부분이 하얀 네모박스~~ -->
			<article class="post featured">


									
									
				<!-- 상영 정보 기입 폼 -->
				<form action="insert.me" method="post" encType="multipart/form-data">

					<div class="row gtr-uniform">
						<h2 align="left">1. 영화</h2>
						<div class="col-12">
							<select name="demo-category" id="demo-category">
								<option value="">- 영화 -</option>
								<option value="1">내가만든영화</option>
								<option value="1">너가만든영화</option>
								<option value="1">우리가만든영화</option>
								<option value="1">너네가만든영화</option>
							</select>
						</div>
						<br>
						<br>
						<div class="col-6 col-12-xsmall">
							<h2 align="left">2. 가격</h2>
							<input type="text" name="demo-name" id="demo-name" value=""
								placeholder="금액을 입력하세요" />
						</div>

						<!-- Break -->

					</div>
					<br>
					<br>
					<h2 align="left">3. 상영 정보</h2>
					<div class="table-wrapper">
						<table id="playTable">
							<tr>
								<th class="align-center">회차</th>
								<th class="align-center">상영날짜</th>
								<th class="align-center">가격</th>
								<th class="align-center">상영시간</th>
								<th class="align-center">상영관</th>
							</tr>
							<tr>
								<td>1</td>
								<td>09/18</td>
								<td>6000</td>
								<td>11:00</td>
								<td>2관(45석)</td>
							</tr>
							<tr>
								<td>2</td>
								<td>09/18</td>
								<td>6000</td>
								<td>11:40</td>
								<td>1관(30석)</td>
							</tr>
							<tr>
								<td>3</td>
								<td>09/19</td>
								<td>6000</td>
								<td>12:40</td>
								<td>2관(45석)</td>
							</tr>
							<tr>
								<td>4</td>
								<td>09/19</td>
								<td>6000</td>
								<td>13:20</td>
								<td>1관(30석)</td>
							</tr>
							<tr>
								<td>5</td>
								<td>09/20</td>
								<td>6000</td>
								<td>14:20</td>
								<td>1관(30석)</td>
							</tr>

						</table>
					</div>








				</form>
			</article>
		</div>



		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>