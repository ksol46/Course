<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="title">수강 신청 내역</div>
		<div class="wrapper">
			<table>
				<tr>
					<th>학생이름</th>
					<th>과목이름</th>
					<th>신청일</th>
					<th>메뉴</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td>
						<button type="button">취소</button>
					</td>
				</tr>
			</table>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>