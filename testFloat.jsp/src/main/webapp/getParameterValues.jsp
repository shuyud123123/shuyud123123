<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head><title>�ϥ�GetParameterValues��k</title></head>
<body>
<%
	String select[] = request.getParameterValues("ln");
	int count = 0;
	
	try {
		count = select.length;
	}catch(Exception e){
		response.sendRedirect("getParameterValues.html");
	}//try�O�ۤv�g�o�{���諸�C�����]catch�A�p�Gtry�S�������ܡA�N���|�]catch
	
	out.print("<font color='red'>�z���w���{���y�����G</font><br>");
	for (int i = 0; i < count ; i++)
		out.print(select[i]+"<br>");//�C�L�X�Ӫ��Ȧb�o��
%>
</body>
</html>