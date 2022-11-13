<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>

<!--  title   -->
	<center>
		<br><h1><font size="7" color="#0000ff">IoT Test Item Extraction System</h1></font><br/>
		<h2><font size="5" color="#0000ff"> 회원가입 </h2></font>
		</center>

<!--  회원가입 부분  -->

<form action="Join" method="post">
<!--  아이디 입력  -->
	<h3 align="center"> 아이디 : <input type="text" name="memberId" autofocus="autofocus" required="required" size="11"></h3>
	
<!--  비밀번호 입력 -->
	<h3 align="center">암호: &nbsp; &nbsp;<input type="password" name="memberPw" required="required" size="11"></h3>

<!--  이름 입력 -->
	
	<h3 align="center"> 이름 : <input type="text" name="name"  required="required" size="11"></h3>
	
	
<!-- 핸드폰 번호 입력 -->

<h3 align="center">핸드폰: <input type="text" name="mobile" required="required" size="11"></h3>
<p align="center"><font size="2" color="#808080"> &nbsp; &nbsp;하이픈 (-) 을 포함하여 작성해주세요. </font></p>


<!-- 접근 권한(등급) 설정 -->
<p align="center" > 계정 용도 선택: 
<select name="grade" id="grade">
    <option value="">계정 용도 선택</option>
    <option value="M">관리자</option>
    <option value="U">사용자</option>
    <option value="U">설문자</option>
   
</select>
</p>
<!--  회원가입 전송 버튼 -->
<center>
<input type="submit" value="확인" >

</center>
</form>

</body>
</html>