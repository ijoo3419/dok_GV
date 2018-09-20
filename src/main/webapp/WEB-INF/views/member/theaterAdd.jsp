<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>

header.major {
    margin: 0 0 4rem 0;
    margin-left: auto !important;
    margin-right: auto !important;
    text-align: center;
}

</style>





<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="is-preload">

	<%@ include file="../common/headBar.jsp"%>

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
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<li class="active"><a href="theaterAdd.me">영화관 등록</a></li>
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

			<!-- Posts -->
			<section class="posts">
				<header class="major">
					<h3>영화관 등록</h3>
					<h6>영화관 등록을 위해 심사 입력폼을 작성해 주세요. </h6>
				</header>
			</section>

			<form method="post" action="#">
				<div class="row gtr-uniform">
					<div class="col-6 col-12-xsmall">
						<input type="text" placeholder="Name" value=""  />
					</div>
					<div class="col-6 col-12-xsmall">
						<input type="text" name="seller_no" id="seller_no" value="" placeholder="사업자번호" />
					</div>
					<!-- Break -->
<!-- 					<div class="col-12">
						<select name="demo-category" id="demo-category">
							<option value="">- Category -</option>
							<option value="1">Manufacturing</option>
							<option value="1">Shipping</option>
							<option value="1">Administration</option>
							<option value="1">Human Resources</option>
						</select>
					</div> -->
					<!-- Break -->
<!-- 					<div class="col-4 col-12-small">
						<input type="radio" id="demo-priority-low" name="demo-priority"
							checked> <label for="demo-priority-low">Low</label>
					</div>
					<div class="col-4 col-12-small">
						<input type="radio" id="demo-priority-normal" name="demo-priority">
						<label for="demo-priority-normal">Normal</label>
					</div>
					<div class="col-4 col-12-small">
						<input type="radio" id="demo-priority-high" name="demo-priority">
						<label for="demo-priority-high">High</label>
					</div> -->
					<!-- Break -->
<!-- 					<div class="col-6 col-12-small">
						<input type="checkbox" id="demo-copy" name="demo-copy"> <label
							for="demo-copy">Email me a copy</label>
					</div>
					<div class="col-6 col-12-small">
						<input type="checkbox" id="demo-human" name="demo-human" checked>
						<label for="demo-human">I am a human</label>
					</div> -->
					<!-- Break -->
					<div class="col-12">
						<textarea name="demo-message" id="demo-message"
							placeholder="영화관의 이름, 위치, 상영중인 영화 등 영화관에 관한 정보를 입력해 주세요." rows="6"></textarea>
					</div>
					<!-- Break -->
					<div class="col-12">
						<ul class="actions">
							<li><input type="submit" value="Send Message"
								class="primary" /></li>
							<li><input type="reset" value="Reset" /></li>
						</ul>
					</div>
				</div>
			</form>


		</div>


		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>

	<!-- Scripts -->
	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>

</body>
</html>