<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>switch 敘述</title>
</head>
<body>
	<%
	char intweek = '2';
	switch (intweek){
	case '1':
		out.println("intweek目前的數值代表 星期一");
		break;
	case '2':
		out.println("intweek目前的數值代表 星期二");
		break;
	case '3':
		out.println("intweek目前的數值代表 星期三");
		break;
	case '4':
		out.println("intweek目前的數值代表 星期四");
		break;
	case '5':
		out.println("intweek目前的數值代表 星期五");
		break;
	case '6':
		out.println("intweek目前的數值代表 星期六");
		break;
	case '7':
		out.println("intweek目前的數值代表 星期日");
		break;
	default:
		out.println("尚未定義數值");
		break;
	}
	%>
</body>
</html>