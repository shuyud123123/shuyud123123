<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
    int a[]=new int[3];
    a[0]=100;
    out.println("a[0]="+a[0]+"<br>");
    
    int b[]={3,2,1};
    out.println("b[0]="+b[0]+"<br>");
    
    b[0]=200;
    out.println("b[0]="+b[0]+"<br>");
%>
<br>
<%
   int d[][]=new int[3][2];
d[1][0]=2;
d[2][1]=5;
   out.println(d[1][0]);
   out.println(d[2][1]);
%>
<br>

</body>
</html>