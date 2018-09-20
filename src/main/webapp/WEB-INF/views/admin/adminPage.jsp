<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	margin-left: 200px;
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
#pageid{
	margin-left:250px;
}
#graphsize{
	width: 50%;
	heigth: 500px;
}
#modgraph {
	width: 400px;
	margin-left: 25px;
}
#update{
	margin-left:30px;
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
			<li class="tab-link current" data-tab="tab-1"><a>유저등급 관리</a></li>
			<li class="tab-link" data-tab="tab-2"><a>블랙리스트 관리</a></li>
			<li class="tab-link" data-tab="tab-3"><a>전체회원 관리</a></li>
			<li class="tab-link" data-tab="tab-4"><a>메인페이지 관리</a></li>
			<li class="tab-link" data-tab="tab-5"><a>통계</a></li>
			<li class="tab-link" data-tab="tab-6"><a>문의 사항</a></li>
			<li class="tab-link" data-tab="tab-7"><a>공지사항</a></li>
			<li class="tab-link" data-tab="tab-8"><a>영화 추가</a></li>
		</ul>
	</nav>

	<!-- Main -->
	<div id="main">

		<!-- Post -->
		<section id="tab-1" class="post current">

			<!-- 첫번째탭(유저 등급 관리) -->
			<h2>유저 등급 관리</h2>
			<br>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>Id</th>
							<th>등급 관리</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Id 1</td>
							<td>
								<a id="confirm" href="#" class="button primary small">승인</a>
								<a id="noconfirm" href="#" class="button small">미승인</a>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Id 2</td>
							<td>
								<a id="confirm" href="#" class="button primary small">승인</a>
								<a id="noconfirm" href="#" class="button small">미승인</a>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>Id 3</td>
							<td>
								<a id="confirm" href="#" class="button primary small">승인</a>
								<a id="noconfirm" href="#" class="button small">미승인</a>
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td>Id 4</td>
							<td>
								<a id="confirm" href="#" class="button primary small">승인</a>
								<a id="noconfirm" href="#" class="button small">미승인</a>
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td>Id 5</td>
							<td>
								<a id="confirm" href="#" class="button primary small">승인</a>
								<a id="noconfirm" href="#" class="button small">미승인</a>
							</td>
						</tr>
					</tbody>
				</table>
				<div id="pageid" class="pagination">
					<a href="#" class="page">&lt&lt </a>
					<a href="#" class="page active">1</a> 
					<a href="#" class="page">2</a>
					<a href="#" class="page">3</a> 
					<a href="#" class="page">4</a>
					<a href="#" class="page">5</a> 
					<a href="#" class="page">&gt&gt</a>
				</div>
				<div class="search">
					<input id="gsearch" type="text" value placeholder="검색"
						style="width: 300px"> <a href="#" id="gicon"
						class="button primary icon fa-search"> 조회 </a>
				</div>
			</div>

		</section>
		<!-- 두번째 탭(블랙리스트 관리) -->
		<section id="tab-2" class="post">

			<!-- Table -->
			<h2>블랙 리스트 관리 관리</h2>
			<br>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>Id</th>
							<th>신고 내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Id 1</td>
							<td>신고내용 1</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Id 2</td>
							<td>신고내용 2</td>
						</tr>
						<tr>
							<td>3</td>
							<td>Id 3</td>
							<td>신고내용 3</td>
						</tr>
						<tr>
							<td>4</td>
							<td>Id 4</td>
							<td>신고내용 4</td>
						</tr>
						<tr>
							<td>5</td>
							<td>Id 5</td>
							<td>신고내용 5</td>
						</tr>
					</tbody>
				</table>
				<div id="pageid" class="pagination">
					<a href="#" class="page">&lt&lt </a>
					<a href="#" class="page active">1</a> 
					<a href="#" class="page">2</a>
					<a href="#" class="page">3</a> 
					<a href="#" class="page">4</a>
					<a href="#" class="page">5</a> 
					<a href="#" class="page">&gt&gt</a>
				</div>
				<div class="search">
					<input id="gsearch" type="text" value placeholder="검색"
						style="width: 300px"> <a href="#" id="gicon"
						class="button primary icon fa-search"> 조회 </a>
				</div>
			</div>

		</section>
		<!-- 세번째 탭(전체회원 관리) -->
		<section id="tab-3" class="post">

			<!-- Table -->
			<h2>전체회원 관리</h2>
			<select style="width: 150px">
				<option value="">정렬기준</option>
				<option value="ㄹ">기준1</option>
				<option value="ㄹ">기준2</option>
				<option value="ㄹ">기준3</option>
				<option value="ㄹ">기준4</option>
				<option value="ㄹ">기준5</option>
			</select> <br>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>Id</th>
							<th>이름</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Id 1</td>
							<td>이름 1</td>
							<td>전화번호 1</td>
						</tr>
						<tr>
							<td>1</td>
							<td>Id 2</td>
							<td>이름 2</td>
							<td>전화번호 2</td>
						</tr>
						<tr>
							<td>3</td>
							<td>Id 3</td>
							<td>이름 3</td>
							<td>전화번호 3</td>
						</tr>
						<tr>
							<td>4</td>
							<td>Id 4</td>
							<td>이름 4</td>
							<td>전화번호 4</td>
						</tr>
						<tr>
							<td>5</td>
							<td>Id 5</td>
							<td>이름 5</td>
							<td>전화번호 5</td>
						</tr>
					</tbody>
				</table>
				<div id="pageid" class="pagination">
					<a href="#" class="page">&lt&lt </a>
					<a href="#" class="page active">1</a> 
					<a href="#" class="page">2</a>
					<a href="#" class="page">3</a> 
					<a href="#" class="page">4</a>
					<a href="#" class="page">5</a> 
					<a href="#" class="page">&gt&gt</a>
				</div>
				<div class="search">
					<input id="gsearch" type="text" value placeholder="검색"
						style="width: 300px"> <a href="#" id="gicon"
						class="button primary icon fa-search"> 조회 </a>
				</div>
			</div>

		</section>
		<!-- 네번째 탭(메인 페이지 관리) -->
		<section id="tab-4" class="post">
			<h2>메인 페이지 관리</h2>
			<br>
			<div class="box alt">
				<div class="row gtr-50 gtr-uniform">
					<div class="col-4" id="colsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/slide1.jpg" alt="" /></span> <a
							href="#" id="modimg" class="button primary"
							>슬라이드1 수정</a>
					</div>
					<div class="col-4" id="colsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/slide2.jpg" alt="" /></span> <a
							href="#" id="modimg" class="button primary"
							>슬라이드2 수정</a>
					</div>
					<div class="col-4" id="colsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/slide3.jpg" alt="" /></span> <a
							href="#" id="modimg" class="button primary"
							>슬라이드3 수정</a>
					</div>
					<div class="col-4" id="colsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/slide4.jpg" alt="" /></span> <a
							href="#" id="modimg" class="button primary"
							>슬라이드4 수정</a>
					</div>

				</div>
			</div>
		</section>

		<!-- 다섯번째 탭(통계) -->
		<section id="tab-5" class="post">
			<h2>통계</h2>
			<br>
			<div class="box alt">
				<div class="row gtr-50 gtr-uniform">
					<div class="col-4" id="graphsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/graph1.png" alt="" /></span> <a
							href="#" id="modgraph" class="button primary"
							>그래프 1</a>
					</div>
					<div class="col-4" id="graphsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/graph2.png" alt="" /></span> <a
							href="#" id="modgraph" class="button primary"
							>그래프2</a>
					</div>
					<div class="col-4" id="graphsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/graph3.png" alt="" /></span> <a
							href="#" id="modgraph" class="button primary"
							>그래프3</a>
					</div>
					<div class="col-4" id="graphsize">
						<span><img id="colimg"
							src="${contextPath }/resources/images/graph4.jpg" alt="" /></span> <a
							href="#" id="modgraph" class="button primary"
							>그래프4</a>
					</div>

				</div>
			</div>
		</section>

		<!-- 여섯번째 탭(문의 사항) : 성희 공간 -->
		<section id="tab-6" class="post">
			<h2>문의사항</h2>
			
			
		</section>
		<!-- 일곱번째 탭(공지사항) : 성희 공간-->
		<section id="tab-7" class="post">
		
		</section>
		<!-- 일곱번째 탭(영화 추가) -->
		<section id="tab-8" class="post">
			<h2>영화 추가</h2>
			<br>
			<div>
				<span>영화 업데이트</span>
				<a id="update" href="#" class="button icon fa-download">
					업데이트
				</a>
			</div>
			
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
	<script>
		$(document).ready(function() {

			$('ul.links li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.links li').removeClass('current');
				$('.post').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			})
		})
	</script>
	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>

</body>
</html>