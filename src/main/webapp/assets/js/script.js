// 작성자 : 임채은

// document.getElementById('join').addEventListener('click', function() {
//     alert('여기에 유효성 검증 구현하세요.')
	document.forms[0].submit();

// })


function save() {
    const id = document.querySelector('input[name="id"]');
    const password = document.querySelector('input[name="password"]');
    const name = document.querySelector('input[name="name"]');
    const birth = document.querySelectorAll('input[name="birth"]');
    const gen = document.querySelectorAll('input[name="gender"]:checked');
    const phonenumber = document.querySelector('input[name="phonenumber"]');
    const temp = document.querySelectorAll('input[type="radio"]');
    temp.forEach((ele, i) => console.log('radio', i, '=', ele.value));

    let regex = /[a-zA-z가-힣]+/

    let regex2 = /\d{4}-\d{2}-\d{2}/

    let isValid = true;

    if(name.value == ''){
      alert('이름을 입력해 주세요.')
      name.focus()
      isValid = false;

    } else if (!regex.test(name.value)) {
      alert('이름을 올바르게 입력해 주세요.')
      name.focus()
      isValid = false;

    } else if(password.value == ''){
        alert('비밀번호를 입력해 주세요.')
        passowrd.focus()
        isValid = false;
    } else if (password.length < 6){
        alert('비밀번호는 6글자 이상입니다.')
        password.focus()
        isValid = false;
    }
        else if (id.value == ''){
        alert('아이디를 입력해 주세요.')
        id.focus()
        isValid = false;

    } else if (birth.length == 0) {
        alert('생년월일을 입력해 주세요.')
        birth.focus()
        isValid = false;

    } else if (phonenumber.length == 0){
        alert('번호를 입력해 주세요.')
        phonenumber.focus()
        isValid = false;

    } else if (gen.length == ''){
        alert('성별을 선택해 주세요.')
        gen.focus()
        isValid = false;
    }

    

    if(isValid){
        const genArr = []
        gen.forEach(ele => {
            genArr.push(ele.value)
        })
        alert(`${name.value}님, 가입을 환영합니다!`)

        document.forms[0].submit();
    }


  }