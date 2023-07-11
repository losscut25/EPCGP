<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>JSP 게시판 사이트</title>
<style>
textarea {
    height: 6.25em;
    border: none;
    resize: none;
  }</style>
</head>
<body>
	<%
		String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1" aria-expanded="false">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class=active><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class=row>
		<form method=post action="writeAction.jsp">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan=2 style="background-color: #eeeeee; text-align:center;">1:1 문의</th>
					</tr>
</thead>
<tr><td><div style="width: 500px; height: 50px; border: 0px solid black;text-align: left;">문의 유형<br> 
		<input type=radio name=qnacategory>배송
		<input type=radio name=qnacategory>주문/결제
		<input type=radio name=qnacategory>취소/환불
		<input type=radio name=qnacategory>회원정보
		<input type=radio name=qnacategory>주최문의
		<input type=radio name=qnacategory>기타
	</div></td></tr>
		<tr><td><input type=text class="form-control" placeholder="문의 제목" name=bbsTitle maxlength=50></td></tr>
				<tr><td><textarea class="form-control" placeholder="문의 내용" name=bbsContent maxlength=5000 style="height:350px;"></textarea></td></tr>
			</table>
<div id="previewContainer"></div>
<input type="file" id="imageInput" onchange="previewImages(event)" multiple accept="image/*"><br>
<p id="fileErrorMessage" style="color: red; display: none;">파일을 3개 이하로 선택해주세요.</p>
<p id="fileNames"></p>

<script>
function previewImages(event) {
    var input = event.target;
    var previewContainer = document.getElementById('previewContainer');
    var fileErrorMessage = document.getElementById('fileErrorMessage');
    var fileNamesContainer = document.getElementById('fileNames');
    previewContainer.innerHTML = ''; // 이전 미리보기 초기화

    if (input.files && input.files.length > 0) {
        if (input.files.length > 3) {
            fileErrorMessage.style.display = 'block'; // 에러 메시지 표시
            input.value = ''; // 파일 선택 초기화
            return; // 함수 종료
        } else {
            fileErrorMessage.style.display = 'none'; // 에러 메시지 숨기기
        }

        fileNamesContainer.innerHTML = ''; // 파일명 초기화

        for (var i = 0; i < input.files.length; i++) {
            var reader = new FileReader();
            var fileName = input.files[i].name;

            reader.onload = (function(file) {
                return function(e) {
                    var preview = document.createElement('img');
                    preview.src = e.target.result;
                    preview.style.maxWidth = '200px';
                    preview.style.maxHeight = '200px';
                    previewContainer.appendChild(preview);
                };
            })(input.files[i]);

            reader.readAsDataURL(input.files[i]);

            var fileNameElement = document.createElement('p');
            fileNameElement.textContent = fileName;
            fileNamesContainer.appendChild(fileNameElement);
        }
    } else {
        fileErrorMessage.style.display = 'block'; // 에러 메시지 표시
        fileNamesContainer.innerHTML = ''; // 파일명 초기화
    }
}

    </script>	
			<br>
			<input type=submit class="btn btn-primary pull-right" value="글쓰기"></a>
			</form>
			
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>