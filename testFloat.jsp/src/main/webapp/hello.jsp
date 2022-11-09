<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>JSP Page</title>
</head>
<body>
<%request.setCharacterEncoding("Big5"); //這條，防止你在打中文字時，程式跑出來%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String tel = request.getParameter("tel");
 out.println("Hello " + name + ", 歡迎使用JSP網頁!");//這裡的name的名稱要跟12行的string"name"要一樣%>
Hi,<%=name %>您好：<br>
您輸入的個資如下：<br>
姓名：<%=name %><br>
E-mail：<%=email %><br>
電話：<%=tel %>	

</body>
</html>