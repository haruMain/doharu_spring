<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200&display=swap" rel="stylesheet">
	<link href="/css/board.css" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/images/heart.png">
	
<title>페이징 목록</title>
</head>
<body>
<%-- <div id="nav"><%@ include file="../include/nav.jsp" %></div> --%>
<div id="nav"><%@ include file="../include/header.jsp" %></div>
<div class="contents">
	<div class="totalCount">
	<c:out value="총  ${count}건" ></c:out>
	</div>
	<table>
	<thead>
		<tr>
			<th>bno</th>
			<th>번호</th>
			<th>제목</th>
  			<th>날짜</th>
		</tr>
	</thead>
	
	<tbody>
	 	<c:forEach items="${list}" var="list" varStatus="status">
		<tr>
  			<td>${status.index + 1 + (pageNum - 1) * postNum}</td>
  			<td>${list.seq}</td>	
  			<td>
				<a href="/board/view?seq=${list.seq}">${list.title}</a>  				
  			</td>	
  			<td>${list.insDt}</td>	
  		</tr>
		</c:forEach> 
		
	</tbody>
</table>

<!-- 페이지네이션 -->
<%-- <div class="pagination">
    <c:if test="${prev}">
        <a href="/board/listPage?num=${startPageNum - 1}">이전</a>
    </c:if>
    <c:forEach begin="${startPageNum}" end="${endPageNum}" var="pageNum">
        <c:choose>
            <c:when test="${pageNum == select}">
                <span class="current">${pageNum}</span>
            </c:when>
            <c:otherwise>
                <a href="/board/listPage?num=${pageNum}">${pageNum}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:if test="${next}">
        <a href="/board/listPage?num=${endPageNum + 1}">다음</a>
    </c:if>
</div> --%>

<div class="page_nav">
<c:if test="${page.prev}">
 <span>[ <a href="/board/listPage?num=${page.startPageNum - 1}">이전</a> ] </span>
</c:if>

<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
 
  <c:if test="${select != num}">
   <a href="/board/listPage?num=${num}">${num}</a>
  </c:if>    
  
  <c:if test="${select == num}">
   <b style="font-weight: bold;">${num}</b>
  </c:if>
</c:forEach>

<c:if test="${page.next}">
 <span>[ <a href="/board/listPage?num=${page.endPageNum + 1}">다음</a> ] </span>
</c:if>

</div>
</div>
</body>
</html>