<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="ut.Ut" %>
<%@ page import="ut.UtDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>
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
		} else {
        if(request.getParameter("utTitle") == null || request.getParameter("utContent") == null
        		|| request.getParameter("utTitle").equals("") || request.getParameter("utContent").equals("")) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
			} else {
					UtDAO utDAO = new UtDAO();
					int result = utDAO.update(utID, request.getParameter("utTitle"), request.getParameter("utContent"));
						if (result == -1) {
							PrintWriter script = response.getWriter();
							script.println("<script>");
							script.println("alert('글 수정에 실패했습니다.')");
							script.println("history.back()");
							script.println("</script>");
						}
						else {
							PrintWriter script = response.getWriter();
							script.println("<script>");
							script.println("location.href= 'user.jsp'");
							script.println("</script>");
						}
			}
		}
		%>
</body>
</html>