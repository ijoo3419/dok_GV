<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	session = request.getSession(true);
	String id = request.getParameter("id");
	request.getSession().setAttribute("id", id);
%>
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

<!-- 아임포트 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<title>Insert title here</title>
</head>
<style>
#myModal {
	overflow: hidden !important;
	width: 1400px !important;
	height: 900px !important;
}

#web-fontTitle {
	font-family: 'Do Hyeon', sans-serif !important;
	color: #3104B4;
}

#web-fontTitle-child {
	font-family: 'Do Hyeon', sans-serif !important;
	color: #585858 !important;
	margin-left: 20px !important;
}

.areaTable #web-fontTitle-child {
	font-family: 'Do Hyeon', sans-serif !important;
	color: #E6E6E6 !important;
	margin-left: 20px !important;
}

#web-fontTitle-child-two {
	font-family: 'Do Hyeon', sans-serif !important;
	font-size:20px !important;
	color: #585858 !important;
}

#web-fontDate {
	font-family: 'Do Hyeon', sans-serif !important;
	font-size: 20px !important;
	color: #585858 !important;
}

td #web-fontDate {
	font-family: 'Do Hyeon', sans-serif !important;
	font-size: 20px !important;
	color: #585858 !important;
	margin-left:5px !important;
}

.modal-content {
	margin-top: 100px !important;
	margin-left: 300px !important;
	overflow: hidden !important;
	width: 950px !important;
	height: 580px !important;
}

#myModal2 .modal-content{
	margin-top: 100px !important;
	margin-left: 300px !important;
	overflow: hidden !important;
	width: 950px !important;
	height: 670px !important;
} 

#myModal3 .modal-content{
	margin-top: 100px !important;
	margin-left: 300px !important;
	overflow: hidden !important;
	width: 670px !important;
	height: 650px !important;
}

#myModal3 .modal-body{
	width: 660px !important;
}

#myModal4 .modal-content{
	width: 670px !important;
	height: 600px !important;
}

.modal-dialog {
	width: 100% !important;
	height: 90% !important;
}

.model-left {
	overflow: hidden !important;
	width: 400px !important;
	height: 500px !important;
	display: inline-block !important;
	float: left !important;
}

.modal-title-div {
	width: 100% !important;
	height: 75px !important;
	overflow: hidden !important;
	border-bottom-style: solid !important;
	border-bottom-width: 1px !important;
	border-bottom-color: #E6E6E6 !important;
}

.modal-title-div .one, .two {
	display: inline-block !important;
}

.modal-title-div .two {
	margin-left: 150px !important;
}

.cinemaBtn {
	width: 200px !important;
	height: 80px !important;
	background: #FAFAFA !important;
	border: 1px solid #D8D8D8 !important;
}

.movieBtn {
	width: 100px !important;
	height: 150px !important;
	background: #FAFAFA !important;
	border: 1px solid #D8D8D8 !important;
}

.model-right {
	overflow: hidden !important;
	width: 500px !important;
	height: 500px !important;
	border-left-style: solid !important;
	border-left-width: 1px !important;
	border-left-color: #E6E6E6 !important;
	display: inline-block;
}

.model-right-child {
	margin-left: 20px !important;
}

#myBtn-div {
	margin-top: 50px !important;
	margin-left: 200px !important;
}

#td-web-fontTitle {
	font-family: 'Do Hyeon', sans-serif !important;
	font-size: 17px !important;
}

/* 	-------------------------------------------------------------- */

/* The Modal (background) */
.modalTwo {
	display: none !important; /* Hidden by default */
	position: fixed !important; /* Stay in place */
	z-index: 1 !important; /* Sit on top */
	left: 0 !important;
	top: 0 !important;
	width: 100% !important; /* Full width */
	height: 100% !important; /* Full height */
	overflow: auto !important; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0) !important; /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4) !important; /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-two {
	background-color: #fefefe !important;
	margin: 15% auto !important; /* 15% from the top and centered */
	padding: 20px !important;
	border: 1px solid #888 !important;
	width: 960px !important; /* Could be more or less, depending on screen size */
	height: 660px !important;
	overflow: hidden !important;
}
/* The Close Button */
.close {
	color: #aaa !important;
	float: right !important;
	font-size: 28px !important;
	font-weight: bold !important;
}

