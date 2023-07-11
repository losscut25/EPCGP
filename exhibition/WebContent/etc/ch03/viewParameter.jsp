<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration,java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String name=request.getParameter("username");%>
<h2>viewParameter.jsp</h2>
<% 
String username=request.getParameter("username");
//out.println(username);
out.println("유저가 입력한 username=<u>"+username+"</u><br>");

out.println("<h3>**request.getParameterValues()이용 결과-------</h3>");
String[]hobby=request.getParameterValues("hobby");
if(hobby!=null){
for(String data:hobby){
	out.println(data+"<br>");
}
}
out.println("<h3>**request.getParameterNames()이용 결과-------</h3>");
Enumeration<String> names=request.getParameterNames();
while(names.hasMoreElements()){
	String name1=names.nextElement();
	out.println(name1+"<br>");
}

out.println("<h3>**request.getParameterMap()이용 결과-------</h3>");
Map<String,String[]> map=request.getParameterMap();
Enumeration<String> names1=request.getParameterNames();
while(names1.hasMoreElements()){
	String name2=names1.nextElement();
	String[] values=map.get(name2);
	for(String value:values){
	out.println(name+"의 값은"+value+"</br>");
	}
}
%>
</body>
</html>