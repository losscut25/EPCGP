<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://www.naver.com"></script>
<style>
<%--div.c0 {
	text-align: left;
	width: 400px;}

div.c1 {text-align: left;
		width: 400px;
}
--%>
div.c2 {
	display: inline;
	align: center;
}

textarea {
	width: 99%;
	height: 20em;
	border: 1px solid black;
	resize: none;
}

#preview{
	max-width:300px;
	max-height:300px;}

</style>
</head>
<body>
	<h1>1:1 문의하기</h1>
	<%-- <fieldset>
		<div class=c2>
			<div
				style="width: 500px; height: 50px; border: 0px solid black; float: left;">
				이메일 <br>
				<input type=text size=50>
			</div>
			<div
				style="width: 500px; height: 50px; border: 0px solid black; float: left;">
				연락처<br>
				<input type=text size=50>
			</div>
		</div>
	</fieldset>--%>
	<br>
	<div style="width: 500px; height: 50px; border: 0px solid black;">
		<lable for=qnaname>문의제목</lable><br><input type=text size=50 name=qnaname id=qnaname>
	</div>
	<br>
	<div style="width: 500px; height: 50px; border: 0px solid black;">문의 유형<br> 
		<input type=radio name=qnacategory>배송
		<input type=radio name=qnacategory>주문/결제
		<input type=radio name=qnacategory>취소/환불
		<input type=radio name=qnacategory>회원정보
		<input type=radio name=qnacategory>주최문의
		<input type=radio name=qnacategory>기타
	</div>
	<div style="width: 500px; height: 500px; border: 0px solid black;">
		문의내용<br>
		<textarea name=qnacontent id=qnacontent rows=10 cols=30 maxlength=1000
			placeholder="메모를 입력하세요."></textarea>
		<input type=file multiple>
	  <input type="file" id="imageInput" onchange="previewImages(event)" multiple><br>
   	  <div id="previewContainer"></div>
		<br>
		<br> 
		<button type=submit value=확인 class=btn1 onclick="return validCK();">확인</button> 
		<button type=reset value=취소 class=btn1>취소</button>
	</div>
<script>
        function previewImages(event) {
            var input = event.target;
            var previewContainer = document.getElementById('previewContainer');
            previewContainer.innerHTML = ''; // 이전 미리보기 초기화
            
            if (input.files && input.files.length > 0) {
                var fileCount = Math.min(input.files.length, 5); // 최대 5개까지만 처리
                
                for (var i = 0; i < fileCount; i++) {
                    var reader = new FileReader();
                    
                    reader.onload = (function(file) {
                        return function(e) {
                            var preview = document.createElement('img');
                            preview.src = e.target.result;
                            preview.style.maxWidth = '100px';
                            preview.style.maxHeight = '100px';
                            previewContainer.appendChild(preview);
                        };
                    })(input.files[i]);
                    
                    reader.readAsDataURL(input.files[i]);
                }
            }
        }
    </script>	
	
<script>

function validCK(){
	let qnanameObj=document.getElementById("qnaname");
	if(qnanameObj.value==""){
		alert("문의제목을 입력하세요.");
		qnanameObj.focus();
		return false;
	}
	
	let qnacategoryColl=document.getElementsByName("qnacategory");
	let qnacategoryChecked=false;
	for(var i=0;i<qnacategoryColl.length;i++){
		//radio의 개수만큼 반복			
		if(qnacategoryColl[i].checked==true){//라디오 항목이 선택이 되면(checked) true 리턴
			qnacategoryChecked=true;
			break;
		}
	}
	if(!qnacategoryChecked){
		alert("문의유형을 선택하세요.")
		return false;
	}
	let qnacontentObj=document.getElementById("qnacontent");
	if(qnacontentObj.value==""){
		alert("문의내용을 입력하세요.");
		qnacontentObj.focus();
		return false;
	}
	return true;
		}
</script>
</body>
</html>