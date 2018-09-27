<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<style>
input[type="checkbox"] {
  		transform: scale(5);
	} 
	
.col-6 col-12-xsmall .button primary small{
	float:left !important;
}
.col-6 col-12-xsmall{
	width:800px !important;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
		
		 <title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
   <link rel="stylesheet"
      href="${contextPath }/resources/css/noscript.css" />
</noscript>
		
	</head>
	<body class="is-preload">
	<c:import url="../common/headBar.jsp" />

			
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
				<li><a href="play.li"><font
						size="4">상영등록</font></a></li>
				<li><a href="theater.li"><font size="4">영화관
							등록</font></a></li>
				<li class="active"><a href="movieRoom.li"><font size="4">상영관
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

						<!-- Featured Post -->
							<article class="post featured">
							<!-- Form -->
									<h2>상영관 등록</h2>

									<form method="post" action="#">
										<div class="row gtr-uniform">
											<div class="col-6 col-12-xsmall">
										<h3 align="left">1.상영관 이름</h3>
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="예)1관, 2관" />
											</div>
											
											<div class="col-12">
									<h3 align="left">2.상영관 좌석수 등록</h3>
									<input type="checkbox"/>
		<%for(int i=1;i<(20*10)+1; i++){ %>
			
			<input type="checkbox" id='ch<%=i %>' name="bak" value="<%=i%>" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%if(i%20 == 0){ %>
				<br>
				<br><br>
			<%} %>
		<%} %>
	<hr><hr>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br>
	
											</div>
											
										<div class="col-6 col-12-xsmall">
								<h3 align="left">3. 주소</h3>
						<input type="text" name="demo-name" id="demo-name" value="" placeholder="우편번호">
							<ul class="actions">
										<li><a href="#" class="button primary small">검색</a></li>
									</ul>
								
								
									
						<input type="text" name="demo-name" id="demo-name" value="" placeholder="주소" />
						<input type="text" name="demo-name" id="demo-name" value="" placeholder="상세주소" />
								
											
											</div>			
											
											<br><br><br>
											<!-- Break -->
											<div class="col-12">
												<ul class="actions">
													<li align="center"><input type="submit" value="등록하기" class="primary" /></li>
													<li align="center"><input type="reset" value="돌아가기" /></li>
												</ul>
											</div>
										</div>
									</form>

									<hr />
								</article>
</div>
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