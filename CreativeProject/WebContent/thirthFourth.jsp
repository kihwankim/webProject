<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!String[] subs;%>
	<%
		Cookie[] cookies = request.getCookies();
		String theNumberOfSubjects = null;
		for (int i = 0; i < cookies.length; i++) {
			String str = cookies[i].getName();
			if (str.equals("numberOfSubs")) {
				theNumberOfSubjects = cookies[i].getValue();
			}
		}
	%>
	<jsp:forward page="fouthPage.jsp">"
		<jsp:param name="numberOfSubjects" value='<%=theNumberOfSubjects%>' />
	</jsp:forward>
</body>
</html>