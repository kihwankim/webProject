<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="fourthPageCSS.css">
<meta charset="EUC-KR">
<title>Set The Professor's Name</title>
</head>
<body>
	<h1>Select Prioriry Professor</h1>
	<%!int theNumberOfSubjects;
	String sub[];%>
	<form method="post" action="FP">
		<div class="selectForText">
			<%
				Cookie[] cookies = request.getCookies();
				for (int i = 0; i < cookies.length; i++) {
					String str = cookies[i].getName();
					if (str.equals("numberOfSubs")) {
						theNumberOfSubjects = Integer.parseInt(cookies[i].getValue());
					}
				}
			%>
			<!--쿠키 파일에서 받아오기-->
			<%
				sub = new String[theNumberOfSubjects];
				for (int index = 1; index <= theNumberOfSubjects; index++) {
					sub[index - 1] = request.getParameter(Integer.toString(index));
				}
				for (int index = 1; index <= theNumberOfSubjects; index++) {
					if (sub[index - 1] != null) {
			%><span> <%
 	out.println("<strong>" + sub[index - 1] + "</strong>");
 %>
			</span>
			<%
				for (int numberOfProfess = 0; numberOfProfess < 4; numberOfProfess++) {
			%><br /> <span>교수님 명 <%
 	out.print((numberOfProfess + 1) + " : ");
 %>
			</span><input type="text"
				name="profess<%out.print(index);
						out.print(numberOfProfess);%>"
				size="15">
			<%
				}
						out.println("<br/><br/>");
					}
				}
			%>
			<br />
			<!-- 공강 설정 만들기 -->
			<input type="radio" name="emptyDay" value="월"><span>월</span>
			<input type="radio" name="emptyDay" value="화"><span>화</span>
			<input type="radio" name="emptyDay" value="수"><span>수</span>
			<input type="radio" name="emptyDay" value="목"><span>목</span>
			<input type="radio" name="emptyDay" value="금"><span>금</span>
			<input type="radio" name="emptyDay" value="N"><span>N</span>
			<br /> <input class="send" type="submit"
				value='show me my possible timeTable'>
			<!-- 결과 화면으로 이동 페이지 -->
			<%
				for (int i = 0; i < theNumberOfSubjects; i++) {
					Cookie temp;
					switch (i) {
					case 0:
						temp = new Cookie("1", sub[0]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 1:
						temp = new Cookie("2", sub[1]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 2:
						temp = new Cookie("3", sub[2]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 3:
						temp = new Cookie("4", sub[3]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 4:
						temp = new Cookie("5", sub[4]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 5:
						temp = new Cookie("6", sub[5]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 6:
						temp = new Cookie("7", sub[6]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 7:
						temp = new Cookie("8", sub[7]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					case 8:
						temp = new Cookie("9", sub[8]);
						temp.setMaxAge(60 * 30);
						response.addCookie(temp);
						break;
					}

				}
			%>
		</div>
	</form>
</body>
</html>