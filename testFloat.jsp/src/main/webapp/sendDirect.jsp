<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head><title>�������s�ɦV</title></head>
<body>
<%
	String view = request.getParameter("view");
	if(view.equals("yahoo"))
		response.sendRedirect("https://tw.yahoo.com/");//��if�o�����ߡA�ڴN�|����{�b�o���C
	else if(view.equals("pchome"))
		response.sendRedirect("https://shopping.pchome.com.tw/") ;
	else if(view.equals("momo"))
		response.sendRedirect("https://www.momoshop.com.tw/");
%>
</body>
</html>