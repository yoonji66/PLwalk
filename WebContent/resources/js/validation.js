function CheckAddCourse() {
	var courseId=document.getElementById("courseId");
	var openingTime=document.getElementById("openingTime");
	var price=document.getElementById("price");
	var walkingTime=document.getElementById("walkingTime");
	var leaderNumber=document.getElementById("leaderNumber");
	
	//산책 코스 아이디 체크
	if(!check(/^[A-Z][0-9]{4}$/,courseId,
		"[코스 식별 코드]\n코스의 영문 대문자 이니셜 한 자리과 숫자 4자리를 조합하여 5자를 입력하세요"))
		return false;
		
	//개장 시간 체크
	if(!check(/^[0-2][0-9]:[0-5][0-9]~[0-2][0-9]:[0-5][0-9]$/,openingTime,
		"[개장 시간]\n코스의 개장 시간은 XX:XX~XX:XX의 형식으로 입력하세요"))
		return false;
		
	//입장료 가격 체크
	if(price.value.length==0||isNaN(price.value)) {
		alert("[입장료]\n숫자만 입력하세요");
		price.select();
		price.focus();
		return false;
	}
	
	if(price.value<0) {
		alert("[입장료]\n음수는 입력할 수 없습니다");
		price.select();
		price.focus();
		return false;
	}
	
	//산책 시간 체크
	if(!check(/^[0-2][0-9]:[0-5][0-9]~[0-2][0-9]:[0-5][0-9]$/,walkingTime,
		"[산책 시간]\n코스의 산책 시간은 XX:XX~XX:XX의 형식으로 입력하세요"))
		return false;

	//대표자 연락처 체크
	if(!check(/^01[0-9]-[0-9]{4}-[0-9]{4}$/,leaderNumber,
		"[연락처]\n대표자 연락처는 01X-XXXX-XXXX의 형식으로 입력하세요"))
		return false;

	function check(regExp,e,msg) {
		if(regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	document.newCourse.submit()	
}