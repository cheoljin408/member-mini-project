<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>findbyaddress-result</title>
	</head>
	<body>
		<%
			@SuppressWarnings("unchecked")
			ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("memberList");
		%>
		<a href="test-findbyaddress.jsp">Home</a>
		<h3>검색결과</h3>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(int i=0; i<list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getId() %></td>
					<td><%=list.get(i).getName() %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</body>
</html>