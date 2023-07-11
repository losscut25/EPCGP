<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<%--1.드라이버로딩
	2.커넥션얻기
	3.객체준비
	4.쿼리실행
	5.자원반환
--%>
	<h2>회원목록(p380)</h2>
	<table border=1>
		<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
<%
//클라이언트가 요청시 보낸 data가 담긴 parameter를 가져온다
String memberid=request.getParameter("memberid");
String Strno=request.getParameter("no");
int no=0;
if(Strno==null||Strno.length()==0){
	}else{
no=Integer.parseInt(Strno);
	}
//1.드라이버로딩
try {	//Class.forName("oracle.jdbc.OracleDriver"); 오라클용
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("jdbc등록 완료");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	//2.커넥션얻기
	//오라클용
	//String url = "jdbc:oracle:thin:@localhost:1521/xe";
	//String user = "scott";
	//String password ="tiger";
	String url = "jdbc:mysql://localhost:3306/board?useUnicode=true&characterEncoding=utf8";
	String user = "jspexam";
	String password = "jsppw";
	Connection conn = null;
	//Statement stmt = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	try {
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("성공");
	} catch (SQLException e) {
		e.printStackTrace();
		System.out.println("실패");
	}

	//3.객체준비
	String sql = "select no,memberid,password,name,email from member"
					+" where memberid=? or no=?";
	try {
		//stmt = conn.createStatement();
		stmt = conn.prepareStatement(sql);
		System.out.println("stmt성공");
	} catch (SQLException e1) {
		System.out.println("객체관련 에러발생" + e1);
		e1.printStackTrace();
	}
	//4.쿼리실행
	try {
		//rs = stmt.executeQuery(sql);
		stmt.setString(1,memberid);
		stmt.setInt(2,no);
		rs = stmt.executeQuery();
		
		System.out.println("회원번호\t회원id\t비밀번호\t회원명\t이메일");
		System.out.println("----------------------------------");
		while (rs.next()) {
			int mno= rs.getInt("no");
			String mmemberid= rs.getString("memberid");
			String mpassword= rs.getString("password");
			String mname= rs.getString("name");
			String memail= rs.getString("email");
			System.out.printf("%5d\t%5s\t%5s\t%5s\t %5s\r\n ", mno, mmemberid, mpassword,mname,memail);
			System.out.println();
			%>		
				<tr>
				<td><%=mno %></td>
				<td><%=mmemberid%></td>
				<td><%=mpassword%></td>
				<td><%=mname %></td>
				<td><%=memail %></td>
				</tr>
<%				
		}
	} catch (SQLException e1) {
		System.out.println("execute 실행관련 에러");
		e1.printStackTrace();
	}
	//5.자원반환
	try {
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}

	} catch (SQLException e) {
		e.printStackTrace();
	}
	System.out.println("자원반납");
	%>


			
			
		</tbody>

	</table>


</body>
</html>