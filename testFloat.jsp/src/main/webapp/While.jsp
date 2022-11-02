<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
	<body>
<%@include file="menu.jsp"%>
<br>
        <%       
                int i = 0;
                int count=1;
        
                while ((i<=200)&&(count<5)){
                        i++;
                        if((i%3==0)&&(i%7==0)){
                                out.println(i+"是3和7的公倍數<BR>");
                            count=count+1;}
                }
        %>
</body>
</body>
</html>