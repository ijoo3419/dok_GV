<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

		<!-- Header -->

		<header id="header"> </header>

		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li class="active"><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<li><a href="theaterAdd.me">영화관 등록</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Post -->
			<section class="post">
				<header class="major">
					<h3>개인정보 수정</h3>
					<h6>회원님의 정보를 정확히 입력해주세요.</h6>
				</header>

				<!-- Text stuff -->

				<hr>

				<h3>기본정보 (필수입력)</h3>
				<div class="table-wrapper">
					<table class="alt">
						<thead>
							<tr>
								<th colspan="2">* 개인 정보를 확인 후 수정하실 수 있습니다. </th>
								
							</tr>
						</thead>
						<tbody>
						
							<tr>
								<td colspan="2"> * 비밀번호 </td>
								<td> <input type="password" id="inputtext2" name="password" fieldname="비밀번호" required=""> </td>
							</tr>
							<tr>
								<td colspan="2"> * 이름 </td>
								<td> <input type="text" id="memberName" name="memberName" value="이름" fieldname="이름" required="" allowtype="hangul"> </td>
							</tr>
							<tr>
								<td colspan="2"> * 생년월일 (20180919 형식으로 적어주세요.)</td>
								<td> 
								
								<input type="text" id="birthday" name="birthday"value="" fieldname="생년월일" required="" allowtype="number" maxlength="8">
							
								</td>
							</tr>
							<tr>
								<td colspan="2"> * 휴대폰 </td>
								<td> <input type="text" id="memberPhone" name="memberPhone" value="" fieldname="연락처" required="" allowtype="number"> </td>
							</tr>
							<tr>
								<td colspan="2"> * 이메일 </td>
								<td> <input type="text" id="email" name="email" value="" fieldname="이메일" required=""> </td>
							</tr>

						
							
						</tbody>

					</table>
					<br>
					<div align="center">
					<button type="button" class="img_btn user cancel mr7" id="myInfoModifycancel">취소</button>
					<button type="button" class="img_btn user modify ml7" onclick="MyPageMyInfoInput.save('')">수정</button>
					</div>
					
				</div>

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