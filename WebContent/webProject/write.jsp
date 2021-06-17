<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>1:1 문의하기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
</head>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">1:1 문의하기</h2>
		<hr/>
			
		<form action="InsertPro.jsp">
		  <div class="form-group">
	      <label for="id">제목</label>
	      <input type="text" class="form-control" id="id" name="id">
	    </div>
	     <div class="form-group">
	      <label for="name">이름</label>
	      <input type="text" class="form-control" id="name" name="name">
	    </div>
	    <div class="form-group">
	      <label for="pwd">비밀번호</label>
	      <input type="password" class="form-control" id="pwd" name="pwd" >
	    </div>
	    <div class="form-group">
	      <label for="pwd">내용</label>
	      <textarea type="password" class="form-control" id="pwd" name="pwd" maxlength="2048" style="height: 350px;"></textarea>
	    </div>
	    <br>
	    <div class="text-center">
				<button  type="submit" class="btn btn-secondary">등록</button>
		</div>
		</form>
	
	</div>
	<br>
</body>
</html>