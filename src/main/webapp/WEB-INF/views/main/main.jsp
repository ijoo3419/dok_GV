<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	width: 95%;
	position: relative;
	margin: auto;
	margin-top: 50px;
}

/* Caption text */
.text {
	color: #000000;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
	width: 100%;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}

.movie {
	width: 100%;
	background: #f2f2f2;
}

.rank {
	display: inline-block;
	background: #fff;
	width: 20%;
	height: 90%;
	margin-right: 20px;
	margin-top: 20px;
}

.rul {
	margin-right: 20px;
	margin-left: 20px;
	height: 400px;
	padding-left: 250px;
}

.mname {
	width: 100%;
	height: 50px;
	text-align: center;
}

#detail {
	width: 110px;
	font-size : 9pt;
}

#book {
	font-size : 9pt;
	width: 110px;
	background-color : #212931;
	box-shadow : none;
	color : #ffffff !important;
}
</style>
</head>
<body>
	<c:import url="../common/headBar.jsp" />
	<div class="slideshow-container">

		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img src="${contextPath }/resources/images/slide3.jpg"
				style="width: 100%; height: 400px;">
			<!-- <div class="text">Caption One</div> -->
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 3</div>
			<img src="${contextPath }/resources/images/slide2.jpg"
				style="width: 100%; height: 400px;">
			<!-- <div class="text">Caption Two</div> -->
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 3</div>
			<img src="${contextPath }/resources/images/slide4.jpg"
				style="width: 100%; height: 400px;">
			<!-- <div class="text">Caption Three</div> -->
		</div>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>
	<div class="movie">
		<div class="ranking">
			<ul class="rul">
				<li class="rank"><img class="rimage"										
					src="${contextPath }/resources/images/slide1.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">														<!-- 샘플 -->
						<p>영화1</p>
					</div>
					<div>
						<button id="detail" onclick="location.href=''">상세보기</button>		<!-- view구현 할 사람 여기 사용 -->
						<button id="book" onclick="location.href=''">예매하기</button>			<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide2.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화2</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book">예매하기</button>
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide3.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화3</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book">예매하기</button>
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide4.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화4</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book">예매하기</button>
					</div></li>
			</ul>
		</div>
	</div>

	<div class="movie">
		<div class="ranking">
			<ul class="rul">
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide1.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화1</p>
					</div>
					<div>
						<button id="detail" onclick="location.href=''">상세보기</button>
						<button id="book" onclick="location.href=''">예매하기</button>
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide2.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화2</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book">예매하기</button>
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide3.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화3</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book">예매하기</button>
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide4.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화4</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book">예매하기</button>
					</div></li>
			</ul>
		</div>
	</div>
	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</body>
</html>