<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>JSP Page</title>
</head>
<body>
<%request.setCharacterEncoding("Big5"); //�o���A����A�b������r�ɡA�{���]�X��%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String tel = request.getParameter("tel");
 out.println("Hello " + name + ", �w��ϥ�JSP����!");//�o�̪�name���W�٭n��12�檺string"name"�n�@��%>
Hi,<%=name %>�z�n�G<br>
�z��J���Ӹ�p�U�G<br>
�m�W�G<%=name %><br>
E-mail�G<%=email %><br>
�q�ܡG<%=tel %>	

</body>
</html>