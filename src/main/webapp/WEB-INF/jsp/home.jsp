<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200&display=swap" rel="stylesheet">
	<link rel="shortcut icon" type="image/x-icon" href="resources/images/heart.png">
	<link href="/css/board.css" rel="stylesheet">
	<title>Home</title>
</head>
<body>
<div class="contents">
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<p><a href="/board/listPage">게시물 목록</a></p>
<p><a href="/board/write">글쓰기</a></p>

<c:if test="${member == null }">
<form role="form" method="post" autocomplete="off" action="/member/login">
	 <p>
	  	<label for="userId" id="userId" title="아이디"></label>
	  	<input type="text" id="userId" name="userId" placeholder="아이디"/>
	 </p>
	 <p>
	  	<label for="userPass" id="userPass"title="비밀번호"></label>
	  	<input type="password" id="userPass" name="userPass" placeholder="비밀번호"/>
	 </p>
	 <p><button type="submit">로그인</button></p>
	 <p><a href="/member/register">회원가입</a></p>
</form>
</c:if>

<c:if test="${msg == false}">
	<p>로그인 실패</p>
</c:if>

<c:if test="${member != null }">
	<p>${member.userName}님 환영합니다.</p>
	<a href="member/logout"></a>
</c:if>


	<!-- <p><img src="resources/images/사과.jpg"/></p> -->
</div>
</body>
</html>

