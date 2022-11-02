<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head><title>設定session資料</title></head>
<body>
<%
session.setAttribute("idvalue", "郭書瑜");
session.setAttribute("sex", "大學部女同學");
session.setAttribute("hobby", "打球");
Object id=session.getAttribute("idvalue");
Object sex=session.getAttribute("sex");
Object hobby=session.getAttribute("hobby");
if(id!=null){
	out.println("姓名："+id.toString()+"<br>");
	out.println("性別："+sex.toString()+"<br>");
	out.println("興趣："+hobby.toString()+"<br>");
}else{
	out.println("無session資料");
}
%>
<a href="sessionGet.jsp">顯示已設定之session資料內容</a>
</body>
</html>