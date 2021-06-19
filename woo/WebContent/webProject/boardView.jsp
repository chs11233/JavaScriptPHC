<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="wt.Wt"%>
<%@ page import="wt.WtDAO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>문의 글</title>
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
		int wtID = 0;
		if (request.getParameter("wtID") != null) {
			wtID = Integer.parseInt(request.getParameter("wtID"));
		}
		if (wtID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		Wt wt = new WtDAO().getWt(wtID);
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
		<h2 class="text-center font-weight-bold" colsapn="3">문의글</h2>
		<hr/>
					<tbody>
						<tr>
							<td style="width: 20%;">글 제목</td>
							<td colspan="2"><%= wt.getWtTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td colspan="2"><%= wt.getUserID() %></td>
						</tr>
						<tr>
							<td>작성일자</td>
							<td colspan="2"><%= wt.getWtDate().substring(0, 11) + wt.getWtDate().substring(11, 13) + "시 " + wt.getWtDate().substring(14, 16) + "분 " %></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="min-height: 200px; text-align: left;"><%= wt.getWtContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
						</tr>
					</tbody>
		</table>
						<a href="board.jsp" class="btn btn-primary">목록</a>
						<%
							if(userID != null && userID.equals(wt.getUserID())) {
						 %>
								<a href="boardUpdate.jsp?wtID=<%= wtID %>" class="btn btn-primary">수정</a>
								<a href="boardDeleteAction.jsp?wtID=<%= wtID %>" class="btn btn-primary">삭제</a>
						<% 
							 }
						 %>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<br>
</body>
</html>