<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>신뢰도 분석입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff"> 신뢰도 분석</font></h1>
		<h3>[1] IoT 기능 신뢰도 분석 결과<br/><br/>
		&nbsp;&nbsp;1. 중요도 신뢰도는?&nbsp;[0.795]&nbsp;&nbsp;&nbsp;&nbsp;2. 우선도 신뢰도는?&nbsp;[0.690]<br/><br/>
		[2] 중요도의 공용성과 가변성 신뢰도 분석결과<br/><br/>
		&nbsp;&nbsp;1. 중요도의 공용성 신뢰도는?&nbsp;[0.847]&nbsp;&nbsp;&nbsp;&nbsp;2. 중요도의 가변성 신뢰도는?&nbsp;[0.403]<br/><br/>
		[3] 우선도의 공용성과 가변성 신뢰도 분석결과<br/><br/>
		&nbsp;&nbsp;1. 우선도의 공용성 신뢰도는?&nbsp;[0.610]&nbsp;&nbsp;&nbsp;&nbsp;2. 중요도의 가변성 신뢰도는?&nbsp;[0.341]<h3><br/>
		<form>
		<center>
			<input type="button" value="확인">
			<input type="button" value="완료" onClick="location.href='manager.jsp'">
		</center>
		<form><br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;관리자 화면에서 신뢰도 분석을 선택하면, 신뢰도 분석 화면을 보여준다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 중요도와 우선도에 대한 신뢰도 분석결과를 출력해 준다.<br/>
		&nbsp;&nbsp;&nbsp;&nbsp;<font size=2 color="#ff0000">*신뢰도 분석 결과는 제품 분야 구분 없이 모든 분야의 전체 IoT 기능을 대상으로 한 것임.</font><br/>
		&nbsp;&nbsp;&nbsp;&nbsp;<font size=2 color="#ff0000">*신뢰도 수준을 판단하는 것은 통상 0.6이상이면 신뢰도가 있다고 봄.</font><br/>
		&nbsp;&nbsp;3.&nbsp;[2]에서 중요도에 대한 공용성과 가변성에 대해 신뢰도를 출력해 준다.<br/>
		&nbsp;&nbsp;4.&nbsp;[3]에서 우선도에 대한 공용성과 가변성에 대해 신뢰도를 출력해 준다.<br/>
		&nbsp;&nbsp;5.&nbsp;'확인'버튼을 누르면 화면은 관리자 메인화면으로 넘어간다.<br/>	
	</body>
</html>