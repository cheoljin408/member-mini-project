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
			 function passwordChanged() {
			        var strength = document.getElementById('strength');
			        var strongRegex = new RegExp("^(?=.{14,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
			        var mediumRegex = new RegExp("^(?=.{10,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
			        var enoughRegex = new RegExp("(?=.{8,}).*", "g");
			        var pwd = document.getElementById("pass");
			        if (pwd.value.length == 0) {
			            strength.innerHTML = '패스워드 강도';
			        } else if (false == enoughRegex.test(pwd.value)) {
			            strength.innerHTML = 'More Characters';
			        } else if (strongRegex.test(pwd.value)) {
			            strength.innerHTML = '<span style="color:green">Strong!</span>';
			        } else if (mediumRegex.test(pwd.value)) {
			            strength.innerHTML = '<span style="color:orange">Medium!</span>';
			        } else {
			            strength.innerHTML = '<span style="color:red">Weak!</span>';
			        }
			    }
		</script>
		<form action="RegisterMemberController.do" method="post" onsubmit="return checkRegForm()">
			<input type="text" name="id" id="id" required="required" placeholder="아이디"> <input type="hidden" id="flag" value="">
			<button type="button" onclick="checkId()">중복확인</button><br> 
			<input type="password" name="password" id="pass" required="required" placeholder="패스워드" maxlength="100" onkeyup="return passwordChanged();"><br>
			<span id="strength">패스워드 강도</span><br>
			<input type="password" name="confirmPassword" id="confirmPass" required="required" placeholder="패스워드확인"><br> 
			<input type="text" name="name" required="required" placeholder="이름"><br> 
			<input type="text" name="address" required="required" placeholder="주소"><br>
			<input type="date" name="birth" required="required" placeholder="생년월일" >
			<button type="submit">가입하기</button>
		</form>
	</div>
</body>
</html>










