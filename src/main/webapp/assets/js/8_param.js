document.getElementById('search').addEventListener('click', function(){
	// input에 입력한 값 가져오기
		const name = document.getElementById('name').value;
		const age = document.querySelector('#age').value;		// id가 age 요소.value

		console.log('입력값: ', name, age);

	// url을 6번 파일로 파라미터 포함하여 `웹브라우저 주소` 변경하기: location 객체의 `href` 속성은 `URL` 주소
	//		location.href = '6_selectBy.jsp?name=김사나&age=23'		
		location.href = `6_selectBy.jsp?name=${name}&age=${age}`		
	
})
	// js 파일은 8_param_javascript.jsp에 포함되므로 8번 jsp 파일과 같은 폴더(경로)입니다.
