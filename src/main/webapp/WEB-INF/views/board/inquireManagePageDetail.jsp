<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>

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
<body class="is-preload">
	<c:import url="../common/headBar.jsp" />


	<div id="wrapper" class="fade-in">

		<header id="header">
		</header>

	<nav id="nav">
			<ul class="links">
				<li><a href="play.li"><fontsize="4">상영등록</font></a></li>
				<li><a href="theater.li"><font size="4">영화관등록</font></a></li>
				<li><a href="movieRoom.li"><font size="4">상영관등록</font></a></li>
				<li><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li><a href="reservation.li"><font size="4">예매현황</font></a></li>
				<li><a href="notice.li"><font size="4">공지사항/등록</font></a></li>
				<li><a href="inquire.li"><font size="4">문의내역</font></a></li>
			</ul>
		</nav>
		
		</nav>

		<div id="main">

			<article class="post featured">
			
			<h2>공지사항 상세보기</h2>
				<br><br>
				
				<table align="center">
					<tr>
						<td width="100px">글번호</td>
						<td><b>글번호</b></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><b>제목</b></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><b>작성자</b></td>
					</tr>
					<tr>
						<td>조회수</td>
						<td><b>조회수</b></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td><b>작성일</b></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><p style="height:100px"><b>내용</b></p></td>
					</tr>
				</table>
				<table align="center">
					<tr>
						<td>
							<textarea cols="60" rows="5"></textarea>
						</td>
						<td>
							<button>등록하기</button>
						</td>
					</tr>
					<tr>
						<td colspan="2"><b>답글(갯수)</b></td>
					</tr>
				</table>
				<hr>
				<%-- <c:if test="댓글갯수 > 0">
					<table align="center">
					<%-- 	<c:forEach var="r" item="댓글리스트">
							<tr>
								<td width="100px">유저네임</td>
								<td width="300px">댓글내용</td>
								<td width="100px">날짜</td>
							</tr>
						</c:forEach> --%>
					</table>
				<%-- </c:if>  --%>
	
			
			
			
			
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