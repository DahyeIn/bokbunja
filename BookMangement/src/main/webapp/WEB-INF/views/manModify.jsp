<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@include file="man_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	text-align: center;
	border-color: gray;
	font-size: 14px;
}

#mm {
	margin-top: 30px;
}
</style>
<script>
	function check() {
		var f = document.frm;

		//===유효성===
		var username = f.username.value;
		var usertel = f.usertel.value;
		var usermail = f.usermail.value;
		var lastcheck = f.lastcheck.value;

		//회원명 공백X
		if (username == "") {
			alert("회원명을 입력하세요")
			f.username.select();
			return false;
		}

		//전화번호 공백X
		else if (usertel == "") {
			alert("전화번호를 입력하세요")
			f.usertel.select();
			return false;
		}

		//메일 주소 x
		else if (usermail == "") {
			alert("메일 주소를 입력하세요")
			f.usermail.select();
			return false;
		}

		//최종확인
		else if (lastcheck) {
			alert("회원명: " + username + "\n" + "전화번호: " + usertel + "\n"
					+ "메일 주소: " + usermail + "\n\n상기 내용과 같이 수정 하시겠습니까?")
		}
		f.submit();
	}
</script>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<form action="manModifydata" method="post" name="frm">
		<%
		int userno = Integer.parseInt(request.getParameter("userno"));
		%>
		<div id="mm">
			<fieldset>
				<legend>
					<b>회원정보수정</b>
				</legend>

				<table border="1" width="450" align="center">
					<tr>
						<td>회원번호</td>
						<td>${param.userno }</td>
					</tr>
					<tr>
						<td>회원이름</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="usertel"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="usermail"></td>
					</tr>
				</table>

				<p>
					<input type="button" name="lastcheck" value="수정" font-size="12px" onclick="return check()">
			</fieldset>
		</div>
		<%
		HttpSession hs = request.getSession();
		hs.setAttribute("userno", userno);
		%>
	</form>
</body>
</html>