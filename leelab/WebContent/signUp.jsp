<%@page contentType="text/html"%>
<%@page pageEncoding="MS950"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="BIG5">
	<link rel="icon" type="image/png" href="assets/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
			<form class="login100-form validate-form flex-sb flex-w" action="signUp_DBInsertInto.jsp">
			<span class="login100-form-title p-b-53">
				���U
				<%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
					if(request.getParameter("status").equals("IDexist")){ %>
					<p><font color="red">�b���w�s�b�A�еn�J�έ��s���U!</font></p>
				<%}else{}%> 
    					<p>�ж�g��ƥH�إ߱b��</p><%}%>
			</span>   
			<div class="p-t-31 p-b-9">
				<span class="txt1">�b��</span>
			</div>
			<div class="wrap-input100 validate-input" data-validate="�п�J�b��">
				<input class="input100" type="text" name="memberId" required >
				<span class="focus-input100"></span>
			</div>
			<div class="p-t-31 p-b-9">
				<span class="txt1">�K�X</span>
			</div>
			<div class="wrap-input100 validate-input" data-validate = "�п�J�K�X">
				<input class="input100" type="password" name="memberPwd"  required>
				<span class="focus-input100"></span>
			</div>
			<div class="container-login100-form-btn m-t-17">
				<button class="login100-form-btn">���U</button>
			</div>
			</form>
			</div>
		</div>
	</div>
	<script src="assets/vendor/animsition/js/animsition.min.js"></script>
	<script src="assets/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/select2/select2.min.js"></script>
	<script src="assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="assets/vendor/countdowntime/countdowntime.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>