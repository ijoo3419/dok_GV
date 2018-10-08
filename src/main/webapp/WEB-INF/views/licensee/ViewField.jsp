<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String[][] arr = (String[][])request.getAttribute("field");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	input[type=checkbox] {
  		transform: scale(5);
	}
</style>
</head>
<body>
	<h2>><a href='<%=request.getContextPath()%>/TestServlet'>테스트용 앵커</a></h2>
	
	<form id="form1" name="form1" method="post" action="<%=request.getContextPath() %>/TestServlet">
		<label>농장 이름 : </label><input type='text' name='name'> <br>
		<label>구매할 농부의 농장이름 : </label><input type='text' name='table'> <br><br><br>
		<%int row=0; %>
		<%for(int i=1;i<(15*15)+1; i++){ %>
			<%if((arr[row][(i-1)%15].equals("."))){ %>
				<input type="checkbox" id='ch<%=i %>' name="bak" value="<%=i%>" disabled/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%}else if(!(arr[row][(i-1)%15].equals("O"))){ %>
				<input type="checkbox" id='ch<%=i %>' name="bak" value="<%=i%>" disabled checked/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%}else{ %>
				<input type="checkbox" id='ch<%=i %>' name="bak" value="<%=i%>"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%} %>
			<%if(i%15 == 0){ row++;%>
				<br>
				<br><br>
			<%} %>
		<%} %>
		<input type='submit' value='전송'>
	</form>
	
</body>
</html>