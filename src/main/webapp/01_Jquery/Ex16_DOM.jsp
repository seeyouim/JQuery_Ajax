<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML 탐색 : childern()</title>
<style type="text/css">
	.myclass *{
		display: block;
		border: 1px solid gray;
		padding: 5px;
		margin: 10px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// children(selector) : 어떤 요소의 자식 요소를 선택
		// find(selector)   : 어떤 요소의 하위 요소 중 특정 요소를 찾을 때 사용
		//$("div").children().css({"color":"red","border":"5px solid red"})
		//$("div").find("span").css({"color":"red","border":"5px solid red"})
		$("div").children(".p1").css({"background":"skyblue"})
		$("div").find(".p1").css({"color":"red","border":"5px solid red"})
		
	});
</script>
</head>
<body>
	<div class="myclass" style="width: 500px;"> Mydiv
		<p class="p1">p(child)
			<span>span(grandchild)</span>
		</p>
		<p class="p2">p(child)
			<span>span(grandchild)</span>
		</p>
	</div>
</body>
</html>