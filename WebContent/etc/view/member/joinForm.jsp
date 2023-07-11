<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="../../js/jquery-3.7.0.min.js"></script>
<script>
$(document).ready(function(){
	$("#submitBtn2").on("click",function(){
	let memberidObj = $("#memberid");
	if(memberidObj.val()==""){
		alert("회원id는 필수입력입니다.");
		memberidObj.focus();
		return false;
	}
	let nameObj = $("#name");
	if(nameObj.val()==""){
		alert("이름은 필수입력입니다.");
		nameObj.focus();
		return false;
	}
	let passwordObj = $("#password");
	if(passwordObj.val()==""){
		alert("비밀번호는 필수입력입니다.");
		passwordObj.focus();
		return false;
	}
	let regDateObj = $("#regDate");
	if(regDateObj.val()==""){
		alert("가입일은 필수입력입니다.");
		regDateObj.focus();
		return false;
	}

	let genderChecked=$("input[name='gender']").is(":checked");
	//console.log(genderChecked);
	if(!genderChecked){
		alert("성별을 선택하세요");
		return false;
	}
	/*let genderChecked=false;
	for(var i=0;i<genderColl.length;i++){
		if(genderColl[i].checked==true){
			genderChecked=true;
			break;
			}}
	if(!genderChecked){
		alert("성별을 선택하세요.")
		return false;
	}*/
	let genreChecked=$("input[name='genre']").is(":checked");
	console.log(genreChecked);
	if(!genreChecked){
		alert("장르를 선택하세요");
		return false;
	}
	
	let locObj = $("#loc");
	if(locObj.val()==""){
		alert("지역을 선택 하세요.");
		locObj.focus();
		return false;
	}
	
	//return true;
	});
});
</script>


</head>
<body>
<h2>joinForm.jsp(회원가입화면)</h2>
<h3>http://localhost:80/view/joinForm.jsp</h3>
<form id="joinForm" action="join.do" method=post>
<div>
<lable for=memberid>ID</lable>
<input type=text name=memberid id=memberid class=>
</div>
<div>
<lable for=name>이름</lable>
<input type=text name=name id=name class=>
</div>
<div>
<lable for=password>비밀번호</lable>
<input type=password name=password id=password class=>
</div>
<div>
<lable for=confirmPassword>비밀번호확인</lable>
<input type=password name=confirmPassword id=confirmPassword class=>
</div>

<div>
<lable for=regDate>가입일</lable>
<input type=date name=regDate id=regDate class=>
</div>
<div>
<label for=gender>성별</label>
<input type=radio name=gender id=gender0  class="" value=male>남성
<input type=radio name=gender id=gender1  class="" value=female>여성
</div>

<div>
<label for="">장르</label>
<input type=checkbox name=genre id=genre0 class="" value="action">액션
<input type=checkbox name=genre id=genre1 class="" value="horror">호러
<input type=checkbox name=genre id=genre2 class="" value="animation">애니메이션
<input type=checkbox name=genre id=genre3 class="" value="SF">SF
<input type=checkbox name=genre id=genre4 class="" value="comedy">코미디
</div>

<div>
<label for=loc>지역</label>
<select name=loc id=loc>
<option value="">선택하세요</option>
<option value="seoul">서울</option>
<option value="busan">부산</option>
<option value="dokdo">독도</option>
<option value="jeju">제주</option>
</select>
</div>

<div>
<input type=submit value=가입용(java용)  class="">
<button type=submit id=submitBtn1 class= "" onclick="return validCK();">가입용(js용)</button>
<button type=submit id=submitBtn2 class=>가입용(jq용)</button>
</div>
</form>
<script>
//유효성검사

function validCK(){
	//window.document.폼객체.폼하위객체
	let memberidObj = document.getElementById("memberid");
	//회원ID<input type=text name=memberid id=memberid class=>
	if(memberidObj.value==""){
		alert("회원id는 필수입력입니다.");
		memberidObj.focus();
		return false;
	}
	//회원명<input type=text name=name id=name class=>
		let nameObj = document.getElementById("name");
		if(nameObj.value==""){
			alert("이름은 필수입력입니다.");
			nameObj.focus();
			return false;

	}
	
	//비밀번호<input type=password name=password id=password class=>
		let passwordObj = document.getElementById("password");
		if(passwordObj.value==""){
			alert("비밀번호는 필수입력입니다.");
			passwordObj.focus();
			return false;
	}
	
	//가입날<input type=date name=regDate id= class=>
		let regDateObj = document.getElementById("regDate");
		if(regDateObj.value==""){
			alert("가입일은 필수입력입니다.");
			regDateObj.focus();
			return false;
		}
		
		
		//<input type=radio name=gender id=gender0  class="" value=male>남성
		let genderColl=document.getElementsByName("gender");
		//console.log(genderColl);
		//alert(genderColl);
		
		let genderChecked=false;
		for(var i=0;i<genderColl.length;i++){
			//radio의 개수만큼 반복			
			if(genderColl[i].checked==true){//라디오 항목이 선택이 되면(checked) true 리턴
				genderChecked=true;
				break;
			}
		}
		
		if(!genderChecked){
			alert("성별을 선택하세요.")
			return false;
		}
		
		//<input type=checkbox name=genre id=genre0 class="" value="action">액션
		let genre0=document.getElementById("genre0");
		let genre1=document.getElementById("genre1");
		let genre2=document.getElementById("genre2");
		let genre3=document.getElementById("genre3");
		let genre4=document.getElementById("genre4");
		if(!genre0.checked&&!genre1.checked&&!genre2.checked&&!genre3.checked&&!genre4.checked){	//1개만선택
		//if(!genre0.checked||!genre1.checked||!genre2.checked||!genre3.checked||!genre4.checked){ //전체선택시
			alert("장르를 선택하세요");
			return false;
		}
		let genreColl=document.getElementsByName("genre");
		let genreChecked=false;
		for(var i=0;i<genreColl.length;i++){
			//radio의 개수만큼 반복			
			if(genreColl[i].checked==true){//라디오 항목이 선택이 되면(checked) true 리턴
				genreChecked=true;
			}
		}
		if(!genreChecked){
			alert("장르를 선택하세요.")
			return false;
		} 
		
		//<select name=loc id=loc> 
		//<option value="seoul">서울</option>
		let locObj = document.getElementById("loc");
		if(locObj.value==""){
			alert("지역을 선택하세요.");
			locObj.focus();
			return false;
		}
		//필수입력이 끝났으면submit진행
		return true;

}




</script>


</body>
</html>