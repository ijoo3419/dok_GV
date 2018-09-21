<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
#main > .post.featured {
    text-align: left !important;
}

h3 {
    font-size: 1.25rem;
    margin: 0 !important;
}
h1 {
		font-size: 3rem !important;
		line-height: 1.1;
		margin: 0 0 2rem 0;
	}
#main > .post {
    padding: 0 !important;
}
hr {
    border: 0;
    border-bottom: solid 2px;
    margin: 0 !important;
}	

#movieArea{
		width: 1400px;
    	height: 100%;
    	/* margin: 0 auto; */
	
	}
	#sumnailimage{
		border: solid 1px;
		display:inline-block;
		width:300px;
		height:400px;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
		float: left;
	}
	#data{
		display:inline-block;
		width:760px;
		height:400px;
		float: left;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
	}
	#synopsis{
		display:inline-block;
		width:900px;
		height:200px;
		margin-left:20px;
	}
	#imageview{
		border: solid 1px;
		display:inline-block;
		width:900px;
		height:200px;
		margin-left: 120px;
		/* margin-right:20px; */
		margin-top:20px;
	}
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  .container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    width:900px;
    background-color:black;
}
.carousel-inner {
    position: relative;
    width: 100%;
    height:100%;
    overflow: hidden;
}
#user{
	width:1300px;
	height:150px;
	/* display:inline-block; */
}
#grade{
	display:inline-block;
	margin-left:20px;
	border: solid 1px;
	width:200px;
	height:100px;
	float:left;
}
#userimage{
	display:inline-block;
	margin-left:20px;
	margin-right:20px;
	border: solid 1px;
	width:100px;
	height:100px;
	float: left;
}
#gradeinsert{
	display:inline-block;
	border: solid 1px;
	width:600px;
	height:100px;
	float: left;
}
#usergrade{
	/* display:inline-block; */
	margin-left: 150px;
	border: solid 1px;
	width:900px;
	height:100%;
	float: left;
}
 .pagination {
  		display:inline-blick;
	    /* width:400px;
	    height:60px;
	    overflow:hidden; */
	    align:center;
	    padding-left: 0;
	    margin: 20px 0;
	    boder-radius:4px;
	    pointer: cursor;
	}
	.pagination a {
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	    border: 1px solid #ddd;
	    pointer: cursor;
	}
	.pagination a.active {
	    background-color: rgb(241, 196, 15);
	    color: white;
	    border: 1px solid rgb(241, 196, 15);
	    pointer: cursor;
	}
	.pagination a:hover:not(.active) {
		background-color: #ddd;
		pointer: cursor;
	}
	.pagination a:first-child {
	    border-top-left-radius: 5px;
	    border-bottom-left-radius: 5px;
	    pointer: cursor;
	}
	.pagination a:last-child {
	    border-top-right-radius: 5px;
	    border-bottom-right-radius: 5px;
	    pointer: cursor;
    }
    #pagi{
   		display:inline-blick;
    	align:center;
    }
    #gardetext{
    	display:inline-blick;
    	float:left;
    	width:200px;
    	
    	
    }
    #gradeimage{
    	display:inline-blick;
    	float:left;
    	width:100px;
    	height:100px;
    }
    #check{
    	display:inline-blick;
    	float:right;
    	margin-right: 20%;
    }
    #hrline{
    	display:inline-block; 
    	border:0; 
    	margin:0; 
    	margin-top:2px;
    	height: 20px
    }
</style>		
		 <title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
		<noscript><link rel="stylesheet" href="${contextPath }/resources/css/noscript.css" /></noscript>
		
	</head>
	<body class="is-preload">
