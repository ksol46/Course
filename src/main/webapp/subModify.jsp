<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="DTO.Dto"%>
<%
Dto dto = new Dto();
dto = (Dto)request.getAttribute("dto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>
		<div class="title">과목 수정</div>
		<form name="subfrm" action="subupdate">
			<input type="hidden" value="subupdate">
			<div class="wrapper">
				<table>
					<tr>
						<th>과목코드</th>
						<td><input type="text" name="subno" value="<%=dto.getStdno() %>" readonly></td>
					</tr>
					<tr>
						<th>과목이름</th>
						<td><input type="text" name="subname" value="<%= %>" ></td>
					</tr>
					<tr>
						<th>과목학점</th>
						<td><input text="text" name="subscore" value="<%= %>" ></td>
					</tr>
					<tr>
						<th>과목시수</th>
						<td><input text="text" name="subtime" value="<%= %>" ></td>
					</tr>
					<tr>
						<th>개강일</th>
						<td><input text="text" name="substart" value="<%= %>" ></td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" onclick="sub_submit(); return false">수정</button>
							<button type="button" onclick="location='subsearch'">목록</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>