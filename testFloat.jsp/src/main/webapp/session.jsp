<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head><title>�]�wsession���</title></head>
<body>
<%
session.setAttribute("idvalue", "���p��");
session.setAttribute("sex", "�j�ǳ��k�P��");
session.setAttribute("hobby", "���y");
%>
<a href="sessionGet.jsp">��ܤw�]�w��session��Ƥ��e</a>
</body>
</html>