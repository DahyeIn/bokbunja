<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style>
table {
	border-color: gray;
	font-size: 14px;
}
</style>
<script>
	function check() {

		var d = document.dae;

		//===유효성===
		var username = d.username.value;
		var rent = d.rent.value;
		var booktitle = d.booktitle.value;

		//대출회원명 공백X
		if (username == "") {
			alert("대출 회원명을 입력하세요")
			d.username.select();
			return false;
		}

		else if (rent) {
			alert("도서명: " + booktitle + "\n" + "대여회원명: " + username
					+ "\n\n상기 내용과 같이 대출을 진행 하시겠습니까?")
		}

		d.submit();
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="dae" action="daedo" method="post">
		<div id="tablesize">
			<fieldset>
				<legend>대출 정보 입력</legend>

				<table border="1" align="center" width="500">

					<c:forEach items="${dlist}" var="my">
						<tr>
							<td>도서번호</td>
							<td><input type="hidden" name="booknumber"
								value="${my.booknumber}"
							>${my.booknumber}</td>
						</tr>
						<tr>
							<td>도서명</td>
							<td><input type="hidden" name="booktitle"
								value="${my.booktitle}"
							>${my.booktitle}</td>
						</tr>
						<tr>
							<td>저자</td>
							<td><input type="hidden" name="bookauthor"
								value="${my.bookauthor}"
							>${my.bookauthor}</td>
						</tr>
						<tr>
							<td>출판사</td>
							<td><input type="hidden" name="bookpublisher"
								value="${my.bookpublisher}"
							>${my.bookpublisher}</td>
						</tr>
						<tr>
							<td>대출회원명</td>
							<td><input type="text" name="username"></td>
						</tr>
						<tr>
							<td>카테고리</td>
							<td><input type="hidden" name="bookcate"
								value="${my.bookcate}"
							>${my.bookcate}</td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" name="rent" value="대출"
								onclick="return check()"
							></td>
						</tr>
					</c:forEach>


				</table>
			</fieldset>
		</div>
	</form>

</body>
</html>