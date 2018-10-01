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

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.min.js"></script>

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

.areaTable #web-fontTitle-child {
	font-family: 'Do Hyeon', sans-serif;
	color: #E6E6E6;
	margin-left: 20px;
}

#web-fontTitle-child-two {
	font-family: 'Do Hyeon', sans-serif;
	font-size:20px;
	color: #585858;
}

#web-fontDate {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	color: #585858;
}

td #web-fontDate {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	color: #585858;
	margin-left:5px;
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
#movieTimeTable{
	border: 1px solid #E6E6E6;
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
							<a data-toggle="modal" href="#myModal5" class="movieB">
							<button class="cinemaBtn">
								<img src="${ contextPath }/resources/images/plusBtn.PNG"
									width="30" height="30">
							</button>
							</a>
							<input type="hidden" class="theater-id" value="">
							
							<hr>

							<h2 id="web-fontTitle">영화</h2>

							<a data-toggle="modal" href="#myModal4" class="movieA">
								<!-- <input type="image" class="movieBtn" onclick="return selectMovieList()"> -->
								<button class="movieBtn" onclick="return selectMovieList()">
									<img src="${ contextPath }/resources/images/plusBtn.PNG" width="30" height="30">
								</button>
							</a>
							<input type="hidden" class="movie-id" value="">
						</div>
					</div>

					<div class="model-right">

						<div class="model-right-child">
							<h2 id="web-fontTitle">시간</h2>

							<hr>

							<div style="width: 100%; height: 450px; overflow: auto" class="movieTimeMainDiv" >
								<div class="movieTimeDiv" align="center">
									<br><br><br><br>
									<img src="${ contextPath }/resources/images/timePage.PNG"
										width="200" height="200">
								</div>
							</div>
						</div>
					</div>
					<!-- </div> -->

					<a data-toggle="modal" href="#myModal2" class="btn btn-primary" id="btn btn-primary-two">Launch
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
						var $tdhidden = $("<input type='hidden' class='hidden-movie-list' value=''>")
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
					
					/* console.log(data); */
					
					$(function(){
						$(".movieTable table").mouseenter(function(){
							$(this).parent().css({"cursor":"pointer"});
					 	}).click(function(){
					 			var num = $(this).find("input").val();
								var movieId = $(".hidden-movie-list").val();
								$(".movie-id").val(movieId); //영화ID를 가지고있다.
								var a = $(".movie-id").val();
								/* console.log(a); */
								$(".movieBtn").find("img").attr("src", "${ contextPath }/resources/images/moviePay.PNG");
								$(".movieBtn").find("img").attr("style", "width:100px; height:150px;");
								$(".movieBtn").show();
								$("#myModal4").find(".close").click();
					 	});
				  	});
					
				},
				error:function(){
					console.log("에러!");
				}
			});
			
			return false;
		}
		
		var run = 0;
		var dateRun = 0;
		
		$(function foo(){
				
			    setTimeout(foo, 2000);
			    
			    var arrayDate = new Array();
			    
				var formDateTwo = $("#fromDate").val();
				var theaterId = $(".theater-id").val();
				var movieId = $(".movie-id").val();
				
				var arrayCheck = [ formDateTwo, theaterId, movieId ];
				var check = 0;
				
				if(((arrayCheck[0] == "" && arrayCheck[1] != "") && arrayCheck[2] != "") && dateRun == 0){
					$.ajax({
			    		url:"selectDateList.mo",
			    		type:"post",
			    		data:{movieId:movieId,
			    			  theaterId:theaterId},
			    		success:function(data){
			    			var div = $(".movieTimeDiv");
			    			
			    			for(var key in data){
			    				var str = moment("/Date(" + data[key].turning_day +")/").format("YY/MM/DD"); //json string
			   
			    				arrayDate[key] = str.toString();
			    				
			    				var strDate = "";
			    				
			    				for(var i = 0; i < arrayDate.length; i++){
			    					if(i == 0){
			    						strDate += arrayDate[key];
			    					}else if(i == arrayDate.length - 1){
			    						strDate += ", " + arrayDate[key];
			    					}else{
			    						strDate += ", " + arrayDate[key];
			    					}
			    				}
			    				
			    				/* var dateSplit = new Array();
			    				dateSplit = arrayDate[key].split('/'); 
			    				
			    				for(var i = 0; i < dateSplit.length; i++){
			    					if(dateSplit[1] == "10"){
			    						$('select[class="ui-datepicker-month"]').val('9').attr('selected', true);
			    					}else if(dateSplit[1] == "11"){
			    						$('select[class="ui-datepicker-month"]').val('10').attr('selected', true);
			    					}else if(dateSplit[1] == "12"){
			    						$('select[class="ui-datepicker-month"]').val('11').attr('selected', true);
			    					}
			    				}  */
			    				
			    				var $input = $("<input type='hidden' value=''>");
			    				
			    				$input.val(arrayDate[key]);
			    				console.log($input.val());
			    				div.append($input);
			    				
			    				alert("해당 영화는 " + strDate + "일만 예매가 가능합니다.");
			    			}
			    			
			    			dateRun = 1;
			    		},
			    		error:function(data){
			    			console.log(data);
			    		}
			    	});
				}
				
				for(var i = 0; i < arrayCheck.length; i++){
					if(arrayCheck[i] == null){
			    		  check = 1;
			    	}else if(arrayCheck[i] == ""){
			    		  check = 1;
			    	}else if(arrayCheck[i] == undefined){
			    		  check = 1;
			    	}
				}
				
				if(check == 1 || run == 1){
					
			    }else if(run != 1){
			    	run = 1;
			    	
			    	$.ajax({
			    		url:"selectPlayList.mo",
			    		type:"post",
			    		data:{formDateTwo:formDateTwo,
			    			  movieId:movieId,
			    			  theaterId:theaterId},
			    		success:function(data){
			    			var $mainDiv = $(".movieTimeMainDiv");
			    			var $div = $(".movieTimeDiv");	
							$div.remove();
							var $table = $("<table id='movieTimeTable' border='1'>");
							
							for(var key in data){
								var $tr = $("<a data-toggle='modal' href='#myModal2'><tr>");
								var $fontOne = $("<font id='web-fontDate'>");
								var $fontTwo = $("<font id='web-fontDate'>");
								var $fontTree = $("<font id='web-fontDate'>");
								var $fontFour = $("<br><font id='web-fontDate'>");
								var $fontFive = $("<font id='web-fontDate'>");
								var $fontSix = $("<br><font>");
								
								var $tdOne = $("<td width='180' height='50' align='center'>");
								var $tdTwo = $("<td width='300' height='50'>");
								var $tdTree = $("<td width='100' height='50' align='center'>");
								/* var $tdTitle = $("<input type='hidden' class='hidden-movie-list' value=''>")
								var $tdTurning = $("<td id='web-fontTitle-child'>"); */
								
								/* $td.val(data[key].movie_id); */
								$fontOne.text(data[key].turning_time);
								$fontTwo.text(data[key].movie_title);
								$fontTree.text(data[key].area_name);
								$fontFour.text(data[key].movie_type);
								$fontFive.text(data[key].movie_age);
								$fontSix.text(data[key].theater_name);
								
								$tdOne.append($fontOne);
								$tdTwo.append($fontFive);
								$tdTwo.append($fontTwo);
								$tdTwo.append($fontFour);
								
								$tdTree.append($fontTree);
								$tdTree.append($fontSix);
								
								$tr.append($tdOne);
								$tr.append($tdTwo);
								$tr.append($tdTree);
								
								$table.append($tr);
							}
							
							$mainDiv.append($table);
							
							$(".movieTimeMainDiv").show();
							
							$(function(){

								$(".movieTimeMainDiv tr").mouseenter(function(){
									$(this).parent().css({"cursor":"pointer"});
									$(this).hover().css({"background":"#F2F2F2"});
							 	}).click(function(){
							 			/* var num = $(this).find("input").val();
										var movieId = $(".hidden-movie-list").val();
										$(".movie-id").val(movieId); //영화ID를 가지고있다.
										$(".movieBtn").find("img").attr("src", "${ contextPath }/resources/images/moviePay.PNG");
										$(".movieBtn").find("img").attr("style", "width:100px; height:150px;");
										$(".movieBtn").show(); */
							 	});
								
								$(".movieTimeMainDiv tr").mouseleave(function(){
									$(this).hover().css({"background":"white"});
							 	});
								
						  	});
							
			    		},
			    		error:function(data){
			    			console.log(data);
			    		}
			    	});
				}
			});
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
	<style>
		.myModal5-title{
			height:30px;
		}
		.myModal5-titleOne{
			display:inline-block;
			float:left;
			height:50px;
		}
		.myModal5-titleOne #web-fontTitle{
			margin-top:0px;
		}
		.myModal5-titleTwo{
			display:inline-block;
			float:right;
			height:50px;
		}
		.areaDiv{
			display:inline-block;
			height:400px;
			overflow:hidden;
			float:left;
		}
		.areaDiv td{
			width:150px;
			height:40px;
			border:1px solid #E6E6E6;
			
		}
		.areaChild{
			display:inline-block;
			height:450px;
			overflow:hidden;
			border:1px solid #E6E6E6;
		}
		.areaChild td{
			width:180px;
			height:40px;
			cursor:pointer;
			/* border:1px solid #E6E6E6; */
		}
	</style>
	<!-- 5th modal -->
	<div class="modal" id="myModal5" aria-hidden="true" style="display: none; z-index: 1080;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="myModal5-title">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="myModal5-titleOne">
					<h2 id="web-fontTitle">지역별</h2>
					</div>
					<div class="myModal5-titleTwo">
						<button class="seatPay-btn-left">이전</button>
						<a data-toggle="modal" href="#myModal3"><button class="seatPay-btn-right">다음</button></a>
					</div>
				</div>
				<div class="container"></div>
				<div class="modal-body">
					<div class="areaDiv">
						<table class="areaTable">
							<tr>
								<td class="area-A1">
									<input type="hidden" value="A1">
									<font id="web-fontTitle-child">서울</font>
								</td>
							</tr>
							<tr>
								<td class="area-A2">
									<input type="hidden" value="A2">
									<font id="web-fontTitle-child">경기</font>
								</td>
							</tr>
							<tr>
								<td class="area-A3">
									<input type="hidden" value="A3">
									<font id="web-fontTitle-child">인천</font>
								</td>
							</tr>
							<tr>
								<td class="area-A4">
									<input type="hidden" value="A4">
									<font id="web-fontTitle-child">강원</font>
								</td>
							</tr>
							<tr>
								<td class="area-A5">
									<input type="hidden" value="A5">
									<font id="web-fontTitle-child">대전/춘천</font>
								</td>
							</tr>
							<tr>
								<td class="area-A6">
									<input type="hidden" value="A6">
									<font id="web-fontTitle-child">대구</font>
								</td>
							</tr>
							<tr>
								<td class="area-A7">
									<input type="hidden" value="A7">
									<font id="web-fontTitle-child">부산/울산</font>
								</td>
							</tr>
							<tr>
								<td class="area-A8">
									<input type="hidden" value="A8">
									<font id="web-fontTitle-child">경상</font>
								</td>
							</tr>
							<tr>
								<td class="area-A9">
									<input type="hidden" value="A9">
									<font id="web-fontTitle-child">광주/전라/제주</font>
								</td>
							</tr>
						</table>
					</div>
					<div class="areaChild" style="overflow:auto; height:450px;">
						<!-- <table>
							<tr>
								<td><font id="web-fontTitle-child">강남</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">강동</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">군자</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">동대문</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">마곡</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">목동</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">상봉</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">신촌</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">코엑스</font></td>
							</tr>
						</table>
 -->					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function(){
			$(".cinemaBtn").mouseenter(function(){
				
		 	}).click(function(){
		 			var movie_id = $(".movie-id").val();
		 			
		 				$.ajax({
		 					url:"selectAreaList.ar", 
		 					type:"post",
		 					data:{movie_id:movie_id},
		 					success:function(data){
		 						var area_parents = new Array();
		 						var area_val = new Array();
		 						
		 						for(var key in data){
		 							area_parents[key] = data[key].area_parents; //부모의 지역 아이디를 저장
		 							
		 							for(var i = 0; i < 9; i++){
		 								
		 								if($(".areaTable").find("td").eq(i).find("input").val() == area_parents[key]){ //부모의 지역 아이디에 해당 되는 td만 활성화 
		 									$(".areaTable").find("td").eq(i).css({"cursor":"pointer"});
		 									$(".areaTable").find("td").eq(i).hover().css({"background":"#F2F2F2"});
		 									$(".areaTable").find("td").eq(i).find("font").css({"color":"#424242"});
		 									
		 									area_val[i] = $(".areaTable").find("td").eq(i).find("input").val();
			 							}
		 							}
		 						}
		 						
		 						$div = $(".areaChild");	
		 						$div.find("table").remove();
		 						var $table = $("<table>");
		 						
		 						for(var key in data){
		 							
		 							var $tr = $("<tr>");
		 							var $td = $("<td>");
		 							var $font = $("<font id='web-fontTitle-child'>")
		 							var $tdhidden = $("<input type='hidden' value=''>")
		 							
		 							$tdhidden.val(data[key].area_id);
		 							$font.text(data[key].area_name);
		 							
		 							$td.append($tdhidden);
		 							$td.append($font);
		 							$tr.append($td);
		 							$table.append($tr);
		 						}
		 						
		 						$div.append($table);
		 						
		 						$(".areaChild").show();
		 						
		 						$(function(){
		 							$(".areaChild table td").mouseenter(function(){
		 								
		 						 	}).click(function(){
		 						 			var num = $(this).find("font").text();
		 						 			var id = $(this).find("input").val();
		 						 			var $font = $("<font id='web-fontTitle-child-two'>");
		 						 			$font.append(num);
		 									$(".cinemaBtn").find("img").remove();
		 									$(".cinemaBtn").find("font").remove();
		 									$(".cinemaBtn").append($font);
		 									$(".cinemaBtn").show();
		 									
		 									$(".theater-id").val(id);
		 									
		 									$("#myModal5").find(".close").click();
		 						 	});
		 					  	});
		 					},
		 					error:function(){
		 						console.log("에러!");
		 					}
		 				});
		 	});
		});
	</script>
</body>
</html>