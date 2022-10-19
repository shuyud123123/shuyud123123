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
	int intFirstNumber = 10 ;
	int intSecondNumber = 20 ;
	int intADD ;
	intADD = intFirstNumber + intSecondNumber;
	out.println(
		intFirstNumber + "+" +
		intSecondNumber + "=" + intADD);
	%>
</body>
</html>