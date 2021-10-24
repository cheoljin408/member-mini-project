<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복</title>
<script type="text/javascript">
	opener.document.getElementById("flag").value = "";
	function closePopup() {
		let idComp = opener.document.getElementById("id");
		idComp.value = "";
		idComp.focus();
		self.close();
	}
</script>
</head>
<body bgcolor="orange" onunload="closePopup()">
	<%=request.getParameter("id")%> 아이디 중복되어 사용불가
	<br>
	<br>
	<button onclick="closePopup()">확인</button>
</body>
</html>