<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줄 뉴스 - 자바스크립트</title>
<style type="text/css"></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var news=["매과이어는 여전히 경쟁에서 우위를 점하지 못했다. 더 이상 맨유에서는 자리가 없다."
			"맨유가 다가오는 여름 이적시장에서 처분할 살생부 명단이 공개됐고 매과이어가 포함된 것으로 알려졌다. 현재 분위기로서는 처분 1순위다."
			"하지만, 매과이어는 맨유를 향한 애정을 드러냈고 이번 여름 이적시장 이후에도 잔류하겠다고 고집을 부리는 중이다."
			"맨유의 텐 하흐 감독은 매과이어 내치기에 돌입했다. 다가오는 시즌 캡틴 자격을 박탈했다."
			"매과이어는 “감독의 주장 박탈 결정에 실망했다”며 아쉬움을 표하면서도 “맨유 소속으로서 최선을 다할 것이다”고 애정을 드러냈다."];
		var index = 0;
		

		setInterval(() => {
			$("#mydiv").text(news[index++]);
			if (index == news.length) index = 0;
		},2000);
	});
</script>
</head>
<body>
	<div id="mydiv"></div>
	<button onclick="start_news()">뉴스보기</button>
	<button onclick="stop_news()">뉴스중지</button>
</body>
</html>