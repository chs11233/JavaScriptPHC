<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/access.css">
	<title>회원가입 | BusanTravel</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="hero-image">
		<div class="hero-text">
			<h1 style="font-size: 50px"><a href="main1.jsp">BusanTravel</a></h1>
			<p>회원가입</p>
			<form method="post" action="joinAction.jsp">
				<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
					<tbody>
						<tr>
							<td colspan="2">
							    <input type="text" class="form-control" name="userID" maxLength="20" placeholder="아이디">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="password" class="form-control" name="userPassword" maxLength="20" placeholder="비밀번호">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="password" class="form-control" name="userPassword" maxLength="20" placeholder="비밀번호 확인">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="text" class="form-control" name="userEmail" maxLength="50" placeholder="이메일">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="text" class="form-control" name="userTel" maxLength="20" placeholder="전화번호">
							</td>
						</tr>
							<tr>
								<th>성별</th>
								<td>
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
								</td>
							</tr>
							<tr>
						<tr>
							<td colspan="2">
								<input class="btn btn-primary pull-right" type="submit" value="가입">
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			<span>이미 계정을 갖고 계시다구요?<a href="login.jsp"> 여기서 로그인</a></span>
		</div>
	</div>
</body>
</html>