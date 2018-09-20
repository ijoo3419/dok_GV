<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>

<style>
table tr th{
	text-align:center !important;
}

h3{
	float:left !important;

}
select {
display: inline-block !important;
	width: 200px !important;
}

progress {
  vertical-align: baseline;
}

.progress {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  width:200px;
  height: 1rem;
  overflow: hidden;
  font-size: 0.65625rem;
  background-color: #EDEDED;
}

.progress {
  height: 20px;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 1rem 0;
  }
  to {
    background-position: 0 0;
  }
}

@keyframes progress-bar-stripes {
  from {
    background-position: 1rem 0;
  }
  to {
    background-position: 0 0;
  }
}

.progress-bar {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  background-color: #593196;
  -webkit-transition: width 0.6s ease;
  transition: width 0.6s ease;
}

@media screen and (prefers-reduced-motion: reduce) {
  .progress-bar {
    -webkit-transition: none;
    transition: none;
  }
}

.progress-bar-striped {
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 1rem 1rem;
}

.progress-bar-animated {
  -webkit-animation: progress-bar-stripes 1s linear infinite;
          animation: progress-bar-stripes 1s linear infinite;
}



</style>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<noscript>
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
	<link rel="stylesheet"
		href="${contextPath }/resources/css/noscript.css" />
</noscript>
</head>
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
				<li><a href="playManagePage.jsp"><font size="4">상영등록</font></a></li>
				<li><a href="theaterManagePage.jsp"><font size="4">영화관
							등록</font></a></li>
				<li><a href="movieRoomManagePage.jsp"><font size="4">상영관
							등록</font></a></li>
				<li><a href="statsManagePage.jsp"><font size="4">통계/관리</font></a></li>
				<li class="active"><a href="reservationManagePage.jsp"><font
						size="4">예매 현황</font></a></li>
				<li><a href="noticeManagePage.jsp"><font size="4">공지사항
							등록</font></a></li>
				<li><a href="inquireManagePage.jsp"><font size="4">문의내역</font></a></li>

			</ul>
			<!--  <ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						</ul>-->
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<article class="post featured">

				<div class="col-12">	
				<div>
				<h3>날짜 : &nbsp;&nbsp;  <select name="demo-category" id="demo-category">

						<option value="">- 날 짜 -</option>
						<option value="1">09/11</option>
						<option value="1">09/12</option>
						<option value="1">09/13</option>
						<option value="1">09/14</option>
					</select></h3>
				</div>
				</div>
				<br><br>
				<br><br>
				<!-- Table -->
				<div class="table-wrapper">
					<table>
						<thead>
							<tr>
								<th>회차</th>
								<th>상영시간</th>
								<th>영화</th>
								<th>상영관</th>
								<th>예매율</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>11:00 ~ 12:20</td>
								<td>너의결혼식</td>
								<td>1관(45석)</td>
								<td width="150px">80%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="10" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>11:40 ~ 12:50</td>
								<td>쿵푸팬더</td>
								<td>1관(45석)</td>
								<td width="150px">50%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 50%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>13:20 ~ 14:50</td>
								<td>너의결혼식</td>
								<td>2관(30석)</td>
								<td width="150px">40%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>14:00 ~ 15:20</td>
								<td>겨울왕국2</td>
								<td>1관(45석)</td>
								<td width="150px">60%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>5</td>
								<td>16:20 ~ 17:40</td>
								<td>겨울왕국2</td>
								<td>1관(45석)</td>
								<td width="150px">20%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 20%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>6</td>
								<td>18:50 ~ 19:20</td>
								<td>쿵푸팬더</td>
								<td>2관(30석)</td>
								<td width="150px">92%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 92%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>7</td>
								<td>00:00 ~ 01:40</td>
								<td>너의결혼식</td>
								<td>1관(45석)</td>
								<td width="150px">100%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 100%"></div>
									</div>
								</td>
							</tr>
						</tbody>
						<tfoot>
					</table>
				</div>





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