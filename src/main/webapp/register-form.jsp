<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>
	<div class="container">
		<a href="index.jsp">Home</a>
		<hr>
		<script type="text/javascript">
			function checkRegForm() {
				if (document.getElementById("pass").value != document
						.getElementById("confirmPass").value) {
					alert("패스워드와 패스워드 확인이 일치하지 않습니다");
					return false;
				}
				if (document.getElementById("flag").value != document
						.getElementById("id").value) {
					alert("인증받은 아이디가 아닙니다 \n아이디 중복확인하세요");
					return false;
				}
			}
			function checkId() {
				let mid = document.getElementById("id");
				if (mid.value == "") {
					alert("아이디를 입력하세요");
				} else {
					window.open("IdCheckController.do?id=" + mid.value, "mypopup",
							"width=350,height=150,top=150,left=400");
				}
			}
		</script>
		<form action="RegisterMemberController.do" method="post" onsubmit="return checkRegForm()">
			<input type="text" name="id" id="id" required="required" placeholder="아이디"> <input type="hidden" id="flag" value="">
			<button type="button" onclick="checkId()">중복확인</button><br> 
			<input type="password" name="password" id="pass" required="required" placeholder="패스워드"><br> 
			<input type="password" name="confirmPassword" id="confirmPass" required="required" placeholder="패스워드확인"><br> 
			<input type="text" name="name" required="required" placeholder="이름"><br> 
			<input type="text" name="address" required="required" placeholder="주소"><br>
			<input type="date" name="birthday" required="required" placeholder="생년월일" >
			<button type="submit">가입하기</button>
		</form>
	</div>
</body>
</html>










