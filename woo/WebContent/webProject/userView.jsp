<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="ut.Ut"%>
<%@ page import="ut.UtDAO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 쓰기</title>
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
					int utID = 0;
					if (request.getParameter("utID") != null) {
						utID = Integer.parseInt(request.getParameter("utID"));
					}
					if (utID == 0) {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('유효하지 않은 글입니다.')");
						script.println("location.href = 'login.jsp'");
						script.println("</script>");
					}
					Ut ut = new UtDAO().getUt(utID);
			%>
				<div class="container">
				 <%
						if(userID == null) {
					%>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">접속하기<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp">로그인</a></li>
								<li><a href="join.jsp">회원가입</a></li>
							</ul>
						</li>
					</ul>
					<%
						} else {
					%>
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
					<%
						}
					%>
		<br>
		<table class="table table-striped" style="text-alig: center; border: 1px solid #dddddd">
		<h2 class="text-center font-weight-bold" colsapn="3">후기</h2>
		<hr/>
					<tbody>
						<tr>
							<td style="width: 20%;">글 제목</td>
							<td colspan="2"><%= ut.getUtTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td colspan="2"><%= ut.getUserID() %></td>
						</tr>
						<tr>
							<td>작성일자</td>
							<td colspan="2"><%= ut.getUtDate().substring(0, 11) + ut.getUtDate().substring(11, 13) + "시 " + ut.getUtDate().substring(14, 16) + "분 " %></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="min-height: 200px; text-align: left;"><%= ut.getUtContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
						</tr>
					</tbody>
		</table>
						<a href="user.jsp" class="btn btn-primary">목록</a>
						<%
							if(userID != null && userID.equals(ut.getUserID())) {
						 %>
								<a href="userUpdate.jsp?utID=<%= utID %>" class="btn btn-primary">수정</a>
								<a href="userDeleteAction.jsp?utID=<%= utID %>" class="btn btn-primary">삭제</a>
						<% 
							 }
						 %>
	</div>
	<br>
</body>
</html>