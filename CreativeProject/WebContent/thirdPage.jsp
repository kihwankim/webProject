<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="thirdPageCSS.css">
<meta charset="EUC-KR">
<title>Insert the data</title>
</head>
<body>
	<%!String subsNum;%>
	<h1>please insert the data of the subjects</h1>
	<form method="post" action="fourthPage.jsp">
		<div class="divOfTheText">
			<%
				int i = 1;
				subsNum = request.getParameter("HowManySubjects");
				int theNumberOfSubs = Integer.parseInt(subsNum);
				while (i <= theNumberOfSubs) {
					out.println("<span>����" + i + " : </span>");
			%>
			<input type="text" name="<%out.print(i);%>" size="15"> <br />
			<%
				i++;
				}
			%>

			<%
				Cookie cookie = new Cookie("numberOfSubs", subsNum);
				cookie.setMaxAge(60 * 30);
				response.addCookie(cookie);
			%>
			<!-- 30�е��� ��Ű ����, ��� ���� -->
			<input type ="hidden" name = "str" value = "<%=request.getParameter("HowManySubjects")%>">
			<input type="submit" value="����">
		</div>
	</form>
</body>
</html>