<jsp:include page="../common/headBar.jsp"/>
			
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
					<!-- <nav id="nav">
						<ul class="links">
							<li><a href="../index.jsp">jsp상영등록</a></li>
							<li><a href="findIdPassword.jsp">아이디/비밀번호 찾기</a></li>
							<li><a href="movie.jsp">영화 페이지</a></li>
							<li><a href="cinema.jsp">영화관 페이지</a></li>
							<li><a href="cinemaDetail.jsp">영화관 상세보기</a></li>
							<li class="active"><a href="movieDetail.jsp">영화상세보기</a></li>

						</ul>
						 <ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav> -->

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
							<br>
	<h1 align="left" style="margin-left:20px;"> 영화상세</h1>
	<hr>
	<!-- <div id="movieArea"> -->
		<div id="sumnailimage">
	
		</div>
		<div id="data">
			<h3 align="left">독립영화</h3>
			<p style="text-align:left;">movie, 2018</p>
		<hr style="margin:0;">
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">★★★☆☆</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">5.5</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<hr width="1px" size="40px" color="black" id="hrline">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">예매율 7위 30.4%</a>
			<input type="button" value="예매하기" style="background:purple; font-clolr:white; float:right;  margin-top:10px;">
			<br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">타입:</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">개봉일:</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">감독:</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">출연진:</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">장르:</a><br>
			
			
			<input type="button" value="상영시간표" style="float:right; ">
			<input type="button" value="♥보고싶어" style="float:right; margin-right:10px; text-decoration: none;">
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
		<hr>
		
		<br>
		<h2 align="left" style="margin-left:20px;">줄거리</h2>
		<div id="synopsis">
			발휘하기 커다란 않는 반짝이는 우리 피부가 얼마나 넣는 피다. 
			아름답고 얼마나 모래뿐일 튼튼하며, 것이다. 이상의 우리의 것이다.보라, 철환하였는가? 
			아니더면, 무엇이 가장 가치를 하였으며, 그들의 실현에 천지는 거친 봄바람이다. 
			그들의 관현악이며, 돋고, 것이다. 곧 속잎나고, 새 천지는 어디 보는 밥을 가는 교향악이다. 
			그들의 인생을 가지에 생생하며, 곧 피가 얼음이 사라지지 것이다. 
			천하를 속에 지혜는 바로 못할 피다. 귀는 속잎나고, 열락의 피고, 운다. 옷을 위하여, 미인을 때까지 무엇을 할지라도 그리하였는가?
		</div>
		
		<br><br><br>
		
		<a style="text-align:left; width:100px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;;">스틸컷</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<hr width="1px" size="40px" color="black" id="hrline">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">동영상</a>
			<br>
		<div align="center" id="imageview">
		
		
		</div>

		 <br><br>
		<div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
    <!-- Indicators -->
    <!-- <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol> -->

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="${contextPath }/resources/images/logo.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="${contextPath }/resources/images/logo.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="${contextPath }/resources/images/logo.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="${contextPath }/resources/images/logo.jpg" alt="Flower" width="460" height="345">
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
		<br><br><br>
		<hr>
		<h2 align="left" style="margin-left:20px;">평점</h2>
		
		<div id="userimage">
			<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
		</div>
		
		<div id="user">
			<div id="grade">
				<a style="text-align:center; width:100px; margin-left:30px; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a>
				<a style="text-align:center; width:100px; margin-left:40px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">평점을 입력하세요.</a>
			</div>
			<div id="gradeinsert">
				<input type="text" style="width:600px; height:98px; margin:0 !important;">
			</div>
			<input type="button" value="등록" style="width:100px; height:100px;">
			
		</div>
		<div id="check">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">최신순</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천순</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">평점순</a>
		</div>
		<div id="usergrade">
			<table border="1" summary="" style="width:900px; height:600px;">
				<tr>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
					<td>
						<div id="gradeimage">
							<img src="${contextPath }/resources/images/logo.jpg" width="100" height="100">
						</div>
						<div id="gardetext">
						<a style="text-align:center; width:50px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">ddljdo</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">18.09.18</a>
						<a style="text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">☆☆☆☆☆</a><br>
						<a style="text-align:center; width:50px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">재밌음</a><br>
						<img src="${contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천</a>
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">0</a>
						<img src="${contextPath }/resources/images/garbage.png" width="20" height="20" style="margin-left:10px; margin-top:10px;">
						<a style="text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">신고하기</a>
						</div>
					</td>
				</tr>
			</table>
		</div>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
		 <div id="pagi" align="center">
             <div class="pagination" align="center">
             <br>
             	<a href="location.href='#'"><<</a>
             	<%-- <% if(currentPage <= 1){ %> --%>
             	<a disabled><</a>
             <%-- 	<% }else{ %> --%>
             	<a onclick="location.href='#'">&laquo;</a>

             	<%-- <% } %>
             	<% for(int p = startPage; p <= endPage; p++){
             		if(p == currentPage){	
             	%> --%>

             	<a class="active" disabled><%-- <%= p %> --%>1</a>
             	<%-- <%  }else{ %> --%>
             	<a onclick="location.href='#'"><%-- <%= p %> --%>2</a>

             <%-- 	<%  } %>
             	<% } %> --%>
             	
             	<%-- <% if(currentPage >= maxPage){ %> --%>
             	<a disabled>></a>
             	<%-- <% }else{ %> --%>
             	<a onclick="location.href='#'">></a>
             	<%-- <% } %> --%>
             	<a onclick="location.href='#'">>></a>
             </div>
         </div>
	<!-- </div> -->
							
		</article>
		
		
</div>
<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

<br><br><br><br><br><br>			

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