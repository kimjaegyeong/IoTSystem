<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import= "com.IoTSystem.Dto.IoTSystemDto" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공용성가변성 구분입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff">공용성가변성 구분</font></h1>
		<h3>[1] 제품의 분야를 선택하세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<form action="CommonVariableSort" method="post">
			<div>1.냉장 제품<input type="checkbox" name="product" value="냉장 제품"></div>
			<div>2.에어컨 제품<input type="checkbox" name="product" value="에어컨 제품 "></div>
			<div>3.세탁 제품<input type="checkbox" name="product" value="세탁 제품"></div>
		<br/><br/>
		[2] IoT 기능명 : [<input type="text" value="냉장저장실 모니터링" name="IoT_function">]
		
			<input type="button" value="추가">
		<br/><br/>
		[3] IoT 기능에 대해 체크리스트 항목을 체크하시오.<br/><br/>
		&nbsp;&nbsp;1) IoT 기능의 속성기능은 있는가?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
			<div><input type="checkbox" name="property" value="yes">예 </div>
			<div><input type="checkbox" name="property" value="no">아니오 </div>
		<br/>
		&nbsp;&nbsp;2) IoT 기능의 행위기능은 있는가??&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div><input type="checkbox" name="action" value="yes">예</div>
		<div><input type="checkbox" name="action" value="no">아니오</div>
		<br/>
		&nbsp;&nbsp;3) IoT 기능은 인터페이스 연동이 되는가?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<div><input type="checkbox" name="interface" value="yes">예</div>
		<div><input type="checkbox" name="interface" value="no">아니오</div>		
<br/>
		&nbsp;&nbsp;4) IoT 기능과 기능연관이 있는 다른 IoT 기능은 있는가?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<div><input type="checkbox" name="relation_IoT" value="yes">예</div>
		<div><input type="checkbox" name="relation_IoT" value="no">아니오</div>
		<br/>
		&nbsp;&nbsp;5) IoT 기능은 독립적으로 사용할 수 있는가?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<div><input type="checkbox" name="independence" value="yes">예</div>
		<div><input type="checkbox" name="independence" value="no">아니오</div>
	<br/><br/>
		
		[4] 냉장저장실 모니터링 기능은 공용성가변성 구분? 
			<%
		String commonOrVariable = (String)request.getAttribute("commonOrVariable");
		%>

			<input type="button" <% if(commonOrVariable!=null&&commonOrVariable.equals("common")){ %> <%= "style=background-color:green;" %>  <%} %> value="공용성">
			<input type="button" <% if(commonOrVariable!=null&&commonOrVariable.equals("variable")){ %> <%= "style=background-color:green;" %>  <%} %>  value="가변성">
	<br/><br/>
	
		<center>
			<input type="button" value="이전">
			<input type="submit" value="확인">
			<input type="button" value="완료" onClick="location.href='manager.jsp'">
		</center>
		</form><br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;관리자 화면에서 공용성가변성구분을 선택하면, 공용성가변성구분화면을 보여준다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 제품분야를 선택한 후 클릭한다.<br/>
		&nbsp;&nbsp;3.&nbsp;[2]에서 해당되는 IoT 기능명을 입력한다.<br/>
		&nbsp;&nbsp;4.&nbsp;[3]의 1),2),3),4),5)각 항목별로 해당내용을 체크한다.<br/>
		&nbsp;&nbsp;5.&nbsp;[4]에서 IoT 기능인 냉장저장실 모니터링을 '공용성가변성'을 구분해서 출력시킨다.<br/>
		&nbsp;&nbsp;6.&nbsp;'확인'버튼을 누르면 [2]에서 선택한 냉장저장실 모니터링의 구분은 완료된다.<br/>
		&nbsp;&nbsp;7.&nbsp;다른 IoT 기능에 대해 더 확인하려면 [2]~[6]의 과장을 계속실시하면 된다.<br/>	
		&nbsp;&nbsp;8.&nbsp;'완료'버튼을 누르면, 화면은 관리자 메인화면으로 넘어간다.<br/>	
	</body>
</html>