<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>findbyid-ok</title>
	</head>
	<body>
		<%
			MemberVO vo = (MemberVO)request.getAttribute("mvo");
		%>
		<a href="test-findbyid.jsp">Home</a>
		<h3>검색결과</h3>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=vo.getId() %></td>
					<td><%=vo.getName() %></td>
					<td><%=vo.getAddress() %></td>
				</tr>
			</tbody>
		</table>
	</body>
</html>