<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.print.attribute.standard.PresentationDirection"%>
<%@include file="man_menu.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	text-align: center;
	border-color: gray;
	font-size: 14px;
	margin-top: 20px;
	margin-bottom: 20px;
}

#minsert {
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
					+ "메일 주소: " + usermail + "\n\n상기 내용과 같이 회원등록을 진행 하시겠습니까?")
		}
		f.submit();
	}
</script>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
	<form name="frm" action="maninsertdata" method="post">

		<div id="minsert">
			<fieldset>
				<legend>
					<b>회원정보등록</b>
				</legend>

				<table border="1" width="450" align="center">

					<tr>
						<td>회원번호</td>
						<td>자동부여</td>
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
					<input type="button" name="lastcheck" value="입력완료"
						onclick="return check()"
					>
			</fieldset>
		</div>
	</form>
</body>

</html>