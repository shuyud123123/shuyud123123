<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>JSP Page</title>
</head>
<body>
	<%
	double dblVar;
	dblVar = 123.45;
	out.println("�ܼ� dblVar = " + dblVar);
	dblVar = 123;
	out.println("�ܼ� dblVar = " + dblVar);
	%>
</body>
</html>