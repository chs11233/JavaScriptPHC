<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="ut.Ut"%>
<%@ page import="ut.UtDAO"%>
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
	<%
			String userID = null;
			if (session.getAttribute("userID") != null) {
					userID = (String) session.getAttribute("userID");
			}
			if (userID == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('로그인을 하세요.')");
				script.println("location.href = 'login.jsp'");
				script.println("</script>");
			}
			int utID = 0;
			if (request.getParameter("utID") != null) {
				utID = Integer.parseInt(request.getParameter("utID"));
			}
			if (utID == 0) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('유효하지 않은 글입니다.')");
				script.println("location.href = 'user.jsp'");
				script.println("</script>");
			}
			Ut ut = new UtDAO().getUt(utID);
			if(!userID.equals(ut.getUserID())) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('권한이 없습니다.')");
				script.println("location.href = 'user.jsp'");
				script.println("</script>");
			}
	%>
	<div class="container">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">회원관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="logoutAction.jsp">로그아웃</a></li>
							</ul>
						</li>
					</ul>
		<br>
		<h2 class="text-center font-weight-bold">후기</h2>
		<form method="post" action="userUpdateAction.jsp?utID=<%= utID %>">
			 <div class="form-group">
		      <label for="id">제목</label>
		      <input type="text" class="form-control" id="utTitle" name="utTitle" value="<%= ut.getUtTitle() %>">
		    </div>
			    <div class="form-group">
			      <label for="content">내용</label>
			      <textarea type="content" class="form-control" id="utContent" name="utContent" maxlength="2048" style="height: 350px;"><%= ut.getUtContent() %></textarea>
			    </div>
		    <br>
		    <div class="text-center">
					<button  type="submit" class="btn btn-warning">수정</button>
			</div>
		</form>
	</div>
	<br>
</body>
</html>