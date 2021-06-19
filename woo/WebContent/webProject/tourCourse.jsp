<%@ page import="java.io.File" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="utf-8">
<head>
  <title>Busan travel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>
	<%
			String userID = null;
			if (session.getAttribute("userID") != null) {
					userID = (String) session.getAttribute("userID");
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
        <li><a href="main1.jsp">관광명소</a></li>
        <li><a href="information.jsp">이용안내</a></li>
        <li class="active"><a href="tourCourse.jsp">관광코스</a></li>
        <li><a href="user.jsp">후기/문의</a></li>
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
       <li><a href="search.jsp">Search</a></li>
        <li><a href="logoutAction.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
				<%
			 }
			 	%>
    </div>
  </div>
</nav>

 <br><br>
<div class="container text-center">    
  <h2>관광코스</h2><br>
  	<div class="row">
	    <div class="col-sm-4">
	    		<img src="images/1.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<div class="cont">
	      	<h4>부산관광지도</h4>
					<div class="text-center">
					<button  type="submit" class="btn btn-warning">
					<%
						String directory1 = application.getRealPath("/upload/1/");
						String file1[] = new File(directory1).list();
						
						for(String file : file1) {
							out.write("<a href=\"" + request.getContextPath() + "/downloadAction?file=" +
								java.net.URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>");
						}
					%></button>
					</div>
	      	</div>
	    </div>
	    <div class="col-sm-4"> 
	      	<img src="images/2.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>꼭 가봐야 할 부산여행 15곳</h4>
	      	<div class="text-center">
					<button  type="submit" class="btn btn-warning">
	      	<%
						String directory2 = application.getRealPath("/upload/2/");
						String file2[] = new File(directory2).list();
						
						for(String file : file2) {
							out.write("<a href=\"" + request.getContextPath() + "/downloadAction?file=" +
								java.net.URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>");
						}
					%>
					</button>
				</div>
	    </div>
	     <div class="col-sm-4">
	      	<img src="images/3.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>도시철도로 떠나는 부산여행</h4>
	      	<div class="text-center">
					<button  type="submit" class="btn btn-warning">
	      	<%
						String directory3 = application.getRealPath("/upload/3/");
						String file3[] = new File(directory3).list();
						
						for(String file : file3) {
							out.write("<a href=\"" + request.getContextPath() + "/downloadAction?file=" +
								java.net.URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>");
						}
					%>
					</button>
					</div>
	    </div>
	    <div class="col-sm-4">
	      	<img src="images/4.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산의 맛</h4>
	      	<div class="text-center">
					<button  type="submit" class="btn btn-warning">
	      	<%
						String directory4 = application.getRealPath("/upload/4/");
						String file4[] = new File(directory4).list();
						
						for(String file : file4) {
							out.write("<a href=\"" + request.getContextPath() + "/downloadAction?file=" +
								java.net.URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>");
						}
					%>
					</button>
			</div>
	    </div>
	    <div class="col-sm-4">
	      	<img src="images/5.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>갈맷길여행자수첩</h4>
	      	<div class="text-center">
					<button  type="submit" class="btn btn-warning">
	      	<%
						String directory5 = application.getRealPath("/upload/5/");
						String file5[] = new File(directory5).list();
						
						for(String file : file5) {
							out.write("<a href=\"" + request.getContextPath() + "/downloadAction?file=" +
								java.net.URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>");
						}
					%>
					</button>
					</div>
	    </div>
	    <div class="col-sm-4">
	      	<img src="images/6.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산국가지질공원 가이드북</h4>
	      	<div class="text-center">
					<button  type="submit" class="btn btn-warning">
	      	<%
						String directory6 = application.getRealPath("/upload/6");
						String file6[] = new File(directory6).list();
						
						for(String file : file6) {
							out.write("<a href=\"" + request.getContextPath() + "/downloadAction?file=" +
								java.net.URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>");
						}
					%>
					</button>
					</div>
	    </div>
  </div>
</div>
<br><br>

<footer class="container-fluid text-center">
</footer>


<footer class="container-fluid text-center">
  <p></p>
</footer>

</body>
</html>
