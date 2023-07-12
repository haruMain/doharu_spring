<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>게시물 수정</title>
 <script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

	    $(document).ready(function() {
		    CKEDITOR.replace('content', { language: 'ko', filebrowserUploadUrl:'/file/imageUpload' });
		}); 


</script>
</head>
<body>
<div id="nav"><%@ include file="../include/nav.jsp" %></div>
<h1>CKEditor</h1>
<form id="actionForm" name ="actionForm" method="post">
    <div>
        <dl>
            <dt>제목</dt>
            <dd>
                <input type="text" name="title" id="title" title="제목" value="${list.title}"/> 
            </dd>
            <dt>내용</dt>
            <dd>
                <textarea id="content" name="content" title="내용" value="${list.content}">${list.content}</textarea>
            </dd>
        </dl>
       <button type="submit" name ="submit">완료</button>
    </div>
</form>
</body>
</html>