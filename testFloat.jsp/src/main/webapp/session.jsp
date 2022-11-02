<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head><title>設定session資料</title></head>
<body>
<%
session.setAttribute("idvalue", "王小銘");
session.setAttribute("sex", "大學部男同學");
session.setAttribute("hobby", "打球");
%>
<a href="sessionGet.jsp">顯示已設定之session資料內容</a>
</body>
</html>