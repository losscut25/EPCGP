<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp문서</title>
</head>
<body>
현재시간1 : <%=new Date() %><br>
<%Date today=new Date();
out.println("현재시간2 : "+today);%>
<br>현재시간3 : <%=today %> <br>
</body>
</html>