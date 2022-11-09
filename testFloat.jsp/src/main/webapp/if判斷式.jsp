<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>if-else 判斷式</title>
</head>
<body>
	<%
	int a = 10 ;
	out.println(" 變數 a=10 <BR>");
	
	if (a>10 ){
		out.println("變數a>10 的條件式成立!");
	}
	else if(a==10){
		out.println("變數a=10 的條件式成立!");
	}
	else{
		out.println("變數a<10 的條件式布不成立!");
	}
		out.println("運算結束");
	%>
</body>
</html>