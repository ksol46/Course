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
		<div class="title">과목 등록</div>
		<form name="subfrm" action="subadd">
			<input type="hidden" value="subadd">
			<div class="wrapper">
				<table>
					<tr>
						<th>과목코드</th>
						<td><input type="text" name="subno"></td>
					</tr>
					<tr>
						<th>과목이름</th>
						<td><input type="text" name="subname"></td>
					</tr>
					<tr>
						<th>과목학점</th>
						<td><input text="text" name="subscore"></td>
					</tr>
					<tr>
						<th>과목시수</th>
						<td><input text="text" name="subtime"></td>
					</tr>
					<tr>
						<th>개강일</th>
						<td><input text="text" name="substart"></td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" onclick="sub_submit(); return false">등록</button>
							<button type="button" onclick="sub_onload();">목록</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>