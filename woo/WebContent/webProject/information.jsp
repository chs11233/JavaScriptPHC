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
        <li class="active"><a href="information.jsp">이용안내</a></li>
        <li><a href="tourCourse.jsp">관광코스</a></li>
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
  <h1>이용안내</h1><br>
</div>
<div style="border: 1px solid blue;">
	<div class="innerwrap">
		<h2>
		<img src="images/11.jpg" style="width:2%" alt="Image" style="vertical-align:middle;">도시철도
		</h2>
<img src="https://emojigraph.org/media/apple/metro_1f687.png" style="vertical-align:middle;">
<h4>부산 도시철도는 1호선부터 4호선과 부산김해경전철, 동해선 등이 시내 주요 장소 및 부산광역시와 경상남도 김해시,양산시와 연결되어 편리하게 원하는 장소로 이동할 수 있습니다.
<br>오전 5시부터 23시 59분까지 운행되며, 역별로 첫차와 막차시간이 다르며, 시간대별로 배차시간이 다릅니다. 자세한 사항은 홈페이지 또는 역내에 게시된 시간표를 참고하시기 바랍니다.
</h4>
<h3>
승차권
</h3>
<img src="https://www.visitbusan.net/images/sub/img-ticket1.png" style="vertical-align:middle;">
<img src="https://www.visitbusan.net/images/sub/img-ticket2.png" style="vertical-align:middle;">
<img src="https://www.visitbusan.net/images/sub/img-ticket3.png" style="vertical-align:middle;">
<br><h4>승차권은 교통카드, 1회용 승차권, 정기승차권을 이용하실 수 있습니다. 정기승차권은 1일 권, 7일 권, 1개월 권이 있습니다.
<br>1회용 승차권과 교통카드는 구간에 따라 차액이 발생하며, 정기승차권은 구간에 따른 차액은 발생하지 않습니다.
승차권은 역내에 위치한 승차권 판매기에서 구입할 수 있습니다.
</h4>
<a href="http://www.humetro.busan.kr/homepage/cyberstation/map.do" target='_blank'>
<h4>부산도시철도 이용안내</h4>
</a>
<a href="http://www.bglrt.com/00011/00168/00012.web" target='_blank'>
<h4>부산김해경전철 이용안내</h4>
</a>
<br>
</div>
</div>

<div style="border: 1px solid blue;">
	<div class="innerwrap">
		<h2>
		<img src="images/11.jpg" style="width:2%" alt="Image" style="vertical-align:middle;">도시철도
		</h2>
<img src="images/22.jpg" style="width:10%" alt="Image" style="vertical-align:middle;">
<h4>부산의 버스는 산이 많은 부산의 지형적 특성상 산지를 오르락내리락하는 노선이 많습니다.
<br>오래된 마을의 좁은 길도 유유히 운전할 수 있는 베테랑 버스 기사님들이 안전하고 빠르게 목적지 까지 갈 수 있게 해줍니다.
<br>버스는 일반버스, 좌석버스 급행일반좌석버스, 급행좌석버스, 마을버스가 있습니다.
<br>일반버스와(1~500번대)와 좌석버스(58-1,203,221 및 300번대),급행버스(일반좌석)1000번대, 급행버스(직행좌석)2000번대로 구분할 수 있습니다.
<br>심야버스는 따로 없고 각 노선의 버스가 밤11시40분이 지나면 할증 요금이 붙습니다.
</h4>
<a href="http://bus.busan.go.kr/" target='_blank'>
<h4>버스 이용안내</h4>
</a>
<br>
</div>
</div>		

<div style="border: 1px solid blue;">
	<div class="innerwrap">
		<h2>
		<img src="images/11.jpg" style="width:2%" alt="Image" style="vertical-align:middle;">공항리무진
		</h2>
<img src="images/33.jpg" style="width:10%" alt="Image" style="vertical-align:middle;">
<h4>김해국제공항에서 해운대 신시가지를 연결하는 노선으로 동서고가로와 황령산 터널을 거쳐, 공항과 해운대를 빠르게 잇습니다.
<br>김해공항에서 해운대해수욕장 까지 307번 노선과 같지만 리무진버스는 남천동, 광안동, 수영교차로를 경유해서 갑니다.
<br>소요시간은 1시간 정도로 도시철도와 비슷하지만, 짐이 많아 환승이 번거로우면 공항리무진을 이용하는 것이 편리합니다.
</h4>
<a href="https://map.naver.com/v5/entry/place/20710685?c=14354202.9819058,4187364.6398197,13,0,0,0,dh&placePath=%2Fhome%3Fentry=plt" target='_blank'>
<h4>리무진 이용안내</h4>
</a>
<br>
</div>
</div>

