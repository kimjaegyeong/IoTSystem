<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공용성가변성 확인입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff">공용성가변성 확인</font></h1>
		<h3>[1] 제품의 분야를 선택하세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
		<form action="commonOrVariable" method="post">
			<div>1.냉장 제품<input type="checkbox" name="product" value="냉장 제품"></div>
			<div>2.에어컨 제품<input type="checkbox" name="product" value="에어컨 제품 "></div>
			<div>3.세탁 제품<input type="checkbox" name="product" value="세탁 제품"></div>
		<br/><br/>
		[2] IoT 기능명 : [<input type="text" value="냉장저장실 모니터링" name="IoT_function">] &nbsp;&nbsp;
				<%
		
		String item = (String)request.getAttribute("item");
		%>
		
		<br></br>

		[3] IoT 시험항목구분<br/><br/>
		
		<align="center">1. 공용성-기능성 &nbsp;&nbsp;
			<input type="button" <% if(item==null){ %> ㅡ
			<%} else{ %> <% if(item.equals("공용성-기능성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
		
		&nbsp;&nbsp;&nbsp;&nbsp;2.공용성-사용성&nbsp;&nbsp;
			<input type="button" <% if(item==null){ %> ㅡ
			<%} else{ %> <% if(item.equals("공용성-사용성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
		
		&nbsp;&nbsp;&nbsp;&nbsp;3.가변성-기능성&nbsp;&nbsp;
	<input type="button" <% if(item==null){ %> ㅡ
			<%} else{ %> <% if(item.equals("가변성-기능성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
		
		&nbsp;&nbsp;&nbsp;&nbsp;4.가변성-사용성&nbsp;&nbsp;
		<input type="button" <% if(item==null){ %> ㅡ
			<%} else{ %> <% if(item.equals("가변성-사용성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>

		</align><br/><br/>

		
		<center>
			<input type="submit" value="확인">
			<input type="button" value="완료" onClick="location.href='manager.jsp'">
		</center>
		</form>
		
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;관리자 화면에서 공용성가변성 확인을 선택하면, 공용성가변성 확인 화면을 보여준다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 제품분야를 선택한 후 클릭한다.<br/>
		&nbsp;&nbsp;3.&nbsp;[2]에서 해당되는 IoT 기능명을 입력한다.<br/>
		&nbsp;&nbsp;4.&nbsp;[3]에서 해당 IoT시험항목이 어디에 속하는지 '공용성가변성'을 구분해서 출력해 준다.<br/>
		&nbsp;&nbsp;5.&nbsp;'확인'버튼을 누르면 [2]에서 선택한 해당항목에 대한 정보 확인이 완료된다.<br/>
		&nbsp;&nbsp;6.&nbsp;다른 IoT 기능에 대해 더 확인하려면 [2]~[6]의 과정을 계속실시하면 된다.<br/>	
		&nbsp;&nbsp;9.&nbsp;'완료'버튼을 누르면, 화면은 관리자 메인화면으로 넘어간다.<br/>


	</body>
</html>