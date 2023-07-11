<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%
Calendar cal = Calendar.getInstance();
int y = cal.get(Calendar.YEAR); //
int m = cal.get(Calendar.MONTH); //2
cal.set(y,m,1);
int dayOfweek = cal.get(Calendar.DAY_OF_WEEK);// 2, (1~7)
int lastday = cal.getActualMaximum(Calendar.DATE);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
font-size:9pt;
color:#555555;
}
table {
	border-collapse:collapse;
}
th, td {
	border:1px solid #cccccc;
	width:30px;
	height:25px;
	text-align:center;
}
caption {
	margin-bottom:10px;
	font-size:15px;
}
</style>
<body>
<form name="frm" method="post" action="calender2.jsp">
<input type="text" name="year" size="3">년
<input type="text" name="month" size="3">월
<input type="submit" value="전송">

</form>
<table>
	<caption><%=y %>년 <%=m+1 %>월</caption>
	<tr>
	<th>일</th>
	<th>월</th>
	<th>화</th>
	<th>수</th>
	<th>목</th>
	<th>금</th>
	<th>토</th>
	</tr>
	<tr>
	<%
	int count = 0;
	for(int s=1; s<dayOfweek; s++) {
		out.print("<td></td>");
		count++;
	}
	
	for( int d=1; d<=lastday; d++) {
		count++;
	%>
		<td><%=d %></td>
	<%	
		if(count%7==0) {
			out.print("</tr><tr>");
		}
	}
	%>
	</tr>
</table>

</body>
</html>