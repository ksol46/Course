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
		<div class="title">수강 신청</div>
		<div class="wrapper">
			<form name="coursefrm" action="courseadd">
				<table>
					<tr>
						<th>학생번호</th>
						<td><input type="text" name="stdno"></td>
					</tr>
					<tr>
						<th>과목코드</th>
						<td><input type="text" name="subno"></td>
					</tr>
					<tr>
						<th>신청일</th>
						<td><input text="text" name="registdate"></td>
					</tr>
					<tr>
					<td colspan="2">
					<button type="submit" onclick="course_submit(); return false">신청</button>
					<button type="button" onclick="course_onload();">목록</button>
					</td>
					</tr>
				</table>
			</form>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>