<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>IoT 기능 설문지 작성입니다</title>
	</head>
	<body>
		<br/><h1 align="center"><font size=7 color="#0000ff"> IoT 기능 설문지</font></h1><br/>
		<h3>[1] 제품의 분야를 선택하세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<form action="Survey" method="post">
			<div>1.냉장 제품<input type="checkbox" name="product" value="냉장 제품"></div>
			<div>2.에어컨 제품<input type="checkbox" name="product" value="에어컨 제품 "></div>
			<div>3.세탁 제품<input type="checkbox" name="product" value="세탁 제품"></div>
					<br/><br/>
		[2] IoT 기능명 : [<input type="text" value="냉장저장실 모니터링" name="IoT_function">] &nbsp;&nbsp;
		
			
		<br/><br/>
		[3] IoT 기능의 항목별로 아래의 점수를 입력하시오.<br/><br/>
		&nbsp;&nbsp;1) IoT 기능의 중요도는 몇 점입니까?&nbsp;[<input type="number" value="0" name="importance" size=1>]<br/>
		&nbsp;&nbsp;2) IoT 기능의 우선도는 몇 점입니까?&nbsp;[<input type="number" value="0" name="priority" size=1>]<br/>
		&nbsp;&nbsp;3) IoT 기능의 가중치는 몇 점입니까?&nbsp;[<input type="number" value="0" name="weight" size=1>]<br/>
		&nbsp;&nbsp;4) IoT 기능과 연관이 있는 다른 IoT 기능은 무엇인가?&nbsp;[<input type="text" value="냉장저장실 원격제어" name="relation_IoT">] <br/>
		&nbsp;&nbsp;5) IoT 기능의 시험방법은 무엇인가?&nbsp;&nbsp;
			
			<div><input type="checkbox" name="testMethod" value="업체자체시험방법">1.업체자체시험방법</div>
			<div><input type="checkbox" name="testMethod" value="국내 기준">2.국내 기준</div>
			<div><input type="checkbox" name="testMethod" value="국제 기준">3.국제 기준</div>
			<div><input type="checkbox" name="testMethod" value="없음">4.없음</div>
			
		</h3><br/>
	
		<center>
			<input type="button" value="이전">
			<input type="submit" value="확인">
			<input type="button" value="완료" onClick="location.href='main.jsp'">>
		</center>
		</form>
		<br/>
		&nbsp;&nbsp;[화면설명]<br/>
		&nbsp;&nbsp;1.&nbsp;메인 화면에서 스태틱홀더를 선택하면 IoT기능 설문지 작성 화면 상태이다.<br/>
		&nbsp;&nbsp;2.&nbsp;[1]에서 제품분야를 선택한 후, [2]에서 해당되는 IoT 기능명을 입력한다.<br/>
		&nbsp;&nbsp;3.&nbsp;[3]의 1),2),3) 각 항목별로 점수를 입력한다.<br/>
		&nbsp;&nbsp;&nbsp;&nbsp;<font size=2 color="#ff0000">*중요도, 우선도는 단계별 점수(5점: 매우우수, 4점:우수, 3점:보통, 2점:낮은, 1점:매우낮음)를 나타냄</font><br/>
		&nbsp;&nbsp;4.&nbsp;4)에서 해당 IoT 기능과 기능연관이 있는 IoT 기능을 적어준다. 연관 기능이 없으면 '없음' 으로 표기한다.<br/>
		&nbsp;&nbsp;5.&nbsp;5)에서 IoT 기능의 시험방법을 체크한다.<br/>
		&nbsp;&nbsp;6.&nbsp;'확인'버튼을 누르면 [2]에서 선택한 IoT 기능에 대한 설문이 끝난다.<br/>
		&nbsp;&nbsp;7.&nbsp;다른 IoT 기능에 대해 설문을 더 하려면 [2]~[6 과정을 계속실시하면 된다.<br/>	
		&nbsp;&nbsp;8.&nbsp;설문지 작성이 완료되면 '완료'버튼을 누른다. 화면은 메인화면으로 넘어간다.<br/>	
	</body>	
</html>