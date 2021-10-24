<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<% 
	MemberVO vo = (MemberVO)session.getAttribute("mvo"); 
	if (vo != null) {	
	%>
	<a href = "index.jsp">Home</a>	<!--  index.jsp 수정 -->
	<hr>
	<form action = "UpdateMemberServlet" method= "post">
		아이디 : <input type = "text" name = "id" value = <%= vo.getId() %> readonly="readonly">
		<br>
		패스워드 : <input type = "password" name = "password" value = "<%= vo.getPassword() %>" required="required">
		<br>
		이름 : <input type = "text" name = "name" value = "<%= vo.getName() %>" required="required">
		<br>
		주소 : <input type = "text" name = "address" value = "<%= vo.getAddress() %>" required="required">
		<br>
		<button>수정</button>
	</form>
	<%
	}
	else{
		response.sendRedirect("index.jsp");	//index.jsp 수정
	}
	%>
</body>
</html>