<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#container {
	width: 100%;
	margin: 0px auto;
	text-align: center;
	border: 0px solid #bcbcbc;
}

#top header {
	background-color: #0B614B;
	color: white;
	height: 90px;
	line-height: 90px;
	text-align: center;
	border-radius: 30px;
	height: 90px;
}

#top nav {
	background-color: #088A68;
	color: white;
	height: 30px;
	line-height: 30px;
	text-align: center;
	border-radius: 20px;
}

#top nav ul {
	list-style-type: none;
}

#top nav ul li {
	display: inline;
	border-left: 1px solid #c0c0c0;
	/* 테두리와 메뉴 간격 벌리기. padding: 위 오른쪽 아래 왼쪽; */
	padding: 0px 10px 0px 10px;
	/* 메뉴와 테두리 사이 간격 벌리기. margin: 위 오른쪽 아래 왼쪽; */
	margin: 5px 0px 5px 0px;
	font-weight: bold;
	font-size: 12px;
	text-align: center;
}

/* 특별하게 정해지지 않은 링크 속성에 모두 적용할 스타일 : 흰글씨 / 밑줄없앰 */
#top nav ul li a {
	text-decoration: none;
	color: #ffffff
}

/* 링크에 마우스 롤오버시 적용되는 스타일 : 하단에 노란 밑줄이(border-bottom) 생김 */
#top nav ul li a:hover {
	color: #D4F4FA;
	border-bottom: 3px solid yellow;
}

#top nav ul li:first-child {
	border-left: none;
}


#content {
	width: 100%;
	padding: 5px;
	border: 0px solid #bcbcbc;
	margin-top: 0px;
}

#footer {
	clear: both;
	padding: 5px;
	border: 0px solid #bcbcbc;
	background-color: lightblue;
	margin-top: 200px;
	border-radius: 50px;
}
</style>

</head>
<body>
	<div id="container">
		<div id="top">
			<tiles:insertAttribute name="top" />
		</div>
		
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
    
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>