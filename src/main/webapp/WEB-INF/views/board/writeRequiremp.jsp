<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li class="active"><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
					<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">


			<!-- Posts -->
			<section class="post">
				<header class="major">
					<h3>문의사항 등록</h3>
					<h6>문의사항을 남겨주시면 빠른 시일내에 처리해드리겠습니다.</h6>
				</header>
			</section>

				<form action="insertNotice.bo" method="post" encType="multipart/form-data">
				<input type="hidden" id="mId" name="mId" value="${ loginUser.mid }">
					<div>
					<h2 align="left">0.분류를 선택해주세요</h2>
					<h4 align="left">사이트에 대한 문의는</h4> <input type="radio" id="dok" name="choose" value="dokGV">독GV
					<h4 align="left">독립영화관에 대한 문의는</h4> <input type="radio" id="cinema" name="choose" value="cinema" onclick="cinemacheck();">독립영화관
					<div id="cinemaCheck"></div>
					</div><br>
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<h2 align="left">1.제목</h2>
							<input type="text" name="btitle" id="btitle" placeholder="문의사항의 제목을 입력해주세요." />				
						</div>
					</div>
					<br>
					<h2 align="left">2.내용</h2>
				
					<div class="col-12">
						<textarea name="bcontent" id="bcontent" placeholder="문의하실 내용을 입력해주세요." rows="6"></textarea>
					</div>
					<br>
					<h2 align="left">3.파일첨부</h2>
					<div class="col-12">
						<input type="file" name="file">
					</div>
				<button type="submit" class="button">문의등록</button>
				
				</div>
				</form>
				
			<script>
				function cinemacheck(){
					var html = "";
					
					html += "<select>";
					html += "<option value=''>극장을 선택해주세요</option>";
					html += "</select>";
					
					$("#cinemaCheck").html(html);
				}
			</script>

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