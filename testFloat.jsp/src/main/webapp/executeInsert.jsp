<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>Select</title></head>
	<meta charset="BIG5">
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\shuyud123123\\testFloat.jsp\\src\\main\\webapp\\HealthCare.accdb;");//在healthcare上面右鍵找到properties找到location複製到這裡，在補上\這個
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM personData ";
	ResultSet rs = smt.executeQuery(sql);
	%>
	取出資料表資料
	<table border='1'>
	<tr>
	<th>編號</th>
	<th>姓名</th>
	<th>住址</th>
	<th>電話</th>
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
	con.close();//在上面的while如果rs有執行，就會列底下四個(編號、姓名、住址、電話)
	%>
</body>
</html>