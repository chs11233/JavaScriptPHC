<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<title>Busan travel</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
</head>
<body>
<form action="userWrite.jsp">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="main1.jsp"> 
	 		<img src="images/logo.png" width="70" height="70" class="d-inline-block align-top">
		</a>
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="user.jsp">고객 게시판</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="board.jsp">문의하기</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	<br>
	<div class="container">
		<div class="form-group row float-right">
			<div class="col-xs-8">
				<input class="form-control"  id="search" name="search" type="text" size="20" onkeyup="searchFunction()" placeholder="Search..">
			</div>
			<div class="col-xs-2">
				<button class="btn btn-primary" type="button" onclick="searchFunction()">검색</button>
			</div>
		</div>
		</div>
		<table class="table" style="text-align: center;border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #fafafa;text-align: center;">게시물 번호</th>
					<th style="background-color: #fafafa;text-align: center;">작성자</th>
					<th style="background-color: #fafafa;text-align: center;">작성일</th>
					<th style="background-color: #fafafa;text-align: center;">내용</th>
				</tr>
			</thead>
			<tbody id="ajaxTable">
			</tbody>
		</table>
	</div>
  <div class="text-center">
			<button  type="submit" class="btn btn-secondary">글쓰기</button>
	</div>
</form>
</body>
</html>