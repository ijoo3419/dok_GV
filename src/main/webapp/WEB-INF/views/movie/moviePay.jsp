<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<style>
#myModal {
	overflow: hidden;
	width: 1400px;
	height: 900px;
}

#web-fontTitle {
	font-family: 'Do Hyeon', sans-serif;
	color: #3104B4;
}

#web-fontTitle-child {
	font-family: 'Do Hyeon', sans-serif;
	color: #585858;
	margin-left: 20px;
}

#web-fontDate {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	color: #585858;
}

.modal-content {
	margin-top: 100px;
	margin-left: 300px;
	overflow: hidden;
	width: 950px;
	height: 580px;
}

#myModal2 .modal-content{
	margin-top: 100px;
	margin-left: 300px;
	overflow: hidden;
	width: 950px;
	height: 670px;
} 

#myModal3 .modal-content{
	margin-top: 100px;
	margin-left: 300px;
	overflow: hidden;
	width: 670px;
	height: 650px;
}

#myModal3 .modal-body{
	width: 660px;
}

#myModal4 .modal-content{
	width: 670px;
	height: 600px;
}

.modal-dialog {
	width: 100%;
	height: 90%;
}

.model-left {
	overflow: hidden;
	width: 400px;
	height: 500px;
	display: inline-block;
	float: left;
}

.modal-title-div {
	width: 100%;
	height: 75px;
	overflow: hidden;
	border-bottom-style: solid;
	border-bottom-width: 1px;
	border-bottom-color: #E6E6E6;
}

.modal-title-div .one, .two {
	display: inline-block;
}

.modal-title-div .two {
	margin-left: 150px;
}

.cinemaBtn {
	width: 200px;
	height: 80px;
	background: #FAFAFA;
	border: 1px solid #D8D8D8;
}

.movieBtn {
	width: 100px;
	height: 150px;
	background: #FAFAFA;
	border: 1px solid #D8D8D8;
}

.model-right {
	overflow: hidden;
	width: 500px;
	height: 500px;
	border-left-style: solid;
	border-left-width: 1px;
	border-left-color: #E6E6E6;
	display: inline-block;
}

.model-right-child {
	margin-left: 20px;
}

#myBtn-div {
	margin-top: 50px;
	margin-left: 200px;
}

#td-web-fontTitle {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 17px;
}

/* 	-------------------------------------------------------------- */

