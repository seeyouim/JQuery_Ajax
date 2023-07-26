<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨기기/표시하기</title>
<style type="text/css"></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
// $(선택자).fadeIn(), $(선택자).fadeIn(speed)
// $(선택자).fadeOut(), $(선택자).fadeOut(speed)
// $(선택자).fadeToggle(), $(선택자).fadeToggle(speed)
// $(선택자).fadeTo(speed, 불투명도(0,0~1.0))
	$(document).ready(function(){
		$("#hide").on("click", function() {
			$("#img").fadeOut(600);
			//$("#p1").hide();
		});
		$("#show").on("click", function() {
			$("#img").fadeIn(200);
			//$("#p1").show();
		});
		// toggle이 아님
		$("#toggle").on("click", function() {
		    $("#img").fadeToggle("slow");
		});
		$("#toggle").on("click", function() {
		    $("#img").fadeTo("slow",0.5);
		});

			//$("#p1").toggle();
		
	});
</script>
</head>
<body>
	<p>아래 버튼을 누르면 숨겨지거나 나타나게 된다.</p>
	<button id="hide">숨기기</button>
	<button id="show">표시하기</button>
	<button id="toggle">숨기기/표시하기</button>
	<hr>
	<p><img id="img" src="../images/pic_bulboff.gif"></p>
</body>
</html>