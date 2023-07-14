<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200&display=swap" rel="stylesheet">
  <link href="/css/board.css" rel="stylesheet" type="text/css">
  <link rel="shortcut icon" type="image/x-icon" href="/resources/images/heart.png">
  <title>Insert title here</title>
  <script>
     function onSelect() {
      const searchWord = $("#searchWord").val();
      const searchValue = "searchWord:" + searchWord;
      $.ajax({
        type: "GET",
        dataType: "json",
        url: "/board/main",
        data: {
          "searchValue": searchValue,
        },
        success: function(response) {
          console.log(response);
        },
        error: function(xhr, status, error) {
          console.error(error);
        }
      });
    }  
  </script>
</head>
<body>
  <div id="nav"><%@ include file="../include/header.jsp" %></div>
  <div id="nav"><%@ include file="../include/nav.jsp" %></div>
  <table>
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>날짜</th>
      </tr>
    </thead>
    <li class="wLabel"><label class="req">검색어</label></li>
    <li class="w200"><input id="searchWord" style="width: 150px;" title="검색어"/></li>
    <p>
      <a href="javascript:void(0);" onclick="onSelect();">조회</a>
    </p>
    
    <tbody>
      <c:out value="총  ${count}건" ></c:out>
      <c:forEach items="${list}" var="list">
        <tr>
          <td>${list.seq}</td>  
          <td>
            <a href="/board/view?seq=${list.seq}">${list.title}</a>                  
          </td>  
          <td>${list.insDt}</td>  
        </tr>
      </c:forEach>   
    </tbody>
  </table>

  <div>
    <c:forEach begin="1" end="${pageNum}" var="num">
      <span>
        <a href="/board/listPage?num=${num}">${num}</a>
      </span>
    </c:forEach>
  </div>
</body>
</html>