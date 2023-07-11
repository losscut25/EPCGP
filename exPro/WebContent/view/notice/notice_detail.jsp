<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/notice/notice_detail.css"/>
<title>공지사항</title>
</head>
<body>
<div id="outer">
	<div id="wrap">
		<div id="board_area">
			<div id="board_header">
				<h3>공지사항</h3>
			</div>
				<table>
					<tr>
						<td class="title">제목<% %></td>
						<td class="date">날짜<% %></td>
					</tr>
					<tr>
						<td class="content" colspan="2">내용<% %></td>
					</tr>
				</table>
	 			<div class="board_footer">
	 				<button type="button" id="listBtn" onclick="">목록보기</button>
	 			</div>
		</div>
	</div>
</div>
</body>
</html>