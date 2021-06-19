<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="wt.WtDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="wt" class="wt.Wt" scope="page"/>
<jsp:setProperty name="wt" property="wtTitle"/>
<jsp:setProperty name="wt" property="wtContent"/>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP 게시판 웹 사이트</title>
</head>
<body>
		<%
		String userID = null;
				if(session.getAttribute("userID") != null) {
				userID = (String) session.getAttribute("userID");
			}
				if(userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
				} else {
				        if(wt.getWtTitle() == null || wt.getWtContent() == null){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
						WtDAO wtDAO = new WtDAO();
						int result = wtDAO.write(wt.getWtTitle(), userID, wt.getWtContent());
							if (result == -1) {
									PrintWriter script = response.getWriter();
									script.println("<script>");
									script.println("alert('글쓰기에 실패했습니다.')");
									script.println("history.back()");
									script.println("</script>");
								}
								else {
									PrintWriter script = response.getWriter();
									script.println("<script>");
									script.println("location.href= 'board.jsp'");
									script.println("</script>");
								}
					}
				}
		%>
</body>
</html>