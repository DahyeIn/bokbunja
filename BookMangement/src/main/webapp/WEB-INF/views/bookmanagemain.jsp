<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="book_menu.jsp"%>
<!DOCTYPE html>
<html>
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
	border-color: gray;
	font-size: 14px;
	margin-bottom: 20px;
	text-align: center;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>
			<b>전체도서 조회</b>
		</legend>
		<div id="tablesize">
			<form action="bookmainlist" method="post">
				<table align="center">
					<tr>
						<td>정렬기준:&emsp;</td>
						<td><input type="radio" name="list" value="번호정렬">번호별&emsp;
							<input type="radio" name="list" value="카테정렬">카테고리별&emsp;
							<input type="submit" value="보기"></td>
					</tr>
				</table>
			</form>
			<form action="booksearch" method="post">
				<table align="center">
					<tr>
						<td><select name="categorie">
								<option value="booktitle">도서명</option>
								<option value="bookauthor">저 자</option>
						</select> <c:forEach items="${output }" var="my">
								<input type="hidden" name="booknumber" value="${my.booknumber }">
							</c:forEach> <input type="text" name="book">&ensp; <input
							type="submit" value="검색"
						></td>

					</tr>
				</table>
			</form>

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