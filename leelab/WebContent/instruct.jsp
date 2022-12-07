<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5" import="java.sql.*"%>
 <jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%@include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>LeeLab Web</title>
  <link href="//fonts.googleapis.com/css2?family=Merriweather:wght@300;400;700;900&amp;display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&amp;display=swap" rel="stylesheet">
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <meta name="keywords" content="leelab">
  <meta name="description" content="This is for example.">
  <style>
.pagination {
  display: inline-block;
}

.pagination a {
  color: #668cff;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
}

.pagination a.active {
  background-color: #0099E5;
  color: white;
  border-radius: 10px;
}

.pagination a:hover {
  background-color: #ddd;
  border-radius: 5px;
}
</style>
</head>
<body>
	<%! int num=0; //�ŧi�����ܼ�num %>
	<%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String sql = "SELECT * FROM instruct ORDER BY instructYear DESC";
	ResultSet rs = smt.executeQuery(sql);
	rs.last(); //�N���в��̫ܳ�@�����
	int last = rs.getRow(); //���o�`��Ƶ���
	int lastno, lastpage, nowpage, prepage, nextpage, nostart, noend;
	int CounterStart=0,CounterEnd=0;
	lastno = rs.getRow();
	lastpage = (int)Math.ceil((double)lastno/5);//�p��̫�@���s��
	if(request.getParameter("page") == null){
		nowpage = 1;
	}
	if(request.getParameter("page") != null)
		try{
			nowpage = Integer.parseInt(request.getParameter("page"));
		}catch(Exception e){
			nowpage = Integer.parseInt(request.getParameter("p"));
		}
	else nowpage = 1;
	
	prepage = nowpage-1; //�W�@��
	nextpage = nowpage+1; //�U�@��
	if(nowpage == 1) //�P�_�O�_���Ĥ@��
		prepage=1;
	if(nowpage == lastpage) //�P�_�O�_���̫�@��
		nextpage=lastpage;
	
	nostart = nowpage * 5 -4;  //�p��}�l�s��
	noend = nowpage * 5;  //�p�⵲���s��
	
	sql = "SELECT * FROM instruct WHERE ID BETWEEN "+nostart+" AND "+noend+" ORDER BY instructYear DESC";
	rs = smt.executeQuery(sql);
	%>
  <section class="w3l-aboutblock py-5" id="about">
    <div class="midd-w3">
      <div class="container py-lg-5 py-md-3">
        <div class="row">
          <div class="col-lg-12 mt-lg-0 mt-5 about-right-faq align-self">
            <span class="text text-center mb-2">�פ�P�M�D���� <%=nowpage%>/<%=lastpage%></span>
            <ol class="w3l-right">
            <% int num=0;
         		while(rs.next()){%>
            	<li><%=rs.getString("instruct") %></li>
            <% num++;}%>
            </ol>
		    <form action="instruct.jsp" method="get">
				<table class="table">
				<tr>
				<td class="pagination"><a href="instruct.jsp?page=1">&laquo;</a></td>
				<td class="pagination"><a href="instruct.jsp?page=<%=prepage%>">&lt;</a></td>
				<td class="pagination"><a href="instruct.jsp?page=1" <%if (nowpage == 1) out.println("class='active'"); %>>1</a></td>
				<%int c=1;
				while (lastpage>c){
					c++;%>
				<td class="pagination"><a href="instruct.jsp?page=<% out.println(c);%>"<%if (nowpage == c) out.println("class='active'"); %>><% out.println(c);%></a></td><%} %>
				<td class="pagination"><a href="instruct.jsp?page=<%=nextpage%>">&gt;</a></td>
				<td class="pagination"><a href="instruct.jsp?page=<%=lastpage%>">&raquo;</a></td>
				</tr>
				</table>
			</form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //Header -->
  
  <!-- //footer -->
  <!-- copyright -->
  <section class="w3l-footer-29-main w3l-copyright">
    <div class="container">
      <div class="row bottom-copies">
        <p class="col-lg-8 copy-footer-29">All rights reserved. Design by LeeLab.</a></p>
        <div class="col-lg-4 main-social-footer-29">
          <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
          <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
          <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
          <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
        </div>
      </div>
    </div>
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">��</button>
    <script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function() {
        scrollFunction()
      };
      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("movetop").style.display = "block";
        } else {
          document.getElementById("movetop").style.display = "none";
        }
      }
      // When the user clicks on the button, scroll to the top of the document
      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>
    <!-- /move top -->
  </section>
</body>
</html>