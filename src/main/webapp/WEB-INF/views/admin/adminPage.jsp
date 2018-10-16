<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<!--
   Massively by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Elements Reference - Massively by HTML5 UP</title>
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
<style>
.post {
	display: none;
}

.post.current {
	display: inherit;
}

#colsize {
	width: 25%;
	heigth: 500px;
}

#gsearch {
	margin-left: 10px;
	display: inline-block;
}

#bgsearch {
	margin-left: 10px;
	display: inline-block;
}

#gicon {
	margin-left: 10px;
}

#colimg {
	width: 100%;
	height: 300px;
}

#modimg {
	width: 210px;
	margin-left: 3px;
}

#pageid {
	margin-left: 250px;
}

#graphsize {
	width: 50%;
	heigth: 500px;
}

#modgraph {
	width: 400px;
	margin-left: 25px;
}

#update {
	margin-left: 30px;
}

#searchot {
	width: 170px;
	display: inline-block;
	margin-left: 80px;
}

#searchbot {
	width: 170px;
	display: inline-block;
	margin-left: 80px;
}

#file {
	dispaly: none;
}
</style>
</head>
<body class="is-preload">
	<c:import url="../common/headBar.jsp" />
	<!-- Wrapper -->
	<br>
	<br>
	<br>
	<br>

	<!-- <header id="header">
         </header> -->
	<!-- Nav -->
	<nav id="nav">
		<ul class="links">
			<li class="tab-link1 current" data-tab="tab-1"><a
				href="searchAll.ad?currentPage=1&searchResult=M&searchCondition=id">회원
					관리</a></li>
			<li class="tab-link2" data-tab="tab-2"><a
				href="searchBlack.ad?currentPage=1&searchResult=M&searchCondition=repedId">블랙리스트
					관리 관리</a></li>
			<li class="tab-link3" data-tab="tab-3"><a href="upload.ad">메인페이지
					관리</a></li>
			<li class="tab-link4" data-tab="tab-4"><a href="statistics.ad">통계</a></li>
			<li class="tab-link5" data-tab="tab-5"><a>문의 사항</a></li>
			<li class="tab-link6" data-tab="tab-6"><a>공지사항</a></li>
			<li class="tab-link7" data-tab="tab-7"><a href="addmovie.ad">영화
					추가</a></li>
		</ul>
	</nav>


	<!-- Main -->
	<div id="main">

		<!-- Post -->
		<!-- 첫번째 탭(회원 관리) -->
		<section id="tab-1" class="post current">
			<!-- Table -->
			<h2>회원 관리</h2>
			<select id="amember" name="amember" onchange="select()"
				style="width: 150px">
				<option value="">정렬기준</option>
				<option value="all">전체회원</option>
				<option value="buyer">일반회원</option>
				<option value="seller">판매자회원</option>
			</select> <br>


			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>Id</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>회원등급</th>
							<th>생일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="am" items="${mlist }">
							<tr>
								<td>${am.mid }</td>
								<td>${am.email }</td>
								<td>${am.user_name }</td>
								<td>${am.phone }</td>
								<td>${am.user_class }</td>
								<td>${am.birthday }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div id="pageid" class="pagination">
					<c:choose>
						<c:when test="${aval == 'all'}">
							<c:set var="search" value="searchAll.ad"></c:set>
						</c:when>
						<c:when test="${aval == 'buyer'}">
							<c:set var="search" value="searchBu.ad"></c:set>
						</c:when>
						<c:when test="${aval == 'seller' }">
							<c:set var="search" value="searchSe.ad"></c:set>
						</c:when>
					</c:choose>
					<c:if test="${pi.currentPage <=1 }">
						<a>&lt;이전&nbsp;</a>
					</c:if>
					<c:if test="${pi.currentPage > 1 }">
						<c:url var="blistBack" value="${search }">
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
							<c:url var="blistCheck" value="${search }">
								<c:param name="currentPage" value="${p }" />
								<c:param name="searchResult" value="${sc.searchResult}" />
								<c:param name="searchCondition" value="${sc.searchCondition}" />
							</c:url>
							<a href="${blistCheck }">${p }</a>
						</c:if>
					</c:forEach>
					<c:if test="${pi.currentPage >= pi.maxPage}">
						&nbsp; <a>다음&gt;</a>
					</c:if>
					<c:if test="${pi.currentPage < pi.maxPage }">
						<c:url var="blistEnd" value="${search }">
							<c:param name="currentPage" value="${pi.currentPage + 1 }" />
							<c:param name="searchResult" value="${sc.searchResult }" />
							<c:param name="searchCondition" value="${sc.searchCondition }" />
						</c:url>
						<a href="${blistEnd }">&nbsp;다음&gt;</a>
					</c:if>
				</div>


				<div class="search">
					<select id="searchot" name="searchot">
						<option value="">조회기준</option>
						<option value="id">아이디</option>
						<option value="name">이름</option>
					</select> <input id="gsearch" name="gsearch" type="text" value
						placeholder="검색" style="width: 300px"> <a href="#"
						id="gicon" class="button primary icon fa-search"
						onclick="searchopt()"> 조회 </a>
				</div>
			</div>

		</section>

		<!-- 두번째 탭(전체회원 관리) -->
		<!-- Table -->
		<section id="tab-2" class="post">
			<h2>블랙 리스트 관리 관리</h2>
			<br>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>신고 리플 번호</th>
							<th>신고자 ID</th>
							<th>신고 구분</th>
							<th>신고 내용</th>
							<th>신고 처리일</th>
							<th>피신고자 ID</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="ar" items="${rlist }">
							<tr>
								<td>${ar.rep_id }</td>
								<td>${ar.rid }</td>
								<td>${ar.rep_userid }</td>
								<td>${ar.rep_level }</td>
								<td>${ar.rep_content }</td>
								<td>${ar.treat_date }</td>
								<td>${ar.reped_userid }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id="pageid" class="pagination">
					<c:if test="${pi.currentPage <=1 }">
						<a>&lt;이전&nbsp;</a>
					</c:if>
					<c:if test="${pi.currentPage > 1 }">
						<c:url var="blistBack" value="searchBlack.ad">
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

				<div class="search">
					<select id="searchot" name="searchbot">
						<option value="">조회기준</option>
						<option value="repedId">피신고자ID</option>
					</select> <input id="bgsearch" name="bgsearch" type="text" value
						placeholder="검색" style="width: 300px"> <a href="#"
						id="gicon" class="button primary icon fa-search"
						onclick="searchbopt()"> 조회 </a>
				</div>
			</div>


		</section>

		<!-- 세번째 탭(메인 페이지 관리) -->
		<section id="tab-3" class="post">
			<h2>메인 페이지 관리</h2>
			<br>
			<div class="box alt">
				<div class="row gtr-50 gtr-uniform">
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) >= 1 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(0).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 1 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide3jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file').click();">슬라이드1 수정</a>
							<input type="file" id="file" name="file"
								onchange="document.getElementById('fsub').click();"
								style="display: none;">
							<button type="submit" id="fsub" name="fsub"
								style="display: none;">
						</form>
					</div>
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) >= 2 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(1).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 2 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide4.jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file2').click();">슬라이드2 수정</a>
							<input type="file" id="file2" name="file2"
								onchange="document.getElementById('fsub2').click();"
								style="display: none;">
							<button type="submit" id="fsub2" name="fsub"
								style="display: none;">
						</form>
					</div>
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) >= 3 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(2).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 3 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide1.jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file3').click();">슬라이드3 수정</a>
							<input type="file" id="file3" name="file3"
								onchange="document.getElementById('fsub3').click();"
								style="display: none;">
							<button type="submit" id="fsub3" name="fsub"
								style="display: none;">
						</form>
					</div>
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) == 4 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(3).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 4 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide2.jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file4').click();">슬라이드4 수정</a>
							<input type="file" id="file4" name="file4"
								onchange="document.getElementById('fsub4').click();"
								style="display: none;">
							<button type="submit" id="fsub4" name="fsub"
								style="display: none;">
						</form>
					</div>
				</div>
			</div>
		</section>

		<!-- 네번째 탭(통계) -->
		<section id="tab-4" class="post">
			<h2>통계</h2>
			<br>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>1월</th>
							<th>2월</th>
							<th>3월</th>
							<th>4월</th>
							<th>5월</th>
							<th>6월</th>
							<th>7월</th>
							<th>8월</th>
							<th>9월</th>
							<th>10월</th>
							<th>11월</th>
							<th>12월</th>
							<th>today</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>3</td>
							<td>4</td>
							<td>5</td>
							<td>6</td>
							<td>7</td>
							<td>8</td>
							<td>9</td>
							<td>10</td>
							<td>11</td>
							<td>12</td>
							<td>value</td>
						</tr>
					</tbody>
				</table>
		</section>

		<!-- 다섯번째 탭(문의 사항) : 성희 공간 -->
		<section id="tab-5" class="post">
			<h2>문의사항</h2>


		</section>
		<!-- 여섯번째 탭(공지사항) : 성희 공간-->
		<section id="tab-6" class="post"></section>
		<!-- 일곱번째 탭(영화 추가) -->
		<section id="tab-7" class="post">
			<h2>영화 추가</h2>
			<br>
			<!-- <div>
				<span>영화 업데이트</span> <a id="update" href="#"
					class="button icon fa-download"> 업데이트 </a>
			</div> -->
				<form action="" method="post"
			
					encType="multipart/form-data">
					<div class="row gtr-uniform">

						<input type="hidden" name="mid"
							value="${ requestScope.loginUser.mid }">
						<div class="col-6 col-12-xsmall">
							<h2 align="left">1.영화 제목</h2>
							<input type="text" name="theaterName" id="demo-name" value=""
								placeholder="영화 제목을 입력하세요." />
								<h2 align="left">2.영어 제목</h2>
								<input type="text" name="theaterName" id="demo-name" value=""
								placeholder="영어 제목을 입력하세요." />
						</div>
					</div>
					<br>
					<br>
					<h2 align="left">2.영화 줄거리</h2>
					<!-- Break -->
					<div class="col-12">
						<textarea name="theaterText" id="demo-message"
							placeholder="영화 줄거리를 입력해 주세요" rows="6"></textarea>
					</div>
					<br>
					<br>
					<h2 align="left">3.찾아오는 길</h2>
					<!-- Break -->
					<div class="col-12">
					<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
					<input type="text" name="fromDate" id="fromDate" class="web-font">
						<!-- <textarea name="theaterRoot" id="demo-message"
							placeholder="찾아오는 길을 입력해 주세요" rows="6"></textarea> -->
					</div>
					<script>
