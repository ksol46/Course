<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="DTO.Dto"%>
<%
request.setCharacterEncoding("utf-8");
ArrayList<Dto> list = new ArrayList<Dto>();
list = (ArrayList<Dto>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>
		<div class="title">과목 조회</div>
		<div class="wrapper">
			<table>
				<tr>
					<th>과목코드</th>
					<th>과목이름</th>
					<th>과목학점</th>
					<th>과목시수</th>
					<th>개강일</th>
					<th>메뉴</th>
				</tr>
				<% for (Dto d : list){ %>
				<tr>
					<td><%=d.getSubno() %></td>
					<td><%=d.getSubname() %></td>
					<td><%=d.getSubscore() %></td>
					<td><%=d.getSubtime() %></td>
					<td><%=d.getSubstart() %></td>
					<td>
						<button type="button" onclick="">신청</button>
						<button type="button" onclick="location.href='submodify?subno=<%=d.getSubno() %>'">수정</button>
					</td>
				</tr>
				<%} %>
			</table>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>