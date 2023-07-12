<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title> 게시물 조회</title>
<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="/css/board.css" rel="stylesheet" type="text/css">
<link href="/css/view.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" type="image/x-icon" href="/resources/images/heart.png">
<!--  <script type="text/javascript" src="./ckeditor/ckeditor.js"></script> -->
<style>
.ck-editor__editable { height: 400px; }
.ck-content { font-size: 12px; }
</style>
<script>

$(document).ready(function() {
    ClassicEditor.create(document.querySelector('#content'), { language: "ko" });

     $('#actionForm').submit(function(e) {
        e.preventDefault(); // 기본 제출 동작 방지

        var title = $('#title').val();
        var content = CKEDITOR.instances.content.getData(); // CKEditor의 내용 가져오기

        // Ajax 요청 보내기
        $.ajax({
            type: 'POST',
            url: '/board/write',
            data: {
                title: title,
                content: content
            },
            success: function(response) {
                // 요청이 성공한 경우에 대한 처리
                console.log(response); // 응답 데이터 로깅 또는 처리
                alert("작성성공");
            },
            error: function(xhr, status, error) {
                // 요청이 실패한 경우에 대한 처리
                console.error(error); // 에러 로깅 또는 처리
                alert("실패");
            }
        });
    }); 
});

</script>
</head>
<body>
<div id="nav"><%@ include file="../include/header.jsp" %></div>
<div class="contents">
<div id="nav"><%@ include file="../include/nav.jsp" %></div>
<h1>CKEditor</h1>
<form id="actionForm" name ="actionForm" method="post">
    <div>
        <dl>
            <!-- <dt>제목</dt> -->
                <div class="subject" title="제목">${list.title}</div>
                <div class="etc" title="작성일">${list.insDt}</div>
            	<div class="detail" title="내용">${list.content}</div>
        </dl>
    </div>
</form>
<div class="btn_con01">
	<div>
		<a href="/board/modify?seq=${list.seq}">수정</a>
	</div>
	<div>
		<a href="/board/delete?seq=${list.seq}">삭제</a>
	</div>
	<div>
		<a href="/board/listPage">목록</a>
	</div>
</div>
</div>
</body>
</html>