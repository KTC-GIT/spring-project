<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div style="text-align:center;">
  	<h2>금주의 인기게임</h2>
  </div>
<!-- Automatic Slideshow Images -->
  <div class="w3-left arrow left" style="vertical-align:center;">
  	<div><img src="${contextpath}/resources/icon/left_arrow.png" style="width:50px;"/></div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="${contextpath}/resources/gameImg/darksoul.jpg" style="width:40%;height:300px;">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="${contextpath}/resources/gameImg/iceborne.jpg" style="width:40%;height:300px;">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="${contextpath}/resources/gameImg/xcom-2-cover.jpg" style="width:40%;height:300px;">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    </div>
  </div>
  <div class="w3-right arrow right" style="vertical-align:center;">
  	<div><img src="${contextpath}/resources/icon/right_arrow.png" style="width:50px;"/></div>
  </div>
  <script>
	// Automatic Slideshow - change image every 4 seconds
	var myIndex = 0;
	carousel();
	
	function carousel() {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";  
	  }
	  myIndex++;
	  if (myIndex > x.length) {myIndex = 1}    
	  x[myIndex-1].style.display = "block";  
	  setTimeout(carousel, 4000);    
	}
	
	</script>
</body>
</html>