<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>통계분석입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff"> IoT 통계분석</font></h1><br/>
		<h3>[1] 제품의 분야를 선택하세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<form action="Analysis" method="post">
			<div>1.냉장 제품<input type="checkbox" name="product" value="냉장 제품"></div>
			<div>2.에어컨 제품<input type="checkbox" name="product" value="에어컨 제품 "></div>
			<div>3.세탁 제품<input type="checkbox" name="product" value="세탁 제품"></div>
	<br/><br/>
		[2] IoT 기능명 :  [<input type="text" value="냉장저장실 모니터링" name="IoT_function">]&nbsp;&nbsp;
		
		<%
		ArrayList<String> list = (ArrayList<String>)request.getAttribute("list");
		%>
	
		<br/><br/>
		
		[3] IoT 기능의 기술통계량 결과<br/><br/>
		&nbsp;&nbsp;1) IoT 기능의 중요도[평균값]? [<%if(list==null){ %> <%} else{ %> <%=list.get(0) %><%} %>] <br/>
		&nbsp;&nbsp;2) IoT 기능의 우선도[평균값]? [<%if(list==null){ %> <%} else{ %> <%=list.get(1) %><%} %>]<br/>
		&nbsp;&nbsp;3) IoT 기능의 가중치[평균값]? [<%if(list==null){ %> <%} else{ %> <%=list.get(2) %><%} %>]<br/>
		
		&nbsp;&nbsp;4) IoT 다른 IoT 기능과의 연관성 유무? [ <%if(list==null || list.get(3).equals("없음")){ %> <%= "없음" %> <%  } else{ if(!(list.get(3).isEmpty())){ %> <%= "있음" %> <%} } %> ]<br/>
		
		<center>
			<input type="button" value="이전">
			<input type="submit" value="확인">
			<input type="button" value="완료" onClick="location.href='manager.jsp'">
		</center>
		</form><br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;관리자 화면에서 IoT 기능 통계분석을 선택하면, 공용성가변성구분화면을 보여준다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 제품분야를 선택한 후 클릭한다.<br/>
		&nbsp;&nbsp;3.&nbsp;[2]에서 해당되는 IoT 기능명을 입력한다.<br/>
		&nbsp;&nbsp;4.&nbsp;[3]의 1),2),3),4),5)각 항목별로 해당내용을 출력해 준다.<br/>
		&nbsp;&nbsp;5.&nbsp;'확인'버튼을 누르면 [2]에서 선택한 냉장저장실 모니터링에 대한 통계분석은 완료된다.<br/>
		&nbsp;&nbsp;6.&nbsp;다른 IoT 기능에 대해 더 확인하려면 [2]에서 '추가'버튼을 누른 후, 원하는 IoT 기능이름을 입력하면 통계분석 결과를 출력한다.<br/>	
		&nbsp;&nbsp;8.&nbsp;'완료'버튼을 누르면, 화면은 관리자 메인화면으로 넘어간다.<br/>	
	</body>
</html>