<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<style>

table tr th{
width:250px;

} 
#playTable{
border-collapse:collapse;
}

#playTable tr th {
	font-size: 24px !important;
	font-weight: bold;
	color: #935d8c;
}

.god{
	border: 2px solid black;
    display: inline-block;
	width:100px;
	height:50px;
}

#playTable tr th td {
	color: black;
	border
}

h2 {
	color: #935d8c;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>



<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<!-- datepicker 한국어로 -->
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
	<c:set var="mid" value="${ loginUser.mid }" scope="session"/>
	<nav id="nav">
			<ul class="links">
				<li class="active"><a href="play.li"><font size="4">상영등록</font></a></li>
				<li><a href="theater.li"><font size="4">영화관등록</font></a></li>
				<li><a href="movieRoom.li"><font size="4">상영관등록</font></a></li>
				<li><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li><a href="reservation.li"><font size="4">예매현황</font></a></li>
				<li><a href="notice.li"><font size="4">공지사항/등록</font></a></li>
				<li><a href="inquire.li"><font size="4">문의내역</font></a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<!-- 이부분이 하얀 네모박스~~ -->
			<article class="post featured">


									
									
				<!-- 상영 정보 기입 폼 -->
				<form action="playInsert.li" method="post" encType="multipart/form-data">

					<div class="row gtr-uniform">
						<h2 align="left">1. 영화</h2>
						<div class="col-12">
							<input type="text" name="movie_title" id="demo-name" value=""
								placeholder="영화를 입력하세요" />
						
							<!-- <select name="movieCondition" id="demo-category">
								<option value="">- 영화 -</option>
								<option value="1"></option>
								<option value="1">너가만든영화</option>
								<option value="1">우리가만든영화</option>
								<option value="1">너네가만든영화</option>
							</select> -->
							
							
						</div>
						
					<br>
					<br>
					<h2 align="left">3. 상영 정보</h2>
					<div class="table-wrapper">
				
					<div class="god" id='btn-add-row'>행 추가하기</div>
					<div class="god" id='btn-delete-row'>행 삭제하기</div>
				<br><br>
				
						<table id="playTable" border="1" cellspacing="3">
						<tr>
								<th class="align-center">회차</th>
								<th class="align-center">가격</th>
								<th class="align-center">상영날짜</th>
								<th class="align-center">상영시간</th>
								<th class="align-center">상영관</th> 
						</tr>
							<tbody id="my-tbody">
							</tbody>
						</table>
					</div>
				
					<div class="col-12">
						<ul class="actions">
							<li align="center"><input type="submit" value="등록하기" class="primary" /></li>
							<li align="center"><input type="reset" value="돌아가기" /></li>
						</ul>
					</div>
						
						
											
				</form>
			</article>
				<hr>
				<br>
		</div>


		
		
		<!-- js -->
		<%-- <script src="${contextPath }/resources/js/jquery.min.js"></script>
		<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
		<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
		<script src="${contextPath }/resources/js/browser.min.js"></script>
		<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
		<script src="${contextPath }/resources/js/util.js"></script>
		<script src="${contextPath }/resources/js/main.js"></script>
		<script src="${contextPath }/resources/js/tab.js"></script> --%>
		
		<script src="//code.jquery.com/jquery.min.js"></script>
	
	
<!-- 테이블 행 추가 해주기 -->
    <script>
  var seq = 0;
  var $date = $('<input type="text" name="fromDate" id="fromDate" class="web-font">');
  var $dateText = $('<label for="fromDate" class="web-font"></label>');
  $('#btn-add-row').click(function() {
	
	++seq;
	
	
    var time = new Date().toLocaleTimeString();
    
    	
    $('#playTable > tbody:last').append('<tr><td>' + seq + '</td><td><input name="date" >'
    +	
    		'</td><td><input name=""</td><td><input name="time" ></td><td><input name="movieRoom" ></td></tr>');
  });
  $('#btn-delete-row').click(function() {
	  --seq;
    $('#playTable > tbody:last > tr:last').remove();
 
  });
  
</script>  
		
		<!-- 이건 테이블 상에서 -->
<!-- <script>
$(function() {
	   
		//시작일.
		$('#fromDate').datepicker({
			showOn : "both", // 달력을 표시할 타이밍 (both: focus or button)
			buttonText : "날짜선택", // 버튼의 대체 텍스트
			dateFormat : "yy-mm-dd", // 날짜의 형식
			changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
			//minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
			onClose : function(selectedDate) {
				// 시작일(fromDate) datepicker가 닫힐때
				// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
				$("#toDate").datepicker("option", "minDate", selectedDate);
			}
		});

	
	});
</script>   -->



</body>
</html>