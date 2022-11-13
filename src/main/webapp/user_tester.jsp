<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ page import="java.util.ArrayList" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>IoT시험항목 선택입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff">IoT시험항목 선택 </font></h1><br/>
	
		<h3>[1] 제품의 분야를 선택하세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
		<form action="user_tester" method="post">
			<div>1.냉장 제품<input type="checkbox" name="product" value="냉장 제품"></div>
			<div>2.에어컨 제품<input type="checkbox" name="product" value="에어컨 제품 "></div>
			<div>3.세탁 제품<input type="checkbox" name="product" value="세탁 제품"></div>
		<br/><br/>
		[2] IoT 기능명 : [<input type="text" value="냉장저장실 모니터링" name="IoT_function">] &nbsp;&nbsp;
		<%
		
		ArrayList<String> list1 = (ArrayList<String>)request.getAttribute("list1");
		%>
		
		<br/><br/>
	
		<br/><br/>
		[3] IoT 시험 항목 구분
		<align="center">1. 공용성-기능성 &nbsp;&nbsp;
			<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(0).equals("공용성-기능성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
		
		&nbsp;&nbsp;&nbsp;&nbsp;2.공용성-사용성&nbsp;&nbsp;
			<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(0).equals("공용성-사용성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
		
		&nbsp;&nbsp;&nbsp;&nbsp;3.가변성-기능성&nbsp;&nbsp;
	<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(0).equals("가변성-기능성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
		
		&nbsp;&nbsp;&nbsp;&nbsp;4.가변성-사용성&nbsp;&nbsp;
		<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(0).equals("가변성-사용성")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>

		</align><br/><br/>
		
		[4] IoT 시험항목의 등급 평가 결과?&nbsp; [ <%if(list1==null){ %> <%} else{ %> <%=list1.get(1) %><%} %>]<br/>
	
		[5] IoT 시험항목의 시험방법 적용
		<br></br>
		&nbsp;&nbsp;&nbsp;&nbsp;1.자체시험방법&nbsp;
	
			<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(2).equals("업체 자체방법")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
	
		&nbsp;&nbsp;&nbsp;&nbsp;2.국내 기준&nbsp;&nbsp;
	
			<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(2).equals("국내 기준")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
		&nbsp;&nbsp;&nbsp;&nbsp;3.국제 기준&nbsp;&nbsp;
		<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(2).equals("국제 기준")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
			&nbsp;&nbsp;&nbsp;&nbsp;4.없음&nbsp;&nbsp;
				<input type="button" <% if(list1==null){ %> ㅡ
			<%} else{ %> <% if(list1.get(2).equals("없음")){ %> <%= "style=background-color:green;" %>  <%} } %> value="선택" size='1'>
			<br></br>
		<center>
			<input type="submit" value="확인">
			<input type="button" value="완료" onClick="location.href='main.jsp'">
		</center>
		</form><br/><br/><br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;메인 화면에서 사용자를 선택하면, IoT시험항목 선택 화면을 보여준다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 제품분야를 선택한 후 클릭한다.<br/>
		&nbsp;&nbsp;3.&nbsp;[2]에서 해당되는 IoT 기능명을 입력한다.<br/>
		&nbsp;&nbsp;4.&nbsp;[3]에서 해당 IoT시험항목이 어디에 속하는지 '공용성가변성'을 구분해서 출력해 준다.<br/>
		&nbsp;&nbsp;5.&nbsp;[4]에서 해당항목의 등급평가결과를 출력해 준다.<br/>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size=2 color="#ff0000">*등급평가에서 '3'은 Major, '2'는 Medium, '1'은 minor를 의미함.</font><br/>   
		&nbsp;&nbsp;6.&nbsp;[5]에서 해당항목의 시험방법을 출력해 준다.<br/>
		&nbsp;&nbsp;7.&nbsp;'확인'버튼을 누르면 [2]에서 선택한 해당항목에 대한 정보 확인이 완료된다.<br/>
		&nbsp;&nbsp;8.&nbsp;다른 IoT 기능에 대해 더 확인하려면 [2]~[6]의 과정을 계속실시하면 된다.<br/>	
		&nbsp;&nbsp;9.&nbsp;'완료'버튼을 누르면, 화면은 관리자 메인화면으로 넘어간다.<br/>
	</body>
</html>