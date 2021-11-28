<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@include file="man_menu.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

#mlist {
	margin-top: 30px;
	margin: 10px auto 10px auto; /*상 우 하 좌 여백 사이즈 지정*/
	width: 100%; /* div 가로 사이즈 지정 */
	height: 500px; /* div 세로 사이즈 지정 */
	overflow: auto; /*지정한 div 크기 이상 내용이 들어가면 스크롤을 자동으로 만든다*/
	border: 1px solid black;
}
</style>
<meta charset="UTF-8">
<title>회원정보조회</title>
</head>
<body>

	<fieldset>
		<legend>
			<b>회원정보조회</b>
		</legend>

		<form name="frm" action="manSearch" method="post">

			<table align="center" width="1200">
				<tr>
					<td colspan="7"><select name="sname">
							<option value="userno">회원번호</option>
							<option value="username">회원이름</option>
					</select> <input type="text" name="svalue"> <input type="submit"
						value="검색"
					></td>
				</tr>
			</table>

			<div id="mlist">
				<table name="trm" border="1" width="1200" align="center">
					<tr>
						<td>회원번호</td>
						<td>회원이름</td>
						<td>전화번호</td>
						<td>이메일</td>
						<td>대출가능권수</td>
						<td>비고</td>
					</tr>
					<c:forEach items="${manlist }" var="man">
						<tr>
							<td>${man.userno }</td>
							<td>${man.username }</td>
							<td>${man.usertel }</td>
							<td>${man.usermail }</td>
							<td>${man.rentable }</td>
							<td><a href="manModify?userno=${man.userno }"><input
									type="button" value="수정"
								></a> &ensp;&ensp; <a href="manDelete?userno=${man.userno }"><input
									type="button" value="삭제"
								></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</form>
	</fieldset>


</body>
</html>