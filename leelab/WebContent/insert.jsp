<%@page contentType="text/html"%>
<%@page pageEncoding="MS950"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>�s�W�ǥ͸��</title>
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.container {
  padding: 16px;
}

span.memberpwd {
  float: right;
  padding-top: 16px;
}

</style>
<body>
<form action="insert_DB.jsp" style="border:1px solid #ccc">
  <div class="container">
    <h1>�s�W�ǥ͸��</h1>
    <hr>
    <label for="stuID"><b>�Ǹ�</b></label>
    <input type="text" placeholder="�Ǹ�" name="stuID" required>

    <label for="stuPersonName"><b>�m�W</b></label>
    <input type="text" placeholder="�m�W" name="stuPersonName" required>

  <label for="stuAddress"><b>�a�}</b></label>
    <input type="text" placeholder="�a�}" name="stuAddress" required>


    <div class="clearfix">
      <button type="submit" class="signupbtn">�s�W</button>
      <button type="reset" class="cancelbtn">����</button>
    </div>
  </div>
</form>
</body>
</html>