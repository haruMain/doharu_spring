<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
  <style>
    .slider {
      position: relative;
      overflow: hidden;
      width: 400px;
      height: 200px;
    }
  
    .slider img {
      width: 100%;
      height: auto;
      display: none;
    }
  
    .slider img.active {
      display: block;
    }
  
    .slider-nav {
      position: absolute;
      bottom: 10px;
      left: 50%;
      transform: translateX(-50%);
      display: flex;
    }
  
    .slider-nav button {
      background-color: transparent;
      border: none;
      padding: 5px;
      margin: 0 5px;
      cursor: pointer;
    }
  </style>
<script>
  window.addEventListener('DOMContentLoaded', function() {
    var slider = document.querySelector('.slider');
    var sliderImages = document.querySelectorAll('.slider img');
    var imageWidth = sliderImages[0].width;
    var currentTranslate = 0;
    var slideInterval;

    function showImage() {
      slider.style.transition = 'transform 0.3s ease-in-out';
      slider.style.transform = `translateX(-${currentTranslate}px)`;
    }

    function startSlide() {
      slideInterval = setInterval(function() {
        currentTranslate += imageWidth;
        showImage();
      }, 2000); // 2초마다 다음 이미지로 자동 슬라이드
    }

    function stopSlide() {
      clearInterval(slideInterval);
    }

    slider.addEventListener('transitionend', function() {
      if (currentTranslate >= imageWidth * (sliderImages.length - 1)) {
        currentTranslate = 0;
        slider.style.transition = 'none';
        showImage();
      }
    });

    startSlide();

    slider.addEventListener('mouseenter', stopSlide);
    slider.addEventListener('mouseleave', startSlide);
  });
</script>

</head>
<body>

<p><a href="/board/list">목록</a></p>

<div class="slider">
  <img src="../resources/images/사과.jpg" alt="Image 1" class="active">
  <img src="../resources/images/캡처2.jpg" alt="Image 2">
  <img src="../resources/images/캡처3.jpg" alt="Image 3">
  <img src="../resources/images/사과.jpg" alt="Image 1">
  
  <div class="slider-nav">
    <button class="prev-button">Previous</button>
    <button class="next-button">Next</button>
  </div>
</div>
<br><br>

	


	
	<c:forEach items="${list}" var="list">
<%--  <tr>
  <td>${list.num}</td> <br>
  <td>${list.title}</td>	<br>
  <td>${list.content}</td>	<br>
 </tr> --%>
</c:forEach>
</body>
</html>
