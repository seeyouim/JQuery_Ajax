<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-color: lightyellow;
	}
	#movie{
		position: absolute;
	}
	#movie2{
		position: absolute;
		left: 350px;
	}
	#close{
		padding: 30px;
		text-align: right;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#close").on("click," function() {
			$("movie").css("display", "none");
		});
		
	});
</script>
</head>
<body>
	<div id="movie">
	<pre><h3>공지사항-1</h3></pre>
			<img alt="" src="../images/flower.jpg">
			<div id='close'>닫기</div>
	</div>
	<div>
	<div id="movie2">
	<pre><h3>공지사항-1</h3></pre>
			<img alt="" src="../images/flower.jpg">
			<div id='close'>닫기</div>
	</div>
	<div>
	<h2>ICT 사진관</h2>
	<div>
		<p>사진관 오시는 길</p>
		<p>2호선 신촌역</p>
	</div>
	</div>
</body>
</html>