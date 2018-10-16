<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
	<link rel="stylesheet"
		href="${contextPath }/resources/css/noscript.css" />
		
	</head>
	<body class="is-preload">
	<c:import url="../common/headBar.jsp" />

			
			<div id="wrapper" class="fade-in">
					
					<header id="header">
					</header>
			    
	<c:set var="mid" value="${ loginUser.mid }" scope="session"/>
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

		<div id="main">

			<article class="post featured">
			
			<h2>문의내역</h2>
				<br><br>
				<div class="table-wrapper">
					<table>
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>이주가 무모한 시도를 하는 중</td>
								<td>고성희</td>
								<td>349802</td>
								<td width="150px">(2018.09.19)</td>
							</tr>
							<tr>
								<td>1</td>
								<td>이주가 무모한 시도를 하는 중</td>
								<td>고성희</td>
								<td>349802</td>
								<td width="150px">(2018.09.19)</td>
							</tr>
							<tr>
								<td>1</td>
								<td>이주가 무모한 시도를 하는 중</td>
								<td>고성희</td>
								<td>349802</td>
								<td width="150px">(2018.09.19)</td>
							</tr>
						</tbody>
						<tfoot>
					</table>
				</div>
				
				<div>
					<button class="button"><a href="writeQna.bo">문의작성</a></button>
				</div>

			
			
			
			
			
			<div class="progress">
  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
</div>
			
			</article>
			
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