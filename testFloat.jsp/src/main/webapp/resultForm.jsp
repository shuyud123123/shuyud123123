
<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head>
	  <title>���Z�d�ߵ��G</title>
	  <meta charset="BIG5">
	</head>
<body>
	<%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	request.setCharacterEncoding("Big5");
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\shuyud123123\\testFloat.jsp\\src\\main\\webapp\\HealthCare.accdb;;");
	Statement smt= con.createStatement();
	String name = request.getParameter("name");
	String keywords = request.getParameter("keywords");

			
	String sql = "SELECT * FROM grades WHERE Name ='" + name + "'";
	String color;
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	
	%>
	<font color="blue" size="5"><%=rs.getString("Name") %>�����Z�p�U�G</font>
	<p>
	���G<%=rs.getString("���") %><br>
	�^��G<%=rs.getString("�^��") %><br>
	�ƾǡG<%=rs.getString("�ƾ�") %><br>
	</p>
	
	<%
	String sql1 = "SELECT * FROM grades WHERE Name like '*" + keywords + "*'";
	ResultSet rs1 = smt.executeQuery(sql1);
	rs1.next();
	%>
	
	<font color="blue" size="5"><%=rs1.getString("Name") %>�����Z�p�U�G</font>
	<p>
	���G<%=rs1.getString("���") %><br>
	�^��G<%=rs1.getString("�^��") %><br>
	�ƾǡG<%=rs1.getString("�ƾ�") %><br>
	</p>
	
</body>
</html>