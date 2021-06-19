<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="group.GroupDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="group" class="group.Group" scope="page"/>
<jsp:setProperty name="group" property="userID"/>
<jsp:setProperty name="group" property="userPassword"/>
<jsp:setProperty name="group" property="userEmail"/>
<jsp:setProperty name="group" property="userTel"/>
<jsp:setProperty name="group" property="userGender"/>
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
        	if(group.getUserID() == null || group.getUserPassword() == null || group.getUserEmail() == null ||
        			group.getUserTel() == null || group.getUserGender() == null){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('입력이 안된 사항이 있습니다.')");
						script.println("history.back()");
						script.println("</script>");
				} else {
						GroupDAO userDAO = new GroupDAO();
						int result = userDAO.join(group);
							if (result == -1) {
								PrintWriter script = response.getWriter();
								script.println("<script>");
								script.println("alert('이미 존재하는 아이디입니다.')");
								script.println("history.back()");
								script.println("</script>");
							}
							else {
								session.setAttribute("userID", group.getUserID());
								PrintWriter script = response.getWriter();
								script.println("<script>");
								script.println("location.href = 'login.jsp'");
								script.println("</script>");
							}
				}
		%>
</body>
</html>