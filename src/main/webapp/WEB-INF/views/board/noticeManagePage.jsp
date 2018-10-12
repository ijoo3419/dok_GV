<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript><link rel="stylesheet"href="${contextPath }/resources/css/noscript.css" /></noscript>
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<title>Insert title here</title>
<style>
	#searchValue{
		margin-left: 10px;
		display: inline-block;
	}
	
	#searchCondition{
		width: 170px;
		display: inline-block;
		margin-left: 80px;
	}
</style>

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
			
			<h2>공지사항</h2>
				<br><br>
				<div class="table-wrapper">
					<table id="boardArea" align="center">
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>작성일</th>
							</tr>
						<c:if test="${ list == null }">
							<tr>
								<td>등록된 공지사항이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${ list != null }">
							<c:forEach var="list" items="${ list }">
								<tr>
									<td>${ list.board_id }</td>
									<td>${ list.btitle }</td>
									<td>${ list.nickname }</td>
									<td>${ list.bcount }</td>
									<td>${ list.board_date }</td>
								</tr>
							</c:forEach>
						</c:if>
						<tfoot>
					</table>
				</div>
				
				<script>
				$(function(){
					$("#boardArea").find("td").mouseenter(function(){
						console.log("클릭");
						$(this).parents("tr").css({"cursor":"pointer"});
					}).click(function(){
						var board_id = $(this).parents().children("td").eq(0).text();
						console.log(board_id);
						location.href = "selectNoticeOne.bo?board_id=" + board_id;
					}); 
				});
				</script>
				
				
				<div class="search">
					<select id="searchCondition" name="searchCondition" style="width:150px; height: 40px">
						<option value="">검색기준</option>
						<option value="btitle">제목</option>
						<option value="bcontent">내용</option>

					</select><input id="searchValue" name="searchValue" type="text" placeholder="검색" style="width:300px"><a href="#" class="button primary icon fa-search" onclick="searchBoard()">조회</a>

				</div>
				<br>
				<script>
					function searchBoard(){
						var searchCondition = $("select[name=searchCondition]").val();
						var searchValue = $("input[name=searchValue]").val();
						
						location.href = "searchNoticeBoard.bo?currentPage=1&searchResult=" + searchResult 
								+ "&searchCondition=" + searchCondition;
						
					}
				</script>
				                                                                                                        
				<div>
					<button type="button" class="img_btn user cancel mr7"><a href="writeNotice.bo">공지작성</a></button>
				</div>
				
				<!-- 페이징 처리 -->
				<div id="pageid" class="pagination">
					<c:if test="${pi.currentPage <=1 }">
						<a>&lt;이전&nbsp;</a>
					</c:if>
					<c:if test="${pi.currentPage > 1 }">
						<c:url var="blistBack" value="noticeliPage.bo">
							<c:param name="currentPage" value="${pi.currentPage - 1 }" />
							<c:param name="searchResult" value="${sc.searchResult }" />
							<c:param name="searchCondition" value="${sc.searchCondition }" />
						</c:url>
						<a href="${blistBack }">&lt;이전&nbsp;</a>
					</c:if>
					<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
						<c:if test="${p eq pi.currentPage }">
							<b><font color="#18bfef " size="4"></b>
							</font>
							<a><b><font color="#18bfef" size="4">${p }</font></b></a>
						</c:if>
						<c:if test="${p ne pi.currentPage }">
							<c:url var="blistCheck" value="searchBlack.ad">
								<c:param name="currentPage" value="${p }" />
								<c:param name="searchResult" value="${sc.searchResult }" />
								<c:param name="searchCondition" value="${sc.searchCondition }" />
							</c:url>
							<a href="${blistCheck }">${p }</a>
						</c:if>
					</c:forEach>
					<c:if test="${pi.currentPage >= pi.maxPage}">
						&nbsp; <a>다음&gt;</a>
					</c:if>
					<c:if test="${pi.currentPage < pi.maxPage }">
						<c:url var="blistEnd" value="searchBlack.ad">
							<c:param name="currentPage" value="${pi.currentPage + 1 }" />
							<c:param name="searchResult" value="${sc.searchResult }" />
							<c:param name="searchResult" value="${sc.searchCondition }" />
						</c:url>
						<a href="${blistEnd }">&nbsp;다음&gt;</a>
					</c:if>
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