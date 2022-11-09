<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head><title>新增資料</title></head>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\shuyud123123\\testFloat.jsp\\src\\main\\webapp\\20221109 id.name.accdb");
	Statement smt= con.createStatement();
	out.println("新增資料至person");
	smt.executeUpdate("insert into stu ( id,name) values ('3','ww');");
	
	con.close();
	%>
</body>
</html>