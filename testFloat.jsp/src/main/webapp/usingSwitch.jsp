<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>switch �ԭz</title>
</head>
<body>
	<%
	char intweek = '2';
	switch (intweek){
	case '1':
		out.println("intweek�ثe���ƭȥN�� �P���@");
		break;
	case '2':
		out.println("intweek�ثe���ƭȥN�� �P���G");
		break;
	case '3':
		out.println("intweek�ثe���ƭȥN�� �P���T");
		break;
	case '4':
		out.println("intweek�ثe���ƭȥN�� �P���|");
		break;
	case '5':
		out.println("intweek�ثe���ƭȥN�� �P����");
		break;
	case '6':
		out.println("intweek�ثe���ƭȥN�� �P����");
		break;
	case '7':
		out.println("intweek�ثe���ƭȥN�� �P����");
		break;
	default:
		out.println("�|���w�q�ƭ�");
		break;
	}
	%>
</body>
</html>