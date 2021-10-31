<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>회원정보 수정 완료</title>
</head>
<body>
	<div class="container pt-5">
		<div class="row">
			<div class="col-sm-6 offset-sm-3">
				<h2>
					<img src="image/member-icon.png" style="padding: 0px 10px 8px 0px;">${sessionScope.mvo.id}님의 회원정보 수정 결과
				</h2>
				<hr>
				<table class="table table-bordered">
					<tr>
						<td align=center>아이디</td>
						<td>${sessionScope.mvo.id}</td>
					</tr>
					<tr>
						<td align=center>비밀번호</td>
						<td>${sessionScope.mvo.password}</td>
					</tr>
					<tr>
						<td align=center>이름</td>
						<td>${sessionScope.mvo.name}</td>
					</tr>
					<tr>
						<td align=center>주소</td>
						<td>${sessionScope.mvo.address}</td>
					</tr>
					<tr>
						<td align=center>생년월일</td>
						<td>${sessionScope.mvo.birth}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div style="text-align: center;">
		<button type="button" onclick="location.href='index.jsp'" class="btn btn-outline-success">홈으로</button>
	</div>
</body>
</html>