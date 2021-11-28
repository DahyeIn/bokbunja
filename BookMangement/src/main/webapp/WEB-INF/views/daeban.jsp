<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="daeban_menu.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	margin-bottom: 20px;
	border-color: gray;
	font-size: 14px;
	text-align: center;
}
</style>
<script>
	function check(bookrentable) {
		var d = document.dae;

		//===유효성===
		
	
		if (bookrentable == 0) {
			alert("대출가능권수가 없습니다.")
			return false;
		}
		if (bookrentable != 0) {
			alert("대출 하시겠습니까?")
			return true;
		}
		d.submit();
	}
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="dae">
		<fieldset>
			<legend>
				<b>대출가능한 도서 목록</b>
			</legend>
			<div id="tablesize">
				<table border="1" align="center" width="1200px">
					<tr>
						<th>도서번호</th>
						<th>제목</th>
						<th>저자</th>
						<th>보유재고</th>
						<th>대출가능</th>
						<th>대출중</th>
						<th>카테고리</th>
						<th>대출</th>
					</tr>
					<c:forEach items="${dlist}" var="my">
						<tr>
							<td>${my.booknumber}</td>
							<td>${my.booktitle}</td>
							<td>${my.bookauthor}</td>
							<td>${my.bookstock}</td>
							<td>${my.bookrentable }</td>
							<td>${my.bookrenting}</td>
							<td>${my.bookcate}</td>
							<td><a href="dae?booknumber=${my.booknumber}"
								onclick="return check(${my.bookrentable })"
							> <input type="button" name="rent" value="대출"></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</fieldset>
	</form>

</body>

</html>