<!doctype html>
<html lang="ko">
  <head>
  <meta charset="utf-8">
    <title>CKEditor</title>
    <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
  </head>
  <style>
  .ck-editor__editable { height: 400px; }
  .ck-content { font-size: 12px; }
</style>
<script>


	function trans() {
		onValidation();
	}
	
	function onValidation() {
		
	}
	
</script>
  <body>
    <h1>CKEditor</h1>
    <form id="actionForm" name="actionForm" method="post">
      <textarea name="text" id="editor"></textarea>
      <div id="">
      	<span><a href="javascript:trans();">저장<span class="ok"></span></a></span>
      </div>
      
      </form>
    <script>
       ClassicEditor.create( document.querySelector( '#editor' ), {language: "ko"} ); 
    </script>
  </body>
</html>

