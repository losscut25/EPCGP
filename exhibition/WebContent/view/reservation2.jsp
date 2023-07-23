<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>test Form</h1>
<form action ="<%=request.getContextPath() %>/reservation" method="post">
	<table style="with:80%">
	<tr>
		<td>reservation_no</td>
		<td><input type="text" name="reservation_no" /></td>
	</tr>
	<tr>
		<td>member_id</td>
		<td><input type="text" name="member_id" /></td>
	</tr>
	<tr>
		<td>exhibition_no</td>
		<td><input type="text" name="exhibition_no" /></td>
	</tr>
	<tr>
		<td>price_no</td>
		<td><input type="text" name="price_no" /></td>
	</tr>
	<tr>
		<td>address</td>
		<td><input type="text" name="address" /></td>
	</tr>
	</table>
	<input type="submit" value="submit"/>
</form>
</body>
</html>