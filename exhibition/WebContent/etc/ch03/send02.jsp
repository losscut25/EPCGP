<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>send02.jsp</h2>
http://localhost/ch03/send02.jsp
</body>
01로부터 받은 모델:<%=request.getParameter("name") %>

<%
//문법> response.sendRedirect("강제로 이동할 페이지");
//response.sendRedirect("send03.jsp");

%>
</body>
</html>