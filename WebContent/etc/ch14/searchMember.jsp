<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.0.min.js"></script>


<script>
$(document).ready(function(){
$("#i1").click(function(){
	fun2();
});

//$(selector).on("click",function(){});
$("#i1").on("click",function(){
	let no = $("#no");
	if(no.val()==""){
		alert("회원번호는 필수입력입니다.");
		no.focus();
		return;
	}
	//폼객체의 정보를 서버로 전송
	$("frm1").submit();	
});
});

//회원id 필수입력
function fun1(){
	let memberid = document.getElementById("memberid");
	if(memberid.value==""){
		alert("회원id는 필수입력입니다.");
		memeberid.focus();
		return;
	}
	//폼객체의 정보를 서버로 전송
	document.getElementById("frm1").submit();
}
function fun2(){
	let no = document.getElementById("no");
	if(no.value==""){
		alert("회원번호는 필수입력입니다.");
		no.focus();
		return;
	}
	//폼객체의 정보를 서버로 전송
	document.getElementById("frm1").submit();
}
function fun3(){
	let deptno = document.getElementById("deptno");
	if(deptno.value==""){
		alert("부서번호는 필수입력입니다.");
		deptno.focus();
		return;
	}
	//폼객체의 정보를 서버로 전송
	document.getElementById("frm2").submit();
}

//회원번호 필수입력
</script>
<style>
span#i1{background-color:blue;}
	.c1{border:1px solid black;}
</style>

</head>
<body>
<span id=i1 class=c1>click here</span>
<span class=c1>id없는 span요소 </span>
<form id=frm1 action=viewMemberList_p380.jsp method=get >
<table>
<tbody>
<tr>
<th>회원ID</th>
<td><input type=text name=memberid id=memberid required=required></td>
<td><input type=button name=submitBtn1 id=submitBtn1 value="검색" onclick="fun1();"></td>
</tr>
<th>회원번호</th>
<td><input type=number name=no id=no min=1 max=999999 required=required></td>
<td><input type=button name=submitBtn2 id=submitBtn2 value="검색" onclick="fun2();"></td>
</tr>


</tbody>
</table>
<%--아이디:<input type=text name=memberid id=memberid size=5><button type=submit>확인</button>--%>



</form>
<form id=frm2 action=viewMemberList_p380oracle.jsp method=get >
<table>
<tbody>
<tr>
<th>부서번호</th>
<td><input type=text name=deptno id=deptno required=required></td>
<td><input type=button name=submitBtn3 id=submitBtn3 value="검색" onclick="fun3();"></td>
</tr>
</tbody>
</table>
<%-- 부서번호:<input type=text name=deptno id=deptno size=5><button type=submit>확인</button>--%>
</form>
</body>
</html>