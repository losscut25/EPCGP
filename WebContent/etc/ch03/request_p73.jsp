<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체</title>
</head>
<body>
<h2>request객체(p73)</h2>
<pre>
http://localhost:8081/ourPro/ch03/request_p73.jsp
</pre>
*getRemoteAddr():<%=request.getRemoteAddr() %><br>
*getContentLength():<%=request.getContentLength() %><br>
*getCharacterEncoding():<%=request.getCharacterEncoding() %><br>
*getContentType():<%=request.getContentType() %><br>
*getProtocol():<%=request.getProtocol() %><br>
*getMethod():<%=request.getMethod() %><br>
*getRequestURI():<%=request.getRequestURI() %><br>
*getRequestURL():<%=request.getRequestURL() %><br>

*getContextPath():<%=request.getContextPath() %><br>
*getServerName():<%=request.getServerName() %><br>
*getServerPort():<%=request.getServerPort() %><br>
*getSession():<%=request.getSession() %><br>
*
*
</body>
</html>