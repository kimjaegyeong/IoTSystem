<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Login State</title>
	</head>
	<body>
		<center>
		<br/><h1><font size="7" color="#0000ff">IoT Test Item Extraction System</h1></font><br/>
		<h3 align="center">아이디와 암호를 입력하시오.</h3><br>
		
		<!--  로그인 화면  -->
		<form action="Login" method="post">
		<h3 align="center"> 아이디 : <input type="text" name="memberId" autofocus="autofocus" required="required" size="12"></h3>
		<h3 align="center">암호  &nbsp;:&nbsp;&nbsp;<input type="memberPw" name="memberPw" required="required" size="11"></h3><br/><br/>
		<h3 align="center"><input type="submit" value="로그인"> </h3>		
		</form>
		
		
		<!--  회원 등록 화면 -->
		<h3 align="center"><input type="submit" value="회원등록" onClick="location.href='join.jsp'"> </h3>		
		</form>		
		</center><br/><br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;초기화면 상태이다.<br/>
		&nbsp;&nbsp;2.&nbsp;로그인과 패스워드를 입력하면 로그인이 완료되고 메인화면으로 넘어간다.<br/>
		&nbsp;&nbsp;3.&nbsp;미등록회원은 회원등록을 해야 한다.<br/>
	</body>
</html>