$(function() {
	    //오늘 날짜를 출력
		/* $("#today").text(new Date().toLocaleDateString()); */

		//datepicker 한국어로 사용하기 위한 언어설정
		$.datepicker.setDefaults($.datepicker.regional['ko']);

		// 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
		// 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

		//시작일.
		$('#fromDate').datepicker({
			showOn : "both", // 달력을 표시할 타이밍 (both: focus or button)
			buttonImage : "${ contextPath }/resources/images/date.png", // 버튼 이미지
			buttonImageOnly : true, // 버튼 이미지만 표시할지 여부
			buttonText : "날짜선택", // 버튼의 대체 텍스트
			dateFormat : "yy-mm-dd", // 날짜의 형식
			changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
			minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
			onClose : function(selectedDate) {
				// 시작일(fromDate) datepicker가 닫힐때
				// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
				$("#toDate").datepicker("option", "minDate", selectedDate);
			}
		});
	});
</script>
					<br>
					<br>
					<h2 align="left">4.영화관 사진</h2>
					<div class="col-12">

						<input class="fileInput" type="file" name="photo1"><br>
						 <input	class="fileInput" type="file" name="photo2"><br> 
						 <input class="fileInput" type="file"name="photo3"><br>
						 <input class="fileInput" type="file" name="photo4"><br> 


					</div>
					<br>
					<br>
					<br>
					<div class="col-6 col-12-xsmall">
						 	<div class="col-6 col-12-xsmall">
								<h3 align="left">5. 주소</h3>
							<br>
							<div class="addressBox">
							<input type="text" id="sample4_postcode" name="address1" placeholder="우편번호" style=" height:64px; width:400px; float:left; margin-bottom:15px;">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="margin-left:-380px; margin-top:10px; width:150px; height:45px;"><br> </div>
