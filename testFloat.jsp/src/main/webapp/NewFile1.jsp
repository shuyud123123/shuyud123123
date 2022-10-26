<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
  int a=3;  //宣告二個整數變數
  float c=78f, b;  //宣告一個浮點變數
  b=c+a; //不需要轉換資料型態 因為b是浮點數，它放得下a也放得下c
  out.println("b="+b); //輸出b=81.0;
  
  int d;
  d=(int)c+a;  //將c轉換為整數型態，若不轉換則會出現錯誤
  //d=c+a;  //將c轉換為整數型態，若不轉換則會出現錯誤
            //d是整數，它放不下c 因此這邊會出錯
  out.println("d="+d); //輸出b=81;
  
  int f= 10 ;
	out.println(" 變數 f=10 <BR>");
	
	if (f>10 | f==10){
		out.println("變數f=10 或是(|) f>10 的條件式成立!");
		out.println("<BR>");
	}
	out.println("運算結束");
%>


</body>
</html>

