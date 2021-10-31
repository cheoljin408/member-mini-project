<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<title>회원관리</title>
		<link rel="stylesheet" type="text/css" href="css/home.css">
	</head>
	<body>
		<div class = "jumbotron jumbotron-fluid">
			<div class="container">
				<h1><a href="index.jsp">MemberProject Home</a></h1>
			</div> <%-- container div --%>
		</div> <%-- jumbtron div --%>
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
		<div class = "container">
			<div class = "row">
				<div class="col-sm-4 offset-sm-4">	
					<form action="RegisterMemberController.do" method="post" onsubmit="return checkRegForm()">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="id" id="id" required="required" placeholder="아이디">
						<input type="hidden" id="flag" value="">
						<div class="input-group-append">
							<button type="button" onclick="checkId()" class="btn btn-outline-primary"> 중복 확인 </button> 
						</div> <%-- input -group-append --%>
				 	</div> <%-- input group mb-3 --%>
				 	<div class="input-group mb-3"> 
						<input type="password" class="form-control" name="password" id="pass" required="required" placeholder="패스워드" maxlength="100" onkeyup="return passwordChanged();">
						<div class="input-group-append">
							<span id="strength" class = "input-group-text">패스워드 강도</span>
						</div>
					</div> <%-- input group mb-3 --%> 
					<div class="input-group mb-3">
						<input type="password" class="form-control" name="confirmPassword" id="confirmPass" required="required" placeholder="패스워드확인">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="name" required="required" placeholder="이름">
					</div> 
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="address" required="required" placeholder="주소">
					</div>
					<div class="input-group mb-3">	
						<input type="date" class="form-control" name="birth" required="required" placeholder="생년월일" >
					</div>
						<button type="submit" class="btn btn-primary btn-block">가입하기</button>
					</form>
				</div><%--col-sm-4 offset-sm-4 div --%>
			</div>  <%-- row div --%>	
		</div> <%-- container --%>
	</body>
</html>










