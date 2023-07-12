<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
 	<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script> 
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200&display=swap" rel="stylesheet">
	<link href="/css/board.css" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/images/cute.gif">
<title>CKEditor</title>
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
    $("#actionForm").submit(function(event) {
      var titleValue = $("#title").val().trim();

      if (titleValue === "") {
        alert("제목을 입력하세요.");
        event.preventDefault();
      }
    });
  });

	

/*  function fn_save() {
     var title = $("#title").val(); 
     var content = CKEDITOR.instances.content.getData();
     
     var form = $('#actionForm')[0];
     var formData = new FormData(form); 
     
    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/board/save',
        processData : false,
		contentType : false,
		data : 
			 formData, 
			
        success: function(data) {
            alert("글 등록이 완료되었습니다.");
            location.href = "redirect:/board/main";
        },
        error: function(data) {
            alert("실패");
            console.log(data);
            
        }
    });
} 	 */

	    $(document).ready(function() {
		    CKEDITOR.replace('content', { language: 'ko', filebrowserUploadUrl:'/file/imageUpload' });
		}); 

</script>
</head>
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script> -->
<body>
<div id="nav"><%@ include file="../include/header.jsp" %></div>
<div id="nav"><%@ include file="../include/nav.jsp" %></div>
<div class="contents">
<h1>CKEditor</h1>
<%-- <c:if test="${msg != 'login_error'}"> --%>
<form id="actionForm" name ="actionForm" method="post">
    <div>
        <dl>
            <dt>제목</dt>
            <dd>
                <input type="text" name="title" id="title" title="제목"/> 
            </dd>
            <dt>첨부파일</dt>
            <dd>
            	<input type="file" title="파일첨부" multiple>
            	<div id="comFileList" title="첨부한 파일" style="display:inline;"></div>
            </dd>
            <dt>내용</dt>
            <dd>
                <textarea id="content" name="content" title="내용"></textarea>
            </dd>
            <dt>작성자</dt>
            <dd>
            	<input type="text" id="writer" name="writer" value="${member.userName }" readonly="readonly">
            </dd>
        </dl>
       <button type="submit" name ="submit">작성</button>
       <!--  <button type="button" onclick="fn_save()">작성</button>   -->
    </div>
</form>
<%-- </c:if> --%>

<%-- <c:if test="${msg == 'login_error'}"><p>로그인해</p></c:if> --%>
</div>
</body>
</html>