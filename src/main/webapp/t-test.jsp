<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>t-검정분석입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff">t-검정 분석</font></h1><br/>
		<h3>[1] 제품의 분야를 선택하세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
		<form action="Ttest" method="post">
			<div>1.냉장 제품<input type="checkbox" name="product" value="냉장 제품"></div>
			<div>2.에어컨 제품<input type="checkbox" name="product" value="에어컨 제품 "></div>
			<div>3.세탁 제품<input type="checkbox" name="product" value="세탁 제품"></div>
		<br/><br/>
		[2] IoT 기능명 :  [<input type="text" value="" name="IoT_function">]&nbsp;&nbsp;

			<%
		String t_testValue = (String)request.getAttribute("t_testValue");
		%>
		<br/><br/>
		[3] t값은 얼마인가?&nbsp;[ <%if(t_testValue==null){ %> <%} else{ %> <%=t_testValue %><%} %>]<br/>
	
		<center>
			<input type="submit" value="확인">
			<input type="button" value="완료" onClick="location.href='manager.jsp'">
		</center>

		</form><br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;관리자 화면에서 t검정분석을 선택하면, t검정분석 화면을 보여준다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 제품분야를 선택한 후 클릭한다.<br/>
		&nbsp;&nbsp;3.&nbsp;[2]에서 해당되는 IoT 기능명을 입력한다.<br/>
		&nbsp;&nbsp;4.&nbsp;[3]에서 해당 IoT 기능의 T값을 출력해 준다.<br/>
		&nbsp;&nbsp;&nbsp;&nbsp;<font size=2 color="#ff0000">*t값이 0으로 출력되는 경우는 해당 IoT 기능이 중요도와 우선도에 대한 설문결과에서 분산이   
      0이기 때문에 t값을 계산할 수 없어 0으로 나타냄.
		</font><br/>
		&nbsp;&nbsp;5.&nbsp;'확인'버튼을 누르면 [2]에서 선택한 IoT 기능에 대한 t값 출력은 완료된다.<br/>
		&nbsp;&nbsp;6.&nbsp;다른 IoT 기능에 대해 더 확인하려면 [2]에서 '추가'버튼을 누른 후, 원하는 IoT 기능이름을 입력하면 t값 결과를 출력한다.<br/>	
		&nbsp;&nbsp;8.&nbsp;'완료'버튼을 누르면, 화면은 관리자 메인화면으로 넘어간다.<br/>	
	</body>
</html>