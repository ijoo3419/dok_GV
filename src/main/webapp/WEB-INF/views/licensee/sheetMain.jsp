<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input[type=checkbox] {
  		transform: scale(5);
	}
</style>
</head>
<body>
	<h1>테스트용 워크스페이스</h1>
	<h2>><a href='<%=request.getContextPath()%>/TestServlet'>테스트용 앵커</a></h2>
	
	<form id="form1" name="form1" method="post" action="<%=request.getContextPath() %>/TestServlet">
		<label>농장 이름 : </label><input type='text' name='name'> <br>
		<label>구매할 농부의 농장이름 : </label><input type='text' name='table'> <br><br><br>
		<%for(int i=1;i<(15*15)+1; i++){ %>
			
			<input type="checkbox" id='ch<%=i %>' name="bak" value="<%=i%>" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%if(i%15 == 0){ %>
				<br>
				<br><br>
			<%} %>
		<%} %>
		<input type='submit' value='전송'>
	</form>
	<hr><hr>
	
	<form action='ViewFiled' method='post'>
	<h1>농부 면적 보기</h1>
	<label>농장이름 : </label><input type='text' name='name'>
	<button type='submit'>보러가기</button>
	</form>
	<br><br><br><br><br><br><br><br><br><br><br><br><br>
	

</body>
</html>