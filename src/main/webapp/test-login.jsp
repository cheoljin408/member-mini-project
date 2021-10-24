<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
	<%
	MemberVO mvo = (MemberVO) session.getAttribute("mvo");
	if (mvo == null) {
	%>
	<form action="LoginServlet" method="post">
		<input type="text" name="id" placeholder="아이디" required="required"><br>
		<input type="password" name="password" placeholder="패스워드" required="required">
		<button>로그인</button>
	</form>
	<%
	} else {
	%>
	<h3>로그인 성공</h3>
	<%=mvo.getName()%> 님 환영합니다.
	<script type="text/javascript">
		function logout(){
			document.getElementById("logoutForm").submit();
		}
	</script>
	<form action = "LogoutServlet" method = "post" id = "logoutForm"></form>
	<a href = "#" onclick = "logout()">로그아웃</a>
	
	<hr>
	<h3>회원정보 수정</h3>
	<a href = "update-member-form.jsp">회원정보수정</a>
	<%
	}
	%>
</body>
</html>