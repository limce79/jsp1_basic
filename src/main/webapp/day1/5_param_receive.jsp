<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5_param_receive.jsp</title>
</head>
<body>
			<h3>4번 url 주소에서 보낸 파라미터를 받아 값을 저장합니다. -> 조회에 사용할 값</h3>
<%
		/* getParameter의 리턴 타입은 String */
		String name = request.getParameter("name");
		String temp = request.getParameter("age");
		
		/* 아래 if문은 모든 파라미터 값이 전송되었을 때만 실행하는 조건식입니다.
							ㄴ 실제로는 입력 파라미터는 자바스크립트에서 검사합니다.*/
		if((name !=null && name.length() !=0) && (temp!=null && temp.length() !=0)){
			
			/* to do: name과 age값으로 테이블에서 조회하고 결과 출력(html 태그)하기 => 6번 파일
							age는 정수 타입으로 변경되어야 합니다. */
			int age = Integer.parseInt(temp);
			
			out.print("<h4>name</h4>");
			out.print(name);
			
			out.print("<h4>age</h4>");
			out.print(age);
		} else {
				out.print("파라미터 값을 모두 입력하세요.");
		}
		
	
%>

<!-- todo: 6번 파일 조회결과 출력하기 -->
</body>
</html>