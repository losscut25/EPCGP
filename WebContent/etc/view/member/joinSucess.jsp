<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%--이 문서는 JoinprocHandler에 의해서 view로 지정된 페이지이다
아래와 같이 Model
request.setAttribute("insertedRowCnt",rowCnt)
--%>
	<h2>joinSucess.jsp</h2>
	*모델: 입력된 행수=>${insertedRowCnt}<br> 
	attr1 :=>${attr1}<br> 
	attr2 :=>${attr2}<br> 
	name :=>${name}<br>
	<c:if test="${insertedRowCnt>=1}">
	회원가입성공<br>
	</c:if>
	<c:if test="${insertedRowCnt==0}">
		<a href='join.do'>회원가입 하러가기</a>
		<br>
	</c:if>
	<hr>
	*session이용모델<br>
	attr1 :=>${s_attr1}<br> 
	attr2 :=>${s_attr2}<br> 
	name :=>${s_name}<br>
	
	
</body>
</html>