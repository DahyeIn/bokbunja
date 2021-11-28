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

#bb a {
	text-decoration: none;
	color: #F78181;
}

#bb a:hover {
	color: #FF0080;
	font-weight: bolder;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>
			<b>회원정보 조회</b>
		</legend>
		<form action="manSearch" method="post">

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
		</form>

		<div id="mlist">
			<table border="1" width="1200" align="center">
				<tr>
					<td>회원번호</td>
					<td>회원이름</td>
					<td>전화번호</td>
					<td>이메일</td>
					<td>비고</td>
				</tr>
				<c:forEach items="${search }" var="s">
					<tr>
						<td>${s.userno }</td>
						<td>${s.username }</td>
						<td>${s.usertel }</td>
						<td>${s.usermail }</td>
						<td><a href="manModify?userno=${s.userno }">
						    <input type="button" value="수정"></a>&ensp;&ensp;
							<a href="manDelete?userno=${s.userno }">
							<input type="button" value="삭제"></a>
					    </td>		
					</tr>
				</c:forEach>
			</table>
		</div>
	</fieldset>
</body>
</html>