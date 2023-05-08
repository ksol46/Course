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
		<div class="title">학생 등록</div>
		<div class="wrapper">
			<form name="stdfrm" action="stdadd">
				<table>
					<tr>
						<th>학생번호</th>
						<td><input type="text" name="stdno"></td>
					</tr>
					<tr>
						<th>학생이름</th>
						<td><input type="text" name="stdname"></td>
					</tr>
					<tr>
						<th>학년</th>
						<td><input text="text" name="stdgrade"></td>
					</tr>
					<tr>
					<td colspan="2">
					<button type="submit" onclick="std_submit(); return false">등록</button>
					</td>
					</tr>
				</table>
			</form>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>