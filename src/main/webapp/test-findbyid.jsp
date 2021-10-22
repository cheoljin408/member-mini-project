<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>test-findbyid</title>
	</head>
	<body>
		<h3>아이디로 회원 검색</h3>
		<form action="FindMemberByIdServlet">
			<input type="text" name="id" required="required" placeholder="아이디">
			<button type="submit">검색</button>
		</form>
	</body>
</html>