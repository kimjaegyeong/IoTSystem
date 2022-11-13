<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import= "com.IoTSystem.Dto.IoTSystemDto" %>    
<%@ page import="java.util.ArrayList" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>IoT기능 추출입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff"> IoT 기능 추출</font></h1><br/>
		<h3>[1] 제품의 분야를 선택하세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<form action="IoTFunctionExtraction" method="get">
			<div>1.냉장 제품<input type="checkbox" name="product" value="냉장 제품"></div>
			<div>2.에어컨 제품<input type="checkbox" name="product" value="에어컨 제품 "></div>
			<div>3.세탁 제품<input type="checkbox" name="product" value="세탁 제품"></div>
		<br/><br/>
			<%
		ArrayList<String> list = (ArrayList<String>)request.getAttribute("list");
		%>
		[2] IoT 기능 추출목록 :   [<% if(list==null ){ %> 0 <% ;} else {%> <%=list.size()%><% } %> ]  항목<br/><br/>
		&nbsp;&nbsp;1)&nbsp;신규 등록 IoT 기능 목록: [<% if(list==null ){ %>  <% ;} else {%> <%=list.size()%><% } %> ] 항목<br/><br/>
		<div>
		<% int i=1; %>
		<% if(list==null){ %>  <% ;}  else { System.out.println("진입완료2 ");
		
		for(String function: list) {%>
		<%= i + ". "+ function %>
		<% i++; %>
		<%} }%>
		</div>
		
		&nbsp;&nbsp;2)&nbsp;기존 등록 IoT 기능 목록: [0] 항목<br/><br/>	

		<center>
			<input type="submit" value="확인">
			<input type="button" value="완료" onClick="location.href='manager.jsp'">
		</center>
		</form>
		<br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;관리자 화면에서 IoT 기능 추출을 선택하면 IoT 기능추출 화면을 보여준다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 원하는 제품분야를 클릭하여 선택한다.<br/>
		&nbsp;&nbsp;3.&nbsp;[2]에서 현재까지 등록된 IoT 기능 추출 항목개수를 출력시킨다.<br/>
		&nbsp;&nbsp;4.&nbsp;[2]의 1)에서 신규 등록 IoT 기능의 항목 개수를 출력시키고, 등록된 IoT 기능이름을 추력시킨다.<br/>
		&nbsp;&nbsp;5.&nbsp;[2]의 2)에서는 기존에 등록된 IoT 기능의 항목 개수를 출력시키고, 등록된 IoT 기능이름을 추력시킨다.<br/>
		&nbsp;&nbsp;6.&nbsp;'확인'버튼을 누르면 [1]에서 선택한 냉장제품의 IoT 기능의 추출된 추출은 끝난다.<br/>
		&nbsp;&nbsp;7.&nbsp;다른 분야에 대한 IoT 기능추출 목록을 확인하기 위해서는 위의 2번~5번 과정을 계속실시하면 된다.<br/>	
		&nbsp;&nbsp;8.&nbsp;'완료'버튼을 누르면, 관리자화면으로 화면이 넘어간다.<br/>
		</body>
		
</html>