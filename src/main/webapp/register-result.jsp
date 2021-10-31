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
		<div class="container">
			<div class = "row">
				<div class = "col-sm-4 offset-4">
					<div class="card" style="width: 400px" >
						<img class="card-img-top" src="image/img_avatar1-2.png" alt="Card image" style="width: 100%">
						<div class="card-body text-center">
							<h4 class="card-title">회원가입을 축하드립니다!</h4>
							<a href="index.jsp" class="btn btn-primary">메인으로 이동</a>
						</div> <%--card-body text-center --%>
					</div> <%-- card--%>
				</div> <%--col-sm-4 offset-4 --%>
			</div> <%-- row --%>
		</div> <%-- container --%>
	</body>
</html>