<div style="border: 1px solid blue;">
	<div class="innerwrap">
		<h2>
		<img src="images/11.jpg" style="width:2%" alt="Image" style="vertical-align:middle;">환승
		</h2>
			<h4>타고 있던 교통수단(시내버스, 지하철, 마을버스)에서 같은 또는 다른 교통수단으로 하차 후 30분 이내에 다른 노선으로 2번까지 환승요금을 할인 받을 수 있습니다.
			<br>환승 요금 할인을 받기 위해서는 교통카드를 사용해야 하며, 시내버스와 도시철도 하차 시 반드시 하차단말기에 접촉을 해야 합니다. 
			<br>도시철도간의 환승은 승강장 내에서 환승하는 경우에만 요금 할인이 가능하고, 공항리무진버스는 환승을 하더라도 요금 할인 혜택을 받을 수 없습니다.
			</h4>
	</div>
</div>

<div style="border: 1px solid blue;">
	<div class="innerwrap">
		<h2>
		<img src="images/11.jpg" style="width:2%" alt="Image" style="vertical-align:middle;">교통카드
		</h2>
			<h4>교통카드는 교통수단 탑승 및 이용을 위해 사용되는 전자화폐로 편의점 등 교통카드 결재가 지원되는 곳에서 현금과 동일하게 사용할 수 있습니다.
			<br>교통카드 구매 후 원하는 액수만큼 충전하여 사용하며, 사용 시 마다 금액이 차감되고, 교통수단 이용료 할인 및 환승 할인혜택을 받을 수 있습니다.
			<br>교통카드로는 하나로카드를 정식으로 지원하며, 김해포유카드를 포함한 타 지역 마이비카드와 티머니, 캐시비, 후불교통카드로 환승 할인을 받을 수 있습니다.
			<br>교통카드 충전은 부산도시철도 역내 충전기, 동해선 광역전철 전 역사 그리고 편의점, 부산은행에서 충전이 가능합니다.
			</h4>
	</div>
</div>
<br>

<div style="border: 1px solid blue;">
	<div class="innerwrap">
		<h2>
		<img src="images/11.jpg" style="width:2%" alt="Image" style="vertical-align:middle;">공항에서 도심가기
		</h2>
<h4>김해공항은 부산으로 오는 국내·외 모든 비행기가 도착하는 곳으로 부산시내로 부터 약 1시간 가량 떨어진 곳에 위치해 있으며, 다양한 방법으로 편리하게 시내로 진입할 수 있습니다.
</h4>
		<table class="table" style="text-align: center;border: 2px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #fafafa;text-align: center;">버스</th>
					<td style="text-align: left;">버스는 시내버스, 리무진 버스, 시내급행버스, 마을버스, 시외버스를 이용 할 수 있고, 버스의 종류와 목적지에 따라 요금은 상이합니다.</td>
				</tr>
			</thead>
			<thead>
				<tr>
					<th style="background-color: #fafafa;text-align: center;">지하철</th>
					<td style="text-align: left;">공항에서 경전철을 타고 2호선 사상역이나 3호선 대저역에서 환승하면 가장 저렴하고 손쉽게 부산시내로 들어 갈수 있습니다.</td>
				</tr>
			</thead>
			<thead>
				<tr>
					<th style="background-color: #fafafa;text-align: center;">택시</th>
					<td style="text-align: left;">시내로 들어가는 택시는 일반택시와 모범, 대형택시가 있습니다. 일반택시에 비하여 모범, 대형택시의 비용이 약50%정도 비싸지만 차량이 더 크고 고급스럽습니다. ※실제 운행시간 및 요금은 변동될 수 있습니다.</td>
				</tr>
			</thead>
		</table>
		<a href="https://www.airport.co.kr/gimhae/index.do" target='_blank'>
<h4>공항내 대중교통정보</h4>
</a>
<br>
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
