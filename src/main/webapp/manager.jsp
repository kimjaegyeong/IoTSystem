<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>관리자 메인화면입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff">관리자 메인화면</h1></font><br/>
		<form>
			<h2 align="center">
	
			1.&nbsp;IoT 기능 추출&nbsp;<input type="button" value="선택" onClick="location.href='IoTFunctionExtraction'">&nbsp;&nbsp;&nbsp;
			2.&nbsp;공용성가변성구분&nbsp;<input type="button" value="선택" onClick="location.href='commonvariablesort.jsp'">&nbsp;&nbsp;&nbsp;
			3.&nbsp;IoT기능 통계분석&nbsp;<input type="button" value="선택" onClick="location.href='statisticsanalysis.jsp'">&nbsp;&nbsp;&nbsp;
			4.&nbsp;신뢰도 분석&nbsp;<input type="button" value="선택" onClick="location.href='reliability.jsp'">&nbsp;&nbsp;&nbsp;</h2><br/>
			<h2 align="center">	
			5.&nbsp;t-검정&nbsp;<input type="button" value="선택" onClick="location.href='t-test.jsp'" >&nbsp;&nbsp;&nbsp;		
			6.&nbsp;IoT시험항목추출&nbsp;<input type="button" value="선택" onClick="location.href='testitemextraction.jsp'" >&nbsp;&nbsp;&nbsp;
			7.&nbsp;IoT시험항목확인&nbsp;<input type="button" value="선택" onClick="location.href='Testitemcheck.jsp'" >&nbsp;&nbsp;&nbsp;	
			8.&nbsp;공용성가변성확인&nbsp;<input type="button" value="선택" onClick="location.href='commonvariablecheck.jsp'"></h2>			
		</form><br/><br/>		
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;관리자 메인 화면으로 8개 항목으로 구성된다. 각각의 기능을 선태하면 해당 항목으로 화면이 넘어간다.<br/>
	</body>	
</html>