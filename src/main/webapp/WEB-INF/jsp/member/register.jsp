<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="resources/images/heart.png">
<title>Insert title here</title>
</head>
<body>

<form role="form" method="post" autocomplete="off">
 <p>
  <label for="userId">아이디</label>
  <input type="text" id="userId" name="userId" />
 </p>  
 <p>
  <label for="userPass">패스워드</label>
  <input type="password" id="userPass" name="userPass" />
 </p>
 <p>
  <label for="userName">닉네임</label>
  <input type="text" id="userName" name="userName" />
 </p>
 <p>
   <button type="submit" id="submit" >가입</button>  
 </p>
 <p>
  <a href="/">처음으로</a>
 </p>
 
</form>

</body>
</html>