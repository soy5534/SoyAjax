<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	    <title>간단한 지도 표시하기</title>
	    <!-- cliend-id 입력 -->
	    <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=xw3top4b7o"></script>
	</head>
	<body>
		<div id="map" style="width:100%;height:935px;"></div>
		
		<script>
		
		// 지도 설정하기
		var mapOptions = {
		    center: new naver.maps.LatLng(37.5679444, 126.9830353), // 맵 열었을 때 어디 보여줄지
		    zoom: 17
		};
		
		var map = new naver.maps.Map('map', mapOptions);
		
		// 마커 설정하기
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(37.5679444, 126.9830353),
		    map: map
		});
			
		// 마커 세부정보
		var contentString = [
		        '<div class="iw_inner">',
		        '   <h3>KH정보교육원</h3>',
		        '   <p>서울특별시 중구 남대문로 120 <br />',
		        '       <img src="/img/example/hi-seoul.jpg" width="55" height="55" alt="KH정보교육원" class="thumb" /><br />',
		        '       02-120 | 학원 &gt; 종로 학원<br />',
		        '       <a href="http://www.iei.or.kr" target="_blank">www.seoul.go.kr/</a>',
		        '   </p>',
		        '</div>'
		    ].join('');
		
		var infowindow = new naver.maps.InfoWindow({
		    content: contentString
		});
				
		naver.maps.Event.addListener(marker, "click", function(e) {
		    if (infowindow.getMap()) {
		        infowindow.close();
		    } else {
		        infowindow.open(map, marker);
		    }
		});
		
		</script>
	</body>
</html>