<%@page import="project.vo.CustomerVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1_Basic</title>
</head>
<body>
<p>jsp에서는 html 태그와 함께 자바 명령어 작성, 변수 출력 등을 할 수 있습니다.</p>
<%

		// 자바에서 다루었던 배열, 리스트 컬렉션, VO 객체를 선언
		String[] names = {"사나", "나연", "모모", "쯔위", "다현"};
		List<String> list = List.of("사나", "나연", "모모", "쯔위", "다현");
		CustomerVo vo = new CustomerVo("sana", "김사나", "sana@gmail.com", 23, null);
		
%>

	<h4>배열 names</h4>
	<ul>
			<!-- 여기에 names 배열 요소값을 자바 코드 사용하여 반복문 출력 -->
<%
		for(int i=0;i<list.size();i++){		// for 시작
			
%>

			<li><%= list.get(i) %></li>

<%
		}		// for end
%>
	</ul>
	<hr>
	<h4>CustomerVo 객체</h4>
	<table style="width:600px;">
			<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
					<th>나이</th>
					<th>가입날짜</th>
			</tr>
			<tr>
					<td><%= vo.getCustomId() %></td>
					<td><%= vo.getName() %></td>
					<td><%= vo.getEmail() %></td>
					<td><%= vo.getAge() %></td>
					<td><%= vo.getReg_date() %></td>
			
			</tr>
	</table>
</body>
</html>

<!-- 		단축키: ctrl + d (한줄삭제) 		ctrl+alt+방향키 (한줄복사)
					 alt + 방향키 (줄이동)		ctrl+shift + / (주석)
					 shift+엔터 (다음줄로 이동)
					 ctrl+space (참조, 임포트, 자동완성 등)
 -->