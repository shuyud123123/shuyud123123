<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head><title>�]�wsession���</title></head>
<body>
<%
session.setAttribute("idvalue", "���ѷ�");
session.setAttribute("sex", "�j�ǳ��k�P��");
session.setAttribute("hobby", "���y");
Object id=session.getAttribute("idvalue");
Object sex=session.getAttribute("sex");
Object hobby=session.getAttribute("hobby");
if(id!=null){
	out.println("�m�W�G"+id.toString()+"<br>");
	out.println("�ʧO�G"+sex.toString()+"<br>");
	out.println("����G"+hobby.toString()+"<br>");
}else{
	out.println("�Lsession���");
}
%>
<a href="sessionGet.jsp">��ܤw�]�w��session��Ƥ��e</a>
</body>
</html>