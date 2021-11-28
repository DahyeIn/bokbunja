<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="book_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
fieldset {
	margin-top: 30px;
}

#tablesize {
	margin: 10px auto 10px auto; /*상 우 하 좌 여백 사이즈 지정*/
	width: 100%; /* div 가로 사이즈 지정 */
	height: 500px; /* div 세로 사이즈 지정 */
	overflow: auto; /*지정한 div 크기 이상 내용이 들어가면 스크롤을 자동으로 만든다*/
	border: 1px solid black;
}

table {
	margin-top: 20px;
	margin-bottom: 20px;
	text-align: center;
	border-color: gray;
	font-size: 14px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>
			<b>검색</b>
		</legend>
		<form action="booksearch" method="post">
			
				<table align="center">
					<tr>
						<td>
					    	<select name="categorie">
								<option value="booktitle">도서명</option>
								<option value="bookauthor">저 자</option>
					    	</select> 						
				    		<c:forEach items="${output }" var="my">
								<input type="hidden" name="booknumber" value="${my.booknumber }">
					    	</c:forEach>
				    		<input type="text" name="book">&ensp;
					    	<input type="submit" value="검색">
						</td>
						
						<td>
						<input type="button" value="메인화면" onclick="location.href='bookmanagemain'">
						</td>
					</tr>
				</table>
		</form>
<div id="tablesize">
		<table id="tableA" border="1" align="center" width="1200">
			<tr>
				<th width="10%">도서번호</th>
				<th width="40%">도서명</th>
				<th width="10%">저자</th>
				<th width="10%">출판사</th>
				<th width="10%">보유재고</th>
				<th width="10%">카테고리</th>
				<th width="10%">비고</th>
			</tr>

			<c:forEach items="${output }" var="my">
				<tr>
					<td>${my.booknumber }</td>
					<td><a href="bookcontent?booknumber=${my.booknumber}">${my.booktitle }</a></td>
					<td>${my.bookauthor }</td>
					<td>${my.bookpublisher }</td>
					<td>${my.bookstock }</td>
					<td>${my.bookcate }</td>
					<td><input type="button" value="삭제"
						onclick="location.href='bookdelete?booknumber=${my.booknumber}'"
					></td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</fieldset>
</body>
</html>