<input type="text" id="sample4_roadAddress" name="address2" placeholder="도로명주소">
<input type="text" id="sample4_jibunAddress" name="address3" placeholder="지번주소">
<span id="guide" style="color:#999"></span>
				
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

		</section>
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
	<!-- 탭관련 js파일 -->

	<script src="${contextPath }/resources/js/tab.js"></script>
	<!-- 회원 조회 부분 select태그 선택 관련 js파일 -->
	<script>
		function select() {
			var sresult = $("select[name=amember]").val();

			if (sresult == "all") {
				location.href = "searchAll.ad?currentPage=1&searchResult=null&searchCondition=null";
			} else if (sresult == "buyer") {
				location.href = "searchBu.ad?currentPage=1&searchResult=null&searchCondition=null";
			} else if (sresult == "seller") {
				location.href = "searchSe.ad?currentPage=1&searchResult=null&searchCondition=null";
			}
		}
	</script>
	<!-- search 부분 select 선택 관련 function -->
	<script>
		function searchopt() {
			var sresult = $("select[name=amember]").val();
			var searchCondition = $("select[name=searchot]").val();
			var searchResult = $("input[name=gsearch]").val();

			if (sresult == "all") {
				location.href = "searchAll.ad?currentPage=1&searchResult="
						+ searchResult + "&searchCondition=" + searchCondition;
			} else if (sresult == "buyer") {
				location.href = "searchBu.ad?currentPage=1&searchResult="
						+ searchResult + "&searchCondition=" + searchCondition;
			} else {
				location.href = "searchSe.ad?currentPage=1&searchResult="
						+ searchResult + "&searchCondition=" + searchCondition;
			}
		}
	</script>
	<!-- 블랙리스트 search 부분 select 선택 관련 function -->
	<script>
		function searchbopt() {
			var searchCondition = $("select[name=searchbot]").val();
			var searchResult = $("input[name=bgsearch]").val();
			alert("hi");
			console.log(searchCondition);
			location.href = "searchBlack.ad?currentPage=1&searchResult="
					+ searchResult + "&searchCondition=" + searchCondition;
		}
	</script>
	<!-- 기본 option값 설정 -->
	<script>
		$(function() {
			$("select option[value='${aval}']").prop("selected", true);
		})
	</script>
	<script>
		$(function() {
			$("select option[value='${sc.searchCondition}']").prop("selected",
					true);
		})
	</script>
	<script>
		$(document).ready(function() {
			var tab_id = '${tab}';
			var tab_id2 = 'tab-link' + tab_id.substring(4, 5);

			$('ul.link li').removeClass('current');
			$('.post').removeClass('current');

			$('.tab_id2').addClass('current');
			$("#" + tab_id).addClass('current');
		})
	</script>
	<script>
		function test() {
			alert("hi");
		}
	</script>
	</script>
	<!-- 템플릿 관련 js파일들 -->
	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>
</body>
</html>




