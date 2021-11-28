<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="daeban_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
#tablesize {
	margin-top: 30px;
	margin: 10px auto 10px auto; /*상 우 하 좌 여백 사이즈 지정*/
	width: 100%; /* div 가로 사이즈 지정 */
	height: 500px; /* div 세로 사이즈 지정 */
	overflow: auto; /*지정한 div 크기 이상 내용이 들어가면 스크롤을 자동으로 만든다*/
	border: 1px solid black;
}

table {
	margin-top: 20px;
	border-color: gray;
	font-size: 14px;
	margin-bottom: 20px;
	text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>
			<b>대출/반납 조회</b>
		</legend>
		<div id="tablesize">
			<table id="tableA" border="1" align="center" width="1200">
				<tr>
					<th width="10%">도서번호</th>
					<th width="10%">도서명</th>
					<th width="10%">저자</th>
					<th width="10%">출판사</th>
					<th width="10%">대출회원명</th>
					<th width="10%">카테고리</th>
					<th width="10%">대출일자</th>
					<th width="10%">반납일자</th>
					<th width="10%">비고</th>
				</tr>

				<c:forEach items="${dblist}" var="my">
					<tr>
						<td>${my.booknumber }</td>
						<td>${my.booktitle}</td>
						<td>${my.bookauthor }</td>
						<td>${my.bookpublisher }</td>
						<td>${my.username }</td>
						<td>${my.bookcate }</td>
						<td>${my.rentdate }</td>
						<td>${my.returndate }</td>
						<td><a
							href="returnbook?booknumber=${my.booknumber}&&username=${my.username}"
						> <input type="button" value="반납"></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</fieldset>
</body>
</html>