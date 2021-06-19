 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/access.css">
	<title>로그인 | BusanTravel</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="hero-image">
		<div class="hero-text">
			<h1 style="font-size: 50px"><a href="main1.jsp">BusanTravel</a></h1>
			<p>로그인</p>
			<form method="post" action="loginAction.jsp">
				<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
					<tbody>
						<tr>
							<td colspan="2">
								<input type="text" class="form-control" id="userID" name="userID" maxLength="20" placeholder="아이디">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="password" class="form-control" id="userPassword" name="userPassword" maxLength="20" placeholder="비밀번호">
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<input class="btn btn-primary pull-right" type="submit" value="로그인"></td>
						</tr>
					</tbody>
				</table>
			</form>
			<span>ID가 없으세요?<a href="join.jsp"> 여기서 가입</a></span>
		</div>
	</div>
</body>
</html>