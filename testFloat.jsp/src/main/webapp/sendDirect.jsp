<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head><title>網頁重新導向</title></head>
<body>
<%
	String view = request.getParameter("view");
	if(view.equals("yahoo"))
		response.sendRedirect("https://tw.yahoo.com/");//當if這條成立，我就會執行現在這條。
	else if(view.equals("pchome"))
		response.sendRedirect("https://shopping.pchome.com.tw/") ;
	else if(view.equals("momo"))
		response.sendRedirect("https://www.momoshop.com.tw/");
%>
</body>
</html>