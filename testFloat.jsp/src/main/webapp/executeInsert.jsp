<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>Select</title></head>
	<meta charset="BIG5">
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\shuyud123123\\testFloat.jsp\\src\\main\\webapp\\HealthCare.accdb;");//�bhealthcare�W���k����properties���location�ƻs��o�̡A�b�ɤW\�o��
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM personData ";
	ResultSet rs = smt.executeQuery(sql);
	%>
	���X��ƪ���
	<table border='1'>
	<tr>
	<th>�s��</th>
	<th>�m�W</th>
	<th>��}</th>
	<th>�q��</th>
	</tr>
	<%
	while(rs.next()){%>
	<tr>
		 <td><%=rs.getString("ID")%></td>
		 <td><%=rs.getString("personName")%></td>
		 <td><%=rs.getString("address")%></td>
		 <td><%=rs.getString("phone")%></td>
	</tr>
	<%}	
	con.close();//�b�W����while�p�Grs������A�N�|�C���U�|��(�s���B�m�W�B��}�B�q��)
	%>
</body>
</html>