.close:hover, .close:focus {
	color: black !important;
	text-decoration: none !important;
	cursor: pointer !important;
}

.modal-content-two-count {
	display: inline-block !important;
}

.screen {
	background: #D8D8D8 !important;
}

.screen h4 {
	font-color: black !important;
}

.seatDiv {
	margin-top: 10px !important;
	margin-left: 20px !important;
	width: auto !important;
	height: 500px !important;
	border-style: solid !important;
	border-width: 1px !important;
	border-color: #E6E6E6 !important;
	display: inline-block !important;
}

.seatCheck {
	width: 550px !important;
	height: auto !important;
	display: inline-block !important;
	float: left !important;
}

.seatPay {
	margin-left: 10px !important;
	display: inline-block !important;
	float: right !important;
}

.seatPay table {
	color: white !important;
	background: #424242 !important;
}

.seatPay-price {
	margin-top: 70px !important;
	float: right !important;
}

.seatPay-btn {
	margin-top: 10px !important;
	height: 50px !important;
}

.seatPay-btn-right {
	background: #4B088A !important;
	margin-left: 15px !important;
	width: 80px !important;
	height: 30px !important;
	border: 1px solid #4B088A !important;
	font-family: 'Do Hyeon', sans-serif !important;
}

.seatPay-btn-left {
	margin-left: 15px !important;
	width: 80px !important;
	height: 30px !important;
	border: 1px solid #F2F2F2 !important;
	background: #D8D8D8 !important;
	font-family: 'Do Hyeon', sans-serif !important;
	color: #424242 !important;
}

/* The Modal (background) */
.modalTree {
	display: none !important; /* Hidden by default */
	position: fixed !important; /* Stay in place */
	z-index: 1 !important; /* Sit on top */
	left: 0 !important;
	top: 0 !important;
	width: 100% !important; /* Full width */
	height: 100% !important; /* Full height */
	overflow: auto !important; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0) !important; /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4) !important; /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-Tree {
	background-color: #fefefe !important;
	margin: 15% auto !important; /* 15% from the top and centered */
	padding: 20px !important;
	border: 1px solid #888 !important;
	width: 675px !important; /* Could be more or less, depending on screen size */
	height: 620px !important;
	overflow: hidden !important;
}
/* The Close Button */
.close {
	color: #aaa !important;
	float: right !important;
	font-size: 28px !important;
	font-weight: bold !important;
}

.close:hover, .close:focus {
	color: black !important;
	text-decoration: none !important;
	cursor: pointer !important;
}

.pay-left {
	width: 200px !important;
	height: 515px !important;
	display: inline-block !important;
	float: left !important;
	margin-left: 10px !important;
	border-style: solid !important;
	border-width: 1px !important;
	border-color: #E6E6E6 !important;
}

.pay-center {
	width: 200px !important;
	height: 515px !important;
	display: inline-block !important;
	float: center !important;
	margin-left: 10px !important;
	border-style: solid !important;
	border-width: 1px !important;
	border-color: #E6E6E6 !important;
}

.pay-right {
	width: 200px !important;
	display: inline-block !important;
	float: right !important;
	margin-left: 10px !important;
	border-style: solid !important;
	border-width: 1px !important;
	border-color: #E6E6E6 !important;
}

.pay-center>#web-fontTitle {
	margin-left: 20px !important;
}

.pay-right>table {
	color: white !important;
	background: #424242 !important;
}

/* 	-------------------------------------------------------------- */
#myBtn-divTwo {
	margin-top: 50px !important;
	margin-left: 200px !important;
}

