<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/notice/notice_writeForm.css"/>
<title>공지사항 작성</title>
<style>
textarea{
	width: 750px;
	height: 700px; 
    resize: none; }
  </style>

</head>
<body>
<div id="outer">
	<div id="wrap">
		<div id="board_area">
			<div id="board_header">
				<h3>공지사항</h3>
			</div>
			<form id="notice_write" action="noticewrite.do" method="post">
			   <div class="container">
	         <table class="container_table" style="text-align: center; border: 1px solid #dddddd">
	            <thead>
	               <tr>
	                  <th colspan=2 style="background-color: #eeeeee; text-align:center;">공지사항</th>
	               </tr>
	</thead>
	      <tr><td><input type=text class="form-control" placeholder="공지 제목" name="n_title" id ="n_title" maxlength="50" size="108" ></td></tr>
	      <c:if test="${errors.n_title}">
	      <script>
	      		alert("제목을 입력하세요.")
	      </script></c:if>
	            <tr><td><textarea class="form-control" placeholder="공지 내용" name="n_details" id ="n_details" maxlength="5000"></textarea></td></tr>
	      		<c:if test="${errors.n_details}">
	      		<script>
	      		alert("내용을 입력하세요.")
	      		</script></c:if>
	         </table>
			</div>
	         <input type="submit" value="입력" id="subBtn" name="subBtn" class=""/>
	         </form>
		</div>
	</div>
</div>
</body>
</html>