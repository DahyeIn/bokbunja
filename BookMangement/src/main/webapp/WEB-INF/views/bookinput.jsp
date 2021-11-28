<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="book_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
#tablesize {
	margin-top: 30px;
}

table {
	margin-top: 20px;
	border-color: gray;
	font-size: 14px;
	margin-bottom: 20px;
	text-align: center;
}
</style>
<script>
	function check() {
		var f = document.frm;

		//===유효성===
		var title = f.booktitle.value;
		var author = f.bookauthor.value;
		var content = f.bookcontent.value;
		var publisher = f.bookpublisher.value;
		var stock = f.bookstock.value;
		var lastcheck = f.lastcheck.value;

		//제목 공백X
		if (title == "") {
			alert("도서명을 입력하세요")
			f.booktitle.select();
			return false;
		}

		//작가 공백X
		else if (author == "") {
			alert("저자를 입력하세요")
			f.booktitle.select();
			return false;
		}

		//도서 내용x
		else if (content == "") {
			alert("도서 내용을 입력하세요")
			f.bookcontent.select();
			return false;
		}

		//출판사x
		else if (publisher == "") {
			alert("출판사를 입력하세요")
			f.bookpublisher.select();
			return false;
		}

		//보유재고x
		else if (stock == "") {
			alert("보유재고를 입력하세요")
			f.bookstock.select();
			return false;
		}

		//최종확인
		else if (lastcheck) {
			alert("도서명: " + title + "\n" + "저자: " + author + "\n" + "도서내용: "
					+ content + "\n" + "출판사: " + publisher + "\n" + "보유재고: "
					+ stock + "\n" + "\n\n상기 내용과 같이 신규도서 등록을 진행 하시겠습니까?")
		}
		f.submit();
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="tablesize">
		<form name="frm" action="bookinputdata" method="post">
			<fieldset>
				<legend>
					<b>신규도서 등록</b>
				</legend>
				<table border="1" align="center" width="500">
					<tr>
						<td>도서번호</td>
						<td>자동부여</td>
					</tr>
					<tr>
						<td>도서명</td>
						<td><input type="text" name="booktitle"></td>
					</tr>
					<tr>
						<td>저자</td>
						<td><input type="text" name="bookauthor"></td>
					</tr>
					<tr>
						<td>도서내용</td>
						<td><textarea rows="10" cols="20" name="bookcontent"></textarea></td>
					</tr>
					<tr>
						<td>출판사</td>
						<td><input type="text" name="bookpublisher"></td>
					</tr>
					<tr>
						<td>보유재고</td>
						<td><input type="number" name="bookstock"></td>
					</tr>
					<tr>
						<td>카테고리</td>
						<td><select name="bookcate">
								<option value="인문학">인문학</option>
								<option value="경제경영">경제경영</option>
								<option value="자기개발">자기개발</option>
								<option value="IT">IT</option>
								<option value="여행">여행</option>
						</select></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="button" name="lastcheck" value="도서등록" onclick="return check()">&emsp;
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>