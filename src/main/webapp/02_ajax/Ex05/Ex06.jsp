<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청</title>
<style type="text/css">
table{
		width: 600px;
		margin-top: 50px;
		border-collapse: collapse;
		
	}
	table, th, td{
		border: 1px solid red;
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn").on("click", function() {
			$("#out").empty();
				$.ajax({
					url : "data06.xml",
					method : "get",
					dataType : "xml",
					success : function(data) {
						var table = "<table>";
						table +="<thead><tr><th>번호</th><th>아이콘</th><th>날씨</th><th>기온</th></tr></thead>";
						table +="<tbody>";
						// 원하는 태그 검색
						$(data).find("local").each(function() {
							var stn_id = $(this).find("stn_id").text();
							var icon = $(this).find("icon").text();
							var desc = $(this).find("desc").text();
							var ta = $(this).find("ta").text();
							table +="<tr>";
							table +="<td>" + stn_id +"</td><td>"+icon+"</td><td>"+desc+"</td><td>"+ta+"</td>";
							table +="</tr>";
			});
						table +="</tbody></table>";
						$("#out").append(table);
					},
					error : function() {
						alert("가져오기 실패");
					}
				});
		});
	});
</script>
</head>
<body>
	<div id="btn">xml 파일 가져오기</div>
	<div id="out"></div>
</body>
</html>