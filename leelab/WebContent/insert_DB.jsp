<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<%@page import="java.sql.*"%>

	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://D:\\leelabnas\\Java\\course\\Access\\student.accdb;");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String stuID = new String(request.getParameter("stuID"));
	String stuPersonName = new String(request.getParameter("stuPersonName"));
	String stuAddress = new String(request.getParameter("stuAddress"));
	String stuPhone ="沒有電話";
	smt.executeUpdate("INSERT INTO personData VALUES('"+stuID+"','"+stuPersonName+"','"+stuAddress+"','"+stuPhone+"')");
	out.println("INSERT INTO personData VALUES('"+stuID+"','"+stuPersonName+"','"+stuAddress+"','"+stuPhone+"')");
	con.close();
	//response.sendRedirect("insert.jsp");
	%>
