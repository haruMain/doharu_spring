<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
</head>
<body>

<p><a href="/board/list">목록</a></p>

<br><br>

<table>
	<thead>
		<tr>
			<th>제목</th>
  			<th>내용</th>
  			<th>날짜</th>
		</tr>
	</thead>
	
	<tbody>
	 	<c:forEach items="${list}" var="list">
		<tr>
  			<td>${list.contentTitle}</td>	
  			<td>${list.contents}</td>	
  			<td>${list.insDt}</td>	
  		</tr>
		</c:forEach> 
		
	</tbody>
</table>

</body>
</html>
