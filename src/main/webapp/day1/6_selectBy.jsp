<%@page import="project.vo.CustomerVo"%>
<%@page import="java.util.List"%>
<%@page import="project.dao.TblCustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6_selectby</title>
</head>
<body>
		<h3>테이블에서 조회하기 - name, age parameter 사용</h3>
		<hr>
<%
		String name = request.getParameter("name");
		String temp = request.getParameter("age");
		
		TblCustomerDao dao = new TblCustomerDao();
		List<CustomerVo> list = null;
		if((name !=null && name.length() !=0) && (temp!=null && temp.length() !=0)){
			int age = Integer.parseInt(temp);
			list = dao.selectByNameAge(name, age);
			out.print(list);
			if(list.size()==0) out.print("<h4>조회 결과가 없습니다.</h4>");
		}else{
			out.print("파라미터를 모두 입력해 주세요.");
		}
		
%>

</body>
</html>