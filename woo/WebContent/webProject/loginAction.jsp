<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="group.GroupDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="group" class="group.Group" scope="page"/>
<jsp:setProperty name="group" property="userID"/>
<jsp:setProperty name="group" property="userPassword"/>
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
				if(userID != null) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('이미 로그인이 되어있습니다.')");
					script.println("location.href = 'main1.jsp'");
					script.println("</script>");
				}
				GroupDAO groupDAO = new GroupDAO();
				int result = groupDAO.login(group.getUserID(), group.getUserPassword());
				if (result ==1){
						session.setAttribute("userID", group.getUserID());
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("location.href = 'main1.jsp'");
						script.println("</script>");
				}
				else if (result == 0){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('비밀번호가 틀립니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else if (result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('존재하지 않는 아이디입니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else if (result == -2){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('데이터베이스 오류가 발생했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
		%>

</body>
</html>