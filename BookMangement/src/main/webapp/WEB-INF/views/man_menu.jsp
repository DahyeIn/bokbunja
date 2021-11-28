<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html>
<head>
<style>
#man {
	background-color: #FFFFFF;
	height: 25px;
	line-height: 25px;
	border-radius: 20px;
	width: 100%;
	margin: 0px auto;
}

#man ul {
	list-style-type: none;
	font-size: 14px;
	font-weight: bold;
	color: #000000;
	float: left;
}

#man ul li {
	display: inline;
	border-left: 1px solid #c0c0c0;
	/* 테두리와 메뉴 간격 벌리기. padding: 위 오른쪽 아래 왼쪽; */
	padding: 0px 10px;
	/* 메뉴와 테두리 사이 간격 벌리기. margin: 위 오른쪽 아래 왼쪽; */
	margin: 5px 0px;
	font-weight: bold;
	font-size: 12px;
}

/* 특별하게 정해지지 않은 링크 속성에 모두 적용할 스타일 : 흰글씨 / 밑줄없앰 */
#man ul li a {
	text-decoration: none;
	color: #6E6E6E
}

/* 링크에 마우스 롤오버시 적용되는 스타일 : 하단에 밑줄이(border-bottom) 생김 */
#man ul li a:hover {
	color: #A4A4A4;
	border-bottom: 3px solid #2E64FE;
}

#man ul li:first-child {
	border-left: none;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<nav id="man">
		<ul>
			✔회원관리
			<li><a href="maninsert">회원정보 등록</a></li>
			<li><a href="manList">회원정보 조회</a></li>
		</ul>
	</nav>

</body>
</html>