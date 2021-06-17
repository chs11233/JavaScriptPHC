<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회원가입</title>
<!-- 스타일 경로 -->
<link rel="stylesheet" href="style/mainstyle.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
 <a class="navbar-brand" href="main1.jsp">Busan travel</a>
	<div class="banner">
   <div class="container">
    <div class="row">
			<div class="col-sm-12 text-center">
			<div class="col-sm-3"></div>
				<div class="col-sm-6">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
					<h2>회원가입</h2>
					<form action="joinAction.jsp" method="post">
						<table class="table table-boardered">
							<tr>
								<th>아이디</th>
								<td><input type="text" class="form-control" name="userID" placeholder="id를 넣으세요"></td>
							</tr>
							<tr>
								<th>패스워드</th>
								<td><input type="password" class="form-control" name="userPassword" placeholder="비밀번호는 영문만 넣어주세요"></td>
							</tr>
							<tr>
								<th>패스워드확인</th>
								<td><input type="password" class="form-control" name="userPassword" placeholder="공백 및 특수문자를 넣을 수 없습니다."></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="email" class="form-control" name="userEmail"></td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td><input type="tel" class="form-control" name="userTel" placeholder="- 기호는 생략해주세요"></td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" class="btn btn-primary" value="전송"> 
								<input type="reset" class="btn btn-danger" value="취소" onclick="history.back(-1);"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
</div>
</div>
</body>
</html>