/* The Modal (background) */
.modalTwo {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-two {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 960px; /* Could be more or less, depending on screen size */
	height: 660px;
	overflow: hidden;
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.modal-content-two-count {
	display: inline-block;
}

.screen {
	background: #D8D8D8;
}

.screen h4 {
	font-color: black;
}

.seatDiv {
	margin-top: 10px;
	margin-left: 20px;
	width: auto;
	height: 500px;
	border-style: solid;
	border-width: 1px;
	border-color: #E6E6E6;
	display: inline-block;
}

.seatCheck {
	width: 550px;
	height: auto;
	display: inline-block;
	float: left;
}

.seatPay {
	margin-left: 10px;
	display: inline-block;
	float: right;
}

.seatPay table {
	color: white;
	background: #424242;
}

.seatPay-price {
	margin-top: 70px;
	float: right;
}

.seatPay-btn {
	margin-top: 10px;
	height: 50px;
}

.seatPay-btn-right {
	background: #4B088A;
	margin-left: 15px;
	width: 80px;
	height: 30px;
	border: 1px solid #4B088A;
	font-family: 'Do Hyeon', sans-serif;
}

.seatPay-btn-left {
	margin-left: 15px;
	width: 80px;
	height: 30px;
	border: 1px solid #F2F2F2;
	background: #D8D8D8;
	font-family: 'Do Hyeon', sans-serif;
	color: #424242;
}

/* The Modal (background) */
.modalTree {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-Tree {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 675px; /* Could be more or less, depending on screen size */
	height: 620px;
	overflow: hidden;
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.pay-left {
	width: 200px;
	height: 515px;
	display: inline-block;
	float: left;
	margin-left: 10px;
	border-style: solid;
	border-width: 1px;
	border-color: #E6E6E6;
}

.pay-center {
	width: 200px;
	height: 515px;
	display: inline-block;
	float: center;
	margin-left: 10px;
	border-style: solid;
	border-width: 1px;
	border-color: #E6E6E6;
}

.pay-right {
	width: 200px;
	display: inline-block;
	float: right;
	margin-left: 10px;
	border-style: solid;
	border-width: 1px;
	border-color: #E6E6E6;
}

.pay-center>#web-fontTitle {
	margin-left: 20px;
}

.pay-right>table {
	color: white;
	background: #424242;
}

/* 	-------------------------------------------------------------- */
#myBtn-divTwo {
	margin-top: 50px;
	margin-left: 200px;
}

/* The Modal (background) */
.modalFour {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-Four {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 680px; /* Could be more or less, depending on screen size */
	height: 620px;
	overflow: hidden;
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.movieTable>div {
	margin-left: 5px;
	display: inline-block;
}

.movieTable table {
	background: #088A68;
}
a{
	color: white;
}
</style>
<body>
	<div class="contain_box">
		<div class="container">
			<div class="row">
				<div class="page-header">
					<h2>멀티모달 테스트</h2>
				</div>
			</div>
			<a data-toggle="modal" href="#myModal" class="btn btn-primary">Launch
				modal</a>
			<div class="row 2nd"></div>
		</div>
	</div>
	<!-- first modal -->
	<div class="modal" id="myModal" aria-hidden="true"
		style="display: none; z-index: 1050;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="container"></div>
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<div class="model-left">
						<div class="modal-title-div">
							<div class="one">
								<h2 class="modal-title" id="web-fontTitle">날짜</h2>
							</div>
							<div class="two">
								<jsp:include page="../common/datePicker.jsp"/>
							</div>

						</div>
						<div class="modal-startDate-div">
							<h2 id="web-fontTitle">극장</h2>
							<button class="cinemaBtn">
								<img src="${ contextPath }/resources/images/plusBtn.PNG"
									width="30" height="30">
							</button>

							<hr>

							<h2 id="web-fontTitle">영화</h2>

							<a data-toggle="modal" href="#myModal4" class="movieA">
								<!-- <input type="image" class="movieBtn" onclick="return selectMovieList()"> -->
								<button class="movieBtn" onclick="return selectMovieList()"><img src="${ contextPath }/resources/images/plusBtn.PNG" width="30" height="30"></button>
							</a>
						</div>
					</div>

					<div class="model-right">

						<div class="model-right-child">
							<h2 id="web-fontTitle">시간</h2>

							<hr>

							<div style="width: 100%; height: 700px; overflow: auto">
								<table>
									<tr style="width: 100%; height: 60px;">
										<td>시간</td>
										<td>제목</td>
										<td>상영관</td>
									</tr>
								</table>
								<div align="center">
									<img src="${ contextPath }/resources/images/timePage.PNG"
										width="200" height="200">
								</div>
							</div>
						</div>
					</div>
					<!-- </div> -->

					<a data-toggle="modal" href="#myModal2" class="btn btn-primary">Launch
						modal</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		function selectMovieList(){
			var fromDate = $("#fromDate").val();
			
			$.ajax({
				url:"selectMovieList.mo", 
				type:"post",
				data:{fromDate:fromDate},
				success:function(data){
					$div = $(".movieTable");	
					$div.find("div").remove();
					
					for(var key in data){
						var $divChild = $("<div>");
						var $table = $("<table>");
						var $trOne = $("<tr>");
						var $trTwo = $("<tr>");
						var $tdOne = $("<td><img src='${ contextPath }/resources/images/moviePay.PNG' width='150'>");
						var $tdhidden = $("<input type='hidden' value=''>")
						var $tdTwo = $("<td id='web-fontTitle-child'>");
						
						$tdhidden.val(data[key].movie_id);
						$tdTwo.text(data[key].movie_title);
						
						$tdOne.append($tdhidden);
						$trOne.append($tdOne);
						$table.append($trOne);
						
						$trTwo.append($tdTwo);
						$table.append($trTwo);
						
						$divChild.append($table);
						$div.append($divChild);
					}
					
					$(".movieTable").show();
					
					console.log(data);
					
					$(function(){
						$(".movieTable table").mouseenter(function(){
							$(this).parent().css({"cursor":"pointer"});
					 	}).click(function(){
					 			var num = $(this).find("input").val();
					 			/* alert("num = " + num);
								console.log(num); */
								/* $(".movieBtn").find("img").remove(); */
								$(".movieBtn").find("img").attr("src", "${ contextPath }/resources/images/moviePay.PNG");
								$(".movieBtn").find("img").attr("style", "width:100px; height:150px;");
								$(".movieBtn").show();
								alert("이미지 변경완료!");
					 	});
				  	});
				},
				error:function(){
					console.log("에러!");
				}
			});
			
			return false;
		}
	</script>
	<!-- second modal -->
	<div class="modal" id="myModal2" aria-hidden="true"
		style="display: none; z-index: 1060;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h2 id="web-fontTitle">인원/좌석선택</h2>
				</div>
				<div class="container"></div>
				<div class="modal-body">
					<div class="modal-content-two-count">
						<font id="web-fontTitle">일반</font> <select name="count">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3" selected="selected">3</option>
							<option value="4">4</option>
						</select>
					</div>

					<br>

					<div class="seatCheck">
						<div class="screen" align="center">
							<h4 id="web-fontTitle">SCREEN</h4>
						</div>
						<br> <br>
						<div align="center">
							<input type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> &nbsp;&nbsp;&nbsp;&nbsp; <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
						</div>
						<div align="center">
							<input type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> &nbsp;&nbsp;&nbsp;&nbsp; <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
						</div>
						<div align="center">
							<input type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> &nbsp;&nbsp;&nbsp;&nbsp; <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
						</div>
						<div align="center">
							<input type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> &nbsp;&nbsp;&nbsp;&nbsp; <input
								type="checkbox"> <input type="checkbox"> <input
								type="checkbox"> <input type="checkbox">
						</div>
					</div>

					<div class="seatDiv">
						<img src="${ contextPath }/resources/images/seat.PNG">
					</div>

					<div class="seatPay">
						<table>
							<tr>
								<td><img
									src="${ contextPath }/resources/images/moviePay.PNG"
									width="200px">
								<td>
							</tr>
							<tr>
								<td id="td-web-fontTitle">어른도감
								<td>
							</tr>
							<tr>
								<td>디지털
								<td>
							</tr>
							<tr>
								<td>군자 4관
								<td>
							</tr>
							<tr>
								<td>2018. 09. 21 (금) 12:40
								<td>
							</tr>
							<tr class="seatPay-price">
								<td id="td-web-fontTitle">6,000&nbsp;&nbsp;
								<td>
								<td>원
								<td>
							</tr>
							<tr class="seatPay-btn">
								<td><button class="seatPay-btn-left">이전</button>
									<a data-toggle="modal" href="#myModal3"><button class="seatPay-btn-right">다음</button></a></td>
							</tr>
						</table>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>

	<!-- third modal -->
	<div class="modal" id="myModal3" aria-hidden="true"
		style="display: none; z-index: 1070;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h2 id="web-fontTitle">결제선택</h2>
				</div>
				<div class="container"></div>
				<div class="modal-body">

					<div class="pay-left">
						<div align="center">
							<h4 id="web-fontTitle">결제</h4>
						</div>
						<hr>
						<h4 id="web-fontTitle-child">휴대폰 결제</h4>
						<hr>
						<h4 id="web-fontTitle-child">신용/체크카드</h4>
						<hr>
						<h4 id="web-fontTitle-child">카카오페이</h4>
						<hr>
						<h4 id="web-fontTitle-child">페이나우</h4>
						<hr>
						<h4 id="web-fontTitle-child">페이코</h4>
						<hr>
					</div>

					<div class="pay-center">
						<h4 id="web-fontTitle-child">총 결제 금액</h4>
						<h4 id="web-fontTitle">
							20,000<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
						<h4 id="web-fontTitle-child">할인수단/관람권</h4>
						<h4 id="web-fontTitle">
							0<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
						<h4 id="web-fontTitle-child">일반결제</h4>
						<h4 id="web-fontTitle">
							0<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
						<h4 id="web-fontTitle-child">남은 결제금액</h4>
						<h4 id="web-fontTitle">
							20,000<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
					</div>

					<div class="pay-right">
						<table>
							<tr>
								<td><img
									src="${ contextPath }/resources/images/moviePay.PNG"
									width="200px">
								<td>
							</tr>
							<tr>
								<td id="td-web-fontTitle">어른도감
								<td>
							</tr>
							<tr>
								<td>디지털
								<td>
							</tr>
							<tr>
								<td>군자 4관
								<td>
							</tr>
							<tr>
								<td>2018. 09. 21 (금) 12:40
								<td>
							</tr>
							<tr class="seatPay-price">
								<td id="td-web-fontTitle">6,000&nbsp;&nbsp;
								<td>
								<td>원
								<td>
							</tr>
							<tr class="seatPay-btn">
								<td><button class="seatPay-btn-left">이전</button>
									<button class="seatPay-btn-right">결제</button></td>
							</tr>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- 4th modal -->
	<div class="modal" id="myModal4" data-backdrop="static"
		aria-hidden="true" style="display: none; z-index: 1080;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h2 id="web-fontTitle">모든영화</h2>
				</div>
				<div class="container"></div>
				<div class="modal-body">
					<div class="movieTable">
						<%-- <div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div> --%>
					</div>

					<%-- <div class="movieTable">
						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

					</div> --%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>