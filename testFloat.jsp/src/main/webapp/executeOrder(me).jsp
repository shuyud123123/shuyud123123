<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head><title>�ƧǬd�ߵ��G</title></head>
<body>
	<font size="5" color="green">���Z�ƦW</font><hr>
	<table border="1">
		<tr><th>�W��</th><th>�m�W</th><th>���</th></tr>
		<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://D:\\Java\\Access\\dataBase.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT Name,��� FROM grades ORDER BY ��� DESC";//DESC��Ʊq�����Ʀr��C�A�S���S�O�g�N�|�H�C�찪�Ƨ�
	ResultSet rs = smt.executeQuery(sql);
	int num=1;//�W����th�W��th�A�O�b�o��sum+1�N�O�W������F�覡
	
	while(rs.next()){
		out.println("<tr><td>" + num + "</td><td>" + rs.getString("Name") + "</td><td>" + rs.getString("���") + "</td></tr>");
		num++;//��int sum+1 �M while��num �M �o�檺num++�|����3
	}

	%>
	</table>	
</body>
</html>