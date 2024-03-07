<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<h1>회원가입</h1>
	<form action = "/member/join" method = "GET">		
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
					<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->
					<input type="text" name="" class="postcodify_postcode5" value="" />
					<!-- type 안 넣어주면 검색 팝업이 안 뜸. -->
					<button type="button" id="postcodify_search_button">검색</button><br /> 
					<label>도로명주소</label>
					<input type="text" name="" class="postcodify_address" value="" /><br />
					<label>상세주소</label>
					<input type="text" name="" class="postcodify_details" value="" /><br />
					<label>참고항목</label>
					<input type="text" name="" class="postcodify_extra_info" value="" /><br />
				</li>
			</ul>
		</fieldset>
		<div>
			<input type="submit" value="가입">
		</div>
	</form>
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> 
// 		$("#postcodify_search_button".on("click", function() {
			$("#postcodify_search_button").postcodifyPopUp();
// 		}); 
	</script>
</body>
</html>