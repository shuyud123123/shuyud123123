<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head><title>使用GetParameterValues方法</title></head>
<body>
<%
	String select[] = request.getParameterValues("ln");
	int count = 0;
	
	try {
		count = select.length;
	}catch(Exception e){
		response.sendRedirect("getParameterValues.html");
	}//try是自己寫得程式對的。錯的跑catch，如果try沒有錯的話，就不會跑catch
	
	out.print("<font color='red'>您喜歡的程式語言為：</font><br>");
	for (int i = 0; i < count ; i++)
		out.print(select[i]+"<br>");//列印出來的值在這條
%>
</body>
</html>