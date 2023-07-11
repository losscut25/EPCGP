<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체의 요청 파라미터 관련 매서드</title>
</head>
<body>
<h2>request객체의 요청 파라미터 관련 매서드</h2>
<form id="frm1" action="viewParameter.jsp" method="get">
이     름 : <input type=text name=username id=username size=20 maxlength=5 placeholder=이름을입력하세요 autofocus=autofocus>

 관심사(취미):
<input type=checkbox name=hobby id=h0 value=code checked=checked><label for=h0>코딩</label>
<input type=checkbox name=hobby id=h1 value=sleep><label for=h1>잠</label>
<input type=checkbox name=hobby id=h2 value=swim><label for=h2>수영</label>
<input type=checkbox name=hobby id=h3 value=bike><label for=h3>자전거</label>
<input type=checkbox name=hobby id=h4 value=game><label for=h4>게임</label>
<input type=checkbox name=hobby id=h5 value=exit><label for=h5>방탈출</label>
<br>
<input type="submit" value="전송" >
<input type="reset" value="취소">

</form>
 <pre>
      form 요소의 속성
         - action : 서버(server)측 페이지
         - method : get : 기본값, 브라우저 표시 줄에 입력값이 모두 노출됨
                        ?userName=천&id=재환&pw=123456
                        비밀번호 타입은 브라우저에서 보이지 않지만 쿼리스트링에서는 노출됨 
                        post : 사용자가 입력한 내용이 드러나지 않음
                         => http://localhost:8081/ourPro/chap04/ok.jsp (입력값이 노출되지 않음)
                
*GET에 대한 참고 사항:
      - 양식 데이터를 이름/값 쌍으로 URL에 추가합니다.
      - GET을 사용하여 민감한 데이터를 보내지 마십시오! (제출된 양식 데이터는 URL에서 볼 수 있습니다!)
      - URL의 길이는 제한되어 있습니다(2048자).
      - 사용자가 결과를 북마크하려는 양식 제출에 유용합니다.
      - GET은 Google의 쿼리 문자열(쿼리스트링)과 같은 비보안 데이터에 적합합니다.
                              
*POST에 대한 참고 사항:
      - HTTP 요청 본문 내부에 양식 데이터를 추가합니다(제출된 양식 데이터는 URL에 표시되지 않음).
      - POST는 크기 제한이 없으며 많은 양의 데이터를 보내는 데 사용할 수 있습니다.
      - POST를 사용한 양식 제출은 북마크할 수 없습니다.
   </pre>

</body>
</html>