<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>test-findbyaddress</title>
	</head>
	<body>
		<h3>주소로 회원 검색</h3>
		<form action="FindMemberListByAddressServlet">
			<input type="text" name="address" required="required" placeholder="주소" >
			<button type="submit">검색</button>
		</form>
	</body>
</html>