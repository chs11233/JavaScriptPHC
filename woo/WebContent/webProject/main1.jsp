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
  .dropdown-menu {
  	display: none;
  	position: absolute;
  	background-color: #f9f9f9;
  	min-width: 160px;
  	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0,2);
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
        <li class="active"><a href="main1.jsp">관광명소</a></li>
        <li><a href="information.jsp">이용안내</a></li>
        <li><a href="tourCourse.jsp">관광코스</a></li>
       	<li><a href="user.jsp">후기/문의</a></li>
        </li>
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

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
	      <a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000202002001000&uc_seq=977&lang_cd=ko" target='_blank'>
	       <img src="images/image9.jpg" alt="Image">
	        <div class="carousel-caption">
	      </a>
	     	<h3>MBTI 유형별 부산 여행지 추천</h3>
      		</div>      
    	</div>
      <div class="item">
      	<a href="https://www.visitbusan.net/index.do?menuCd=DOM_000000202002001000&uc_seq=1060&lang_cd=ko&" target='_blank'>
		      <img src="images/image10.jpg" alt="Image">
		        <div class="carousel-caption">
		    </a>
		   <h3>다대포 하루 여행 코스</h3>
		        </div> 
      </div>
      <div class="item">
	      <a href="https://www.visitbusan.net/index.do?menuCd=DOM_000000202002001000&uc_seq=775&lang_cd=ko&" target='_blank'>
	       <img src="images/image11.jpg" alt="Image">
	        <div class="carousel-caption">
	      </a>
	     	<h3>차박(차크닉)하기 좋은 부산의 인생샷 맛집</h3>
      		</div>      
    	</div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
 <br><br>
<div class="container text-center">    
  <h2>인기 부산여행</h2><br>
  	<div class="row">
	    <div class="col-sm-4">
	    	<a href="https://www.visitbusan.net/index.do?menuCd=DOM_000000201001001000&uc_seq=255&lang_cd=ko&" target='_blank'>
	    		<img src="images/image3.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>가파른 절벽 끝에 흰여울 문화마을</h4>
	    	</a>
	    </div>
	    <div class="col-sm-4"> 
	    	<a href="https://www.visitbusan.net/index.do?menuCd=DOM_000000201001001000&uc_seq=366" target='_blank'>
	      	<img src="images/image4.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산 일몰 명소, 다대포해수욕장</h4>
	      </a>
	    </div>
	     <div class="col-sm-4">
	     	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000201001001000&uc_seq=278&lang_cd=ko" target='_blank'>
	      	<img src="images/image8.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산항 관문의 상징 오륙도!</h4>
	      </a>  
	    </div>
	    <div class="col-sm-4">
	    	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000202002001000&uc_seq=855&lang_cd=ko" target='_blank'>
	      	<img src="images/image5.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산 야경을 한눈에 볼 수 있는 황령산</h4>
	      </a>
	    </div>
	    <div class="col-sm-4">
	    	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000201001001000&uc_seq=286&lang_cd=ko" target='_blank'>
	      	<img src="images/image6.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>바다 위의 케이블카! 송도 케이블카</h4>
	      </a>
	    </div>
	    <div class="col-sm-4">
	    	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000202002001000&uc_seq=1014&lang_cd=ko" target='_blank'>
	      	<img src="images/image7.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>힐링하기 좋은 부산 어촌마을</h4>
	      </a>
	    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
</footer>


<footer class="container-fluid text-center">
  <p></p>
</footer>

</body>
</html>
