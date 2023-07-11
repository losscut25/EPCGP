<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>send01.jsp</h2>
http://localhost/ch03/send01.jsp


<%
//문법> response.sendRedirect("강제로 이동할 페이지");
//response.sendRedirect("send02.jsp");

request.setAttribute("name","고길동");
response.sendRedirect("send02.jsp");
%>



</body>

</body>
</html>