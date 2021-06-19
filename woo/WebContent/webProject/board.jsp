<%@ page language="java" contentType="text/html; charset=UTF-8"   
pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="wt.WtDAO"%>
<%@ page import="wt.Wt"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>  
	<title>Busan travel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	String userID = null;
			if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
			}
			int pageNumber = 1;
			if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
			}
	%>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="main1.jsp">Busan travel</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="user.jsp">후기</a></li>
        <li><a href="board.jsp">문의</a></li>
      </ul>
       <%
			 if(userID == null) {
			 %>
			<ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
			 <%
			 } else {
				%>
			<ul class="nav navbar-nav navbar-right">
        <li><a href="logoutAction.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
				<%
			 }
			 	%>
     </div>
     </div>
     </nav>
     <div class="container text-center">
  			<h1>문의</h1><br>
		 </div>
<form action="boardWrite.jsp">
	<br>
	<div class="container">
		<table class="table" style="text-align: center;border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #fafafa;text-align: center;">게시물 번호</th>
					<th style="background-color: #fafafa;text-align: center;">제목</th>
					<th style="background-color: #fafafa;text-align: center;">작성자</th>
					<th style="background-color: #fafafa;text-align: center;">작성일</th>
				</tr>
			</thead>
			<tbody>
						<%
						WtDAO wtDAO = new WtDAO();
																							ArrayList<Wt> list = wtDAO.getList(pageNumber);
																							for(int i = 0; i < list.size(); i++) {
						%>
							<tr>
								<td><%= list.get(i).getWtID() %></td>
								<td><a href = "boardView.jsp?wtID=<%= list.get(i).getWtID() %>"><%= list.get(i).getWtTitle() %></a></td>
								<td><%= list.get(i).getUserID() %></td>
								<td><%= list.get(i).getWtDate().substring(0, 11) + list.get(i).getWtDate().substring(11, 13) + "시 " + list.get(i).getWtDate().substring(14, 16) + "분 " %></td>
							</tr>
						<%
							}
						%>
						</tbody>
		</table>
					<%
						if(pageNumber != 1) {
							
					%>
					 	<a href="board.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-left">이전</a>
					<%
						} if(wtDAO.nextPage(pageNumber + 1)) {
					%>
						<a href="board.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-left">다음</a>
					<%
						}
					%>
	</div>
  <div class="text-center">
			<button  type="submit" class="btn btn-danger">글쓰기</button>
	</div>
</form>
</body>
</html>