/* The Modal (background) */
.modalFour {
	display: none !important; /* Hidden by default */
	position: fixed !important; /* Stay in place */
	z-index: 1 !important; /* Sit on top */
	left: 0 !important;
	top: 0 !important;
	width: 100% !important; /* Full width */
	height: 100% !important; /* Full height */
	overflow: auto !important; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0) !important; /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4) !important; /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-Four {
	background-color: #fefefe !important;
	margin: 15% auto !important; /* 15% from the top and centered */
	padding: 20px !important;
	border: 1px solid #888 !important;
	width: 680px !important; /* Could be more or less, depending on screen size */
	height: 620px !important;
	overflow: hidden !important;
}
/* The Close Button */
.close {
	color: #aaa !important;
	float: right !important;
	font-size: 28px !important;
	font-weight: bold !important;
}

.close:hover, .close:focus {
	color: black !important;
	text-decoration: none !important;
	cursor: pointer !important;
}

.movieTable>div {
	margin-left: 5px !important;
	display: inline-block !important;
}

.movieTable table {
	background: #088A68 !important;
}
a{
	color: white !important;
}
#movieTimeTable{
	border: 1px solid #E6E6E6 !important;
}
</style>
<body>
	<jsp:include page="../common/headBar.jsp"/>
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

					<!-- <a data-toggle="modal" href="#myModal2" class="btn btn-primary" id="btn btn-primary-two">Launch
						modal</a> -->
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
						var $tdOne = $("<td>");
						var $tdhiddenTitle = $("<input type='hidden' class='hidden-movie-list' value=''>");
						var $tdTwo = $("<td id='web-fontTitle-child'>");
						
						$tdhiddenTitle.val(data[key].movie_id);
						$tdTwo.text(data[key].movie_title);
						
						$tdOne.append("<" + data[key].file_src + "style='width:150px; height:200px;'>");
						$tdOne.append($tdhiddenTitle);
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
								var movieId = $(this).find(".hidden-movie-list").val();
								$(".movie-id").val(movieId); //영화ID를 가지고있다.
								var a = $(".movie-id").val();
								/* console.log(a); */
								var b = $(this).find('img').attr("src");
								
								$(".movieBtn").find("img").attr("src", b);
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
		
		/* 모달 3 체크용 변수 */
		var treeCheck = 0; //모달3에서 체크용 변수
		var treePlue = 0;
		/* 모달 3 체크용 변수 */
		
		window.onload = function () {
			treeCheck = $("#movieCount option:selected").val();
		}
		
		$(function(){
			$("#movieCount").change(function(){
				
				treeCheck = $("#movieCount option:selected").val();
				
				treePlue = 0;
				
				$("input:checkbox").prop("checked", false);
				
				if(treeCheck == 0){
					$("input[type='checkbox']").attr("disabled", true);
				}else if(treeCheck == 1){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue <= 1){
						$("input[type='checkbox']").attr("disabled", false);
						
						$("input[type='checkbox']").click(function(){
							
							$("input[type='checkbox']").attr("disabled", true);
						});
					}
				}else if(treeCheck == 2){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue < 2){
						$("input[type='checkbox']").attr("disabled", false);
						
						$("input[type='checkbox']").off().on('click', function(){
							++treePlue;
						});
					}else{
						$("input[type='checkbox']").attr("disabled", true);
					}
				}
				else if(treeCheck == 3){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue < 3){
						$("input[type='checkbox']").attr("disabled", false);
						
						$("input[type='checkbox']").off().on('click', function(){
							++treePlue;
						});
					}else{
						$("input[type='checkbox']").attr("disabled", true);
					}
				}
				else if(treeCheck == 4){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue < 4){
						$("input[type='checkbox']").attr("disabled", false);
						
						$("input[type='checkbox']").off().on('click', function(){
							++treePlue;
						});
					}else{
						$("input[type='checkbox']").attr("disabled", true);
					}
				}
			});
		});
		
		
		$(function foo(){
				
			    setTimeout(foo, 1000);
			    
			    if(treeCheck == 0){
			    	$("input[type='checkbox']").attr("disabled", true);
			    }else if(treeCheck == 2){
			    	if(treePlue >= 2){
			    		$("input[type='checkbox']").attr("disabled", true);
			    	}
			    }else if(treeCheck == 3){
			    	if(treePlue >= 3){
			    		$("input[type='checkbox']").attr("disabled", true);
			    	}
			    }else if(treeCheck == 4){
			    	if(treePlue >= 4){
			    		$("input[type='checkbox']").attr("disabled", true);
			    	}
			    }
			    
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
								var $a = $("<a data-toggle='modal' href='#myModal2'>");
								var $tr = $("<tr>");
								var $fontOne = $("<font id='web-fontDate'>");
								var $fontTwo = $("<font id='web-fontDate' class='movie_title'>");
								var $fontTree = $("<font id='web-fontDate'>");
								var $fontFour = $("<br><font id='web-fontDate' class='movie_type'>");
								var $fontFive = $("<font id='web-fontDate'>");
								var $fontSix = $("<br><font class='area_name'>");
								
								var $hiddenPrice = $("<input type='hidden' class='hiddenPrice' val=''>");
								var $hiddenTime = $("<input type='hidden' class='hiddenTime' val=''>");
								var $hiddenDate = $("<input type='hidden' class='hiddenDate' val=''>");
								var $hiddenRoom = $("<input type='hidden' class='hiddenRoom' val=''>");
								var $hiddenRoomId = $("<input type='hidden' class='hiddenRoomId' val=''>");
								var $hiddenTurning = $("<input type='hidden' class='hiddenTurning' val=''>");
								
								
								var $tdOne = $("<td width='180' height='50' align='center'>");
								var $tdTwo = $("<td width='300' height='50'>");
								var $tdTree = $("<td width='100' height='50' align='center'>");
								
								$fontOne.text(data[key].turning_time);
								$fontTwo.text(data[key].movie_title);
								$fontTree.text(data[key].area_name);
								$fontFour.text(data[key].movie_type);
								$fontFive.text(data[key].movie_age);
								$fontSix.text(data[key].theater_name);
								$hiddenPrice.val(data[key].price);
								$hiddenTime.val(data[key].turning_time);
								$hiddenDate.val(data[key].turning_day);
								$hiddenRoom.val(data[key].movieroom_name);
								$hiddenRoomId.val(data[key].movieroom_id);
								$hiddenTurning.val(data[key].turning_id);
								
								$tdOne.append($fontOne);
								$tdTwo.append($fontFive);
								$tdTwo.append($fontTwo);
								$tdTwo.append($fontFour);
								
								$tdTree.append($fontTree);
								$tdTree.append($fontSix);
								
								$tr.append($tdOne);
								$tr.append($tdTwo);
								$tr.append($tdTree);
								$tr.append($hiddenPrice);
								$tr.append($hiddenTime);
								$tr.append($hiddenDate);
								$tr.append($hiddenRoom);
								$tr.append($hiddenRoomId);
								$tr.append($hiddenTurning);
								
								
								$a.append($tr);
								
								$table.append($a);
							}
							
							$mainDiv.append($table);
							
							$(".movieTimeMainDiv").show();
							
							$(function(){

								$(".movieTimeMainDiv a tr").mouseenter(function(){
									$(this).parent().css({"cursor":"pointer"});
									$(this).hover().css({"background":"#F2F2F2"});
							 	}).click(function(){
							 			
							 	});
								
								$(".movieTimeMainDiv a tr").mouseleave(function(){
									$(this).hover().css({"background":"white"});
							 	});
								
								$(".movieTimeMainDiv a").click(function(){
									var movieTitle = $(this).find('.movie_title').text();
									var movieType = $(this).find('.movie_type').text();
									var areaName = $(this).find('.area_name').text();
									var date = $(this).find('.hiddenDate').val();
									var time = $(this).find('.hiddenTime').val();
									var money = $(this).find('.hiddenPrice').val();
									var roomName = $(this).find('.hiddenRoom').val();
									
									var str = moment("/Date(" + date +")/").format("YYYY/MM/DD"); //json string
									   
				    				arrayDate[key] = str.toString();
									
									$(".seatPay").find("tr").eq(1).find('td').text(movieTitle);
									$(".seatPay").find("tr").eq(2).find('td').text(movieType);
									$(".seatPay").find("tr").eq(3).find('td').text(areaName + " " + roomName);
									$(".seatPay").find("tr").eq(4).find('td').text(str + "　" + time);
									$(".seatPay-price").find("#td-web-fontTitle").text(money + "　");
									
									$(".pay-right").find("tr").eq(1).find('td').text(movieTitle);
									$(".pay-right").find("tr").eq(2).find('td').text(movieType);
									$(".pay-right").find("tr").eq(3).find('td').text(areaName + " " + roomName);
									$(".pay-right").find("tr").eq(4).find('td').text(str + "　" + time);
									
									$(".pay-center").find("h4").eq(1).text(money).append('<font size="3" id="web-fontTitle-child">원</font>');
									
									
									var c = $(".movieBtn").find("img").attr("src");
									$(".seatPay").find("img").attr("src", c);
									$(".seatPay").show();
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
				<div class="modal-body">
					<div class="modal-content-two-count">
						<font id="web-fontTitle">일반</font> 
						<select name="count" id="movieCount">
							<option value="0" selected="selected">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
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
								</td>
							</tr>
							<tr>
								<td>디지털
								</td>
							</tr>
							<tr>
								<td>군자 4관
								</td>
							</tr>
							<tr>
								<td>2018. 09. 21 (금) 12:40
								</td>
							</tr>
							<tr class="seatPay-price">
								<td id="td-web-fontTitle">6,000&nbsp;&nbsp;
								</td>
								<td>원
								</td>
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
	<script>
		$(function(){
			$('.seatPay-btn-right').click(function(){
				 
				var img = $('.seatPay').find('img').attr('src');
				$('.pay-right table').find('img').attr('src', img);
				
				/*
				var movieTitle = $(this).find('.movie_title').text();
				var movieType = $(this).find('.movie_type').text();
				var areaName = $(this).find('.area_name').text();
				var date = $(this).find('.hiddenDate').val();
				var time = $(this).find('.hiddenTime').val();
				var money = $(this).find('.hiddenPrice').val();
				var roomName = $(this).find('.hiddenRoom').val();
				
				var str = moment("/Date(" + date +")/").format("YYYY/MM/DD"); //json string
				   
				str.toString();
				
				$(".pay-right").find("tr").eq(1).find('td').text(movieTitle);
				$(".pay-right").find("tr").eq(2).find('td').text(movieType);
				$(".pay-right").find("tr").eq(3).find('td').text(areaName + " " + roomName);
				$(".pay-right").find("tr").eq(4).find('td').text(str + "　" + time);*/
			});
		});
	</script>
	
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
							20,000
							<font size="3" id="web-fontTitle-child">원</font>
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
								</td>
							</tr>
							<tr>
								<td id="td-web-fontTitle">어른도감
								</td>
							</tr>
							<tr>
								<td>디지털
								</td>
							</tr>
							<tr>
								<td>군자 4관
								</td>
							</tr>
							<tr>
								<td>2018. 09. 21 (금) 12:40
								</td>
							</tr>
							<tr class="seatPay-price">
								<td id="td-web-fontTitle">7,000&nbsp;&nbsp;
								</td>
								<td>원
								</td>
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
	<script>
	$(function(){
		$('#myModal3 .seatPay-btn .seatPay-btn-right').click(function(){
			var roomId = $(".hiddenRoomId").val();
			var turningId = $(".hiddenTurning").val();
			
			var count = 0;
			
			var money = $('#myModal3 .pay-center').find('h4').eq(1).text();
			var result = money.replace('원', '');
			var nMoney = Number(result);
			
			$.ajax({
	    		url:"selectPayCount.mo",
	    		type:"post",
	    		data:{roomId:roomId,
	    			  turningId:turningId},
	    		success:function(data){
	    			count = data;
	    		},
	    		error:function(data){
	    			console.log(data);
	    		}
	    	});
			
			var answer = window.confirm("환불 후 재결제는 불가능합니다. 계속 진행하시겠습니까?");
			var parsonnel = 8;
			
			var movieTitle = $(".seatPay").find("tr").eq(1).find('td').text();
			
			if(answer==true){
				if(count > parsonnel){
					var answer2 = window.confirm("정원이 초과되어 신청이 불가합니다");
				}
				else{
					if(nMoney != 0){
		    	 		cash();
		     		}else{
		    			<%-- var contextPath = '<%=request.getContextPath()%>';
		   				var pId = "imp_"+new Date().getTime() ;
		    			var userNum = '박지용';
		    			var nuriNum = '<%=n.getNuriNum()%>';
		    			var endDate ='<%=n.getEndDate()%>';
						var loc = contextPath + '/payment.pms?imp=' + pId + "&userNum="
								+ userNum + "&nuriNum=" + nuriNum + "&endDate="
								+ endDate;
							console.log(loc);

							location.href = loc; --%>
					}
			   }
			}else{
				alert("신청이 취소되었습니다.");
			}
			
			function cash() {
				var IMP = window.IMP; // 생략가능
				IMP.init('imp05109083'); // 가맹점 식별 코드

				IMP.request_pay({
					pg : 'inicis', // 결제방식
					pay_method : 'card', // 결제 수단
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : movieTitle , // order 테이블에 들어갈 주문명 혹은 주문 번호
					amount : '100',   // 결제 금액
		            buyer_email : "${ sessionScope.loginUser.email }",// 구매자 email
		            buyer_name : "${ sessionScope.loginUser.user_name }",   // 구매자 이름
		            buyer_tel : "${ sessionScope.loginUser.phone }",   // 구매자 전화번호
		            buyer_addr : '?',   // 구매자 주소
		            buyer_postcode : '?',   // 구매자 우편번호
		       }, function(rsp) {
		       if ( rsp.success ) { // 성공시
		          var msg = '결제가 완료되었습니다.';
		          msg += '고유ID : ' + rsp.imp_uid;
		          msg += '상점 거래ID : ' + rsp.merchant_uid;
		          msg += '결제 금액 : ' + rsp.paid_amount;
		          msg += '카드 승인번호 : ' + rsp.apply_num;
		          //console.log();
		          var contextPath = '<%=request.getContextPath()%>';
		          <%-- var uid = rsp.imp_uid;
		          var userNum = '<%=loginUser.getUserNumber()%>';
		          var nuriNum = '<%=n.getNuriNum()%>';
		          var cardNum = rsp.apply_num;
		          var endDate ='<%=n.getEndDate()%>' --%>
		          var loc = contextPath + '/payment.pms?imp=' + uid + "&userNum=" + userNum +"&nuriNum=" + nuriNum +"&endDate=" + endDate; 
		          console.log(loc);
		    
		          location.href=loc;
		       		alert(msg);
		          /*m_redirect_url : // 결제 완료 후 보낼 컨트롤러의 메소드명 */
		       } else { // 실패시
		          var msg = '결제에 실패하였습니다.';
		          msg += '에러내용 : ' + rsp.error_msg;
		          
		       }
		    });
			}
		});
	});
	</script>
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
			height:30px !important;
		}
		.myModal5-titleOne{
			display:inline-block !important;
			float:left !important;
			height:50px !important;
		}
		.myModal5-titleOne #web-fontTitle{
			margin-top:0px !important;
		}
		.myModal5-titleTwo{
			display:inline-block !important;
			float:right !important;
			height:50px !important;
		}
		.areaDiv{
			display:inline-block !important;
			height:400px !important;
			overflow:hidden !important;
			float:left !important;
		}
		.areaDiv td{
			width:150px !important;
			height:40px !important;
			border:1px solid #E6E6E6 !important;
			
		}
		.areaChild{
			display:inline-block !important;
			height:450px !important;
			overflow:hidden !important;
			border:1px solid #E6E6E6 !important;
		}
		.areaChild td{
			width:180px !important;
			height:40px !important;
			cursor:pointer !important;
			/* border:1px solid #E6E6E6 !important; */
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