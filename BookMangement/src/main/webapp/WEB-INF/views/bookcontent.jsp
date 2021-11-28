<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="book_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
#tablesize {
	margin-top: 30px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="tablesize">
		<table id="tableA" border="1" align="center" style="border-collapse: collapse; width: 60%;  " >
			<c:forEach items="${output }" var="my">
				<tr>
					<c:set var="aa" value="${my.booktitle }" />

					<td rowspan="5"><c:if test="${my.booktitle eq aa }">
							<img src="./image/${my.booktitle }.jpg" width="200" height="300"><br><br>
						</c:if></td>
						<td width="10%">도서번호</td>
						<td>${my.booknumber }</td>
				</tr>
				<tr>
				<td>도서명</td>
						<td>${my.booktitle }</td>
				</tr>
				<tr>
				<td>저 자</td>
						<td>${my.bookauthor }</td>
				</tr>
				<tr>
				<td>출판사</td>
						<td>${my.bookpublisher }</td>
				</tr>
				<tr>
				<td >줄거리</td>
					<td>${my.bookcontent }</td>
				</tr>

			</c:forEach>
		</table>
	</div>
</body>
</html>