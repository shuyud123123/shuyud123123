<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head><title>排序查詢結果</title></head>
<body>
	<font size="5" color="green">成績排名</font><hr>
	<table border="1">
		<tr><th>名次</th><th>姓名</th><th>國文</th></tr>
		<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://D:\\Java\\Access\\dataBase.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT Name,國文 FROM grades ORDER BY 國文 DESC";//DESC資料從高的數字到低，沒有特別寫就會以低到高排序
	ResultSet rs = smt.executeQuery(sql);
	int num=1;//上面的th名次th，是在這裡sum+1就是名次的表達方式
	
	while(rs.next()){
		out.println("<tr><td>" + num + "</td><td>" + rs.getString("Name") + "</td><td>" + rs.getString("國文") + "</td></tr>");
		num++;//當int sum+1 和 while的num 和 這行的num++會等於3
	}

	%>
	</table>	
</body>
</html>