<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action = "/member/register" method = "GET">		
		<fieldset>
			<legend>회원가입</legend>
			<ul>
				<li>
					<label>아이디</label>
					<input type="text">
				</li>
				<li>
					<label>비밀번호</label>
					<input type="password">
				</li>
				<li>
					<label>이메일</label>
					<input type="text">
				</li>
				<li>
					<label>주소</label>
					<input type="text" id="member_postcode" placeholder="우편번호">
					<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
					<label>도로명</label>
					<input type="text" id="member_roadAddress" placeholder="도로명주소">
					<input type="text" id="member_jibunAddress" placeholder="지번주소"><br>
					<label>상세주소</label>
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" id="member_detailAddress" placeholder="상세주소">
<!-- 					<input type="button" onclick="" value="우편번호 찾기"> -->
				</li>
			</ul>
		</fieldset>
		<div>
			<input type="submit" value="가입">
		</div>
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	 function execDaumPostcode() {
	        new daum.Postcode({
	        	oncomplete : function(data){
	        		document.querySelector("#member_postcode").value = data.zonecode;
	        		document.querySelector("#member_roadAddress").value = data.roadAddress;
	        		document.querySelector("#member_jibunAddress").value = data.autoJibunAddress;
	        		
	        	}
	        }).open();
	 }
	</script>
</body>
</html>