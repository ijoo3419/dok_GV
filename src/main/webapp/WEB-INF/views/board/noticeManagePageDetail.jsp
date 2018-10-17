<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#detailView{
   /* display:inline-block; */
   border: solid 1px;
   width:900px;
   height:100%;
   float: left;
}

#title {
   display: inline;
   padding: 100px;
}

</style>


<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
   <link rel="stylesheet" href="${contextPath }/resources/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">
   <c:import url="../common/headBar.jsp" />


   <div id="wrapper" class="fade-in">

      <header id="header">
      </header>

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
         <h2>공지사항 상세보기</h2>
            <br><br>
            
            
            
            <div id="detailView">
               <table border="" summary="">
                        <h4 align="left" id="title"> ${ bbf.nickname } </h4><h2 style="margin-top:20px" align="center" id="title"> ${ bbf.btutle }</h2><h4 align="right" id="title"> ${ bbf.bcount } </h4>
                  <tbody>
                     <tr>
                        <td bgcolor="white">
                         ${ bbf.bcontent }<br><br><br><br><br>
                           
                        </td>
               
                     </tr>
                  </tbody>

               </table>
            </div>
            
            

            <input type="hidden" id="mId" name="mId" value="${ loginUser.mid }">
               <div class="row gtr-uniform">
<%--                   <div class="col-6 col-12-xsmall">
                     <input type="text" name="btitle" id="btitle" readonly value="${ bbf.btitle }"/>            
                  </div> --%>
               </div>
               <br>
               
               <br>
               <br><br><br><br>
            <br>
            <button class="button" onclick="goBack()">목록</button>
            <button class="button" onclick="modify()">수정</button>
            
            </article>
            </div>
            
            
            <script>
               function goBack(){
                  location.href="notice.li";
               }
               
               function modify(){
                  location.href="modifyNotice.bo";
               }
            </script>









            
            
            <%-- <table align="center" id="detail">
               <tr>
                  <td width="100px">글번호</td>
                  <td><b>${ bbf.board_id }</b></td>
               </tr>
               <tr>
                  <td>제목</td>
                  <td><b>${ bbf.btitle }</b></td>
               </tr>
               <tr>
                  <td>작성자</td>
                  <td><b>${ bbfnickname }</b></td>
               </tr>
               <tr>
                  <td>조회수</td>
                  <td><b>${ bbf.bcount }</b></td>
               </tr>
               <tr>
                  <td>작성일</td>
                  <td><b>${ bbf.board_date }</b></td>
               </tr>
               <tr>
                  <td>내용</td>
                  <td><p style="height:100px"><b>${ bbf.bcontent }</b></p></td>
               </tr>
            </table>
             --%>
            
            
            <%-- <table align="center">
               <tr>
                  <td>
                     <textarea cols="60" rows="5"></textarea>
                  </td>
                  <td>
                     <button>등록하기</button>
                  </td>
               </tr>
               <tr>
                  <td colspan="2"><b>답글(갯수)</b></td>
               </tr>
            </table>
            <hr>
            <c:if test="댓글갯수 > 0">
               <table align="center">
                  <c:forEach var="r" item="댓글리스트">
                     <tr>
                        <td width="100px">유저네임</td>
                        <td width="300px">댓글내용</td>
                        <td width="100px">날짜</td>
                     </tr>
                  </c:forEach>
               </table>
            </c:if> --%>
   
         
         
         
         
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