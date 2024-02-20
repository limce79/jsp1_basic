<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4_param_send</title>
</head>
<body>
		<h3>a 태그의 url 주소에 파라미터 값을 포함해서 전송하기</h3>
		<p>★★★ 이것은 메뉴 또는 조회 동작을 할 때 사용되는 방식입니다. ★★★ 실행하고 url 주소창도 잘 확인하기</p>
		<hr>
		<ul>
				<li><a href="5_param_receive.jsp?name=sana&age=24">name, age 2개의 파라미터 보내기</a></li>
				<!-- 2개 값이 모두 출력됩니다. -->
				<li><a href="5_param_receive.jsp?name=sana">name, age 2개의 파라미터 보내기 - age 파라미터 없을 때</a></li>
				<!-- age는 null -->
				<li><a href="5_param_receive.jsp?name=sana&age=">name, age 2개의 파라미터 보내기 - age값 없을 때</a></li>
				<!-- age는 length가 0인 문자열 -->
		</ul>
		<hr>
		<h3>테이블에서 조회하기</h3>
		<ul>
				<li><a href="6_selectBy.jsp?name=김사나&age=23">name, age 2개의 파라미터 보내기</a></li>
				<!-- 2개 값이 모두 출력됩니다. -->
				<li><a href="6_selectBy.jsp?name=김사나&age=24">name, age 2개의 파라미터 보내기 - age 파라미터 없을 때</a></li>
				<!-- age는 null -->
				<li><a href="6_selectBy.jsp?name=김사나&age=">name, age 2개의 파라미터 보내기 - age값 없을 때</a></li>
				<!-- age는 length가 0인 문자열 -->
		</ul>
</body>
</html>