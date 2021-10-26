<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 사용가능</title>
<script type="text/javascript">
	opener.document.getElementById("flag").value="<%=request.getParameter("id")%>";
	function closePopup() {
		opener.document.getElementById("pass").focus();
		self.close();
	}
</script>
</head>
<body bgcolor="yellow" onunload="closePopup()">
	${param.id}
	아이디 사용가능합니다!
	<br>
	<br>
	<button type="button" onclick="closePopup()">확인</button>
</body>
</html>

