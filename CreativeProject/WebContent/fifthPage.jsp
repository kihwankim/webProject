<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!-- 이 위에 부분이 한글을 깨지지않게 해 주는 역할을 한다 -->
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="fifthPageCSS.css">
<title>TimeTables</title>
</head>
<body>
	<%!int theNumberOfSubects;
	String sub[];%>
	<form method="post" action="RC">
		<div class="TimeTable">
			<%
				Cookie[] cookies = request.getCookies();
				for (int i = 0; i < cookies.length; i++) {
					String str = cookies[i].getName();
					if (str.equals("numberOfSubs")) {
						theNumberOfSubects = Integer.parseInt(cookies[i].getValue());
					}
				}
				sub = new String[theNumberOfSubects];
				for (int index = 1; index <= theNumberOfSubects; index++) {
					sub[index - 1] = request.getParameter(Integer.toString(index));
				}
				for (int index = 0; index < theNumberOfSubects; index++) {
					if (sub[index] != null) {
						out.println(sub[index]);
					}
				}
			%>
			<br />
		</div>
		<span>시간표를 선택 해 주세요 : </span>
		<!-- 입력 되는 곳 -->
		<input class="selectedTimeTable" type="text" name="selectedTimeTable"
			size="10">
		<!--과목 선택 하는 것-->
		<br /> <input type="submit" value='Recomand The Liberalture Arts'>
	</form>
</body>
</html>