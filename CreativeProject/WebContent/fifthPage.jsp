<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!-- �� ���� �κ��� �ѱ��� �������ʰ� �� �ִ� ������ �Ѵ� -->
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
		<span>�ð�ǥ�� ���� �� �ּ��� : </span>
		<!-- �Է� �Ǵ� �� -->
		<input class="selectedTimeTable" type="text" name="selectedTimeTable"
			size="10">
		<!--���� ���� �ϴ� ��-->
		<br /> <input type="submit" value='Recomand The Liberalture Arts'>
	</form>
</body>
</html>