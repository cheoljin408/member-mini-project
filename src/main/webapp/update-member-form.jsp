<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#id-style { <%-- 'id 님의 정보입니다' 부분 id 초록색으로 굵게 --%> font-weight:bold;
	color: green;
}

#id-input { <%-- 아이디 수정부분 input 박스 테두리 제거 --%> border:none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
	outline: none;
}

input {
	border: 1px solid grey;
}

input:focus {
	outline: 1px solid green;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<title>회원정보수정</title>
<body>
	<c:choose>
		<c:when test="${sessionScope.mvo == null}">
			<%
			response.sendRedirect("index.jsp");
			%>
		</c:when>
		<c:otherwise>
			<div class="container pt-5">
				<div class="row">
					<div class="col-sm-6 offset-sm-3">
						<h2>
							<img src="image/member-icon.png" style="padding: 0px 10px 8px 0px;">회원정보
						</h2>
						<%-- '회원정보' 왼쪽에 아이콘 추가 --%>
						<p>
							<span id="id-style">${sessionScope.mvo.id}</span>님의 정보입니다.
						</p>
						<hr>
						<form action="UpdateMemberController.do" method="post">
							<table class="table table-bordered">
								<tr>
									<td align=center>아이디</td>
									<td>
										<input id="id-input" type="text" name="id" value="${sessionScope.mvo.id}" readonly="readonly">
									</td>
								</tr>
								<tr>
									<td align=center>비밀번호</td>
									<td>
										<input type="password" name="password" value="${sessionScope.mvo.password}" required="required">
									</td>
								</tr>
								<tr>
									<td align=center>이름</td>
									<td>
										<input type="text" name="name" value="${sessionScope.mvo.name}" required="required">
									</td>
								</tr>
								<tr>
									<td align=center>주소</td>
									<td>
										<input type="text" name="address" value="${sessionScope.mvo.address}" required="required">
									</td>
								</tr>
								<tr>
									<td align=center>생년월일</td>
									<td>
										<input type="date" name="birth" required="required" value="${sessionScope.mvo.birth}">
									</td>
								</tr>
							</table>
							<div style="text-align: center;">
								<button type="button" onclick="location.href='index.jsp'" class="btn btn-outline-success">뒤로가기</button>
								<button type="submit" class="btn btn-outline-success">수정</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>