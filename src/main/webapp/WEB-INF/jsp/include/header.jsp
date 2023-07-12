<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
  $(document).ready(function() {
    $('div.menu_nav ul li a').click(function(e) {
      e.preventDefault(); 
      $(this).siblings('div').toggle(); 
    });
  });
</script> -->
    <style>
    .header{margin: 0 auto; width: 1280px; }
    </style>
<div class="header">
	<div class="top_area">
		<div class="logo">
		<a href="/home.jsp"><img src="/resources/images/cute.gif" style="height:46px;">DOHARU</a>
		</div>
		<div class="menu_nav">
		<ul>
			<li>
				<a href="">COMMUNITY</a>
				<div>
					<ul>
						<li><a href="/board/write">글작성</li>
						<li><a href="/board/listPage?num=1">글목록</li>
						<li><a href="home.jsp">메인화면</li>
					</ul>
				</div>
			</li>
		</ul>
		</div>
	</div>
</div>