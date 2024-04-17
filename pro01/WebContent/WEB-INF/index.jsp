<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp"%>


</head>
<body>


<div id="header">
   <%@ include file="/header.jsp" %>
</div>
<div id="wrapper" style="display: flex; width: 100%; justify-content: center">
 







<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="width:100%; max-width: 900px; " >
  <div class="carousel-inner" style="display: flex; width: 100%">
    <div class="carousel-item active">
      <img src="${hpath }/img/419.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${hpath }/img/akademyhouse.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${hpath }/img/BBalfes.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${hpath }/img/bukhansan.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${hpath }/img/suyu_library.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${hpath }/img/suyumukja.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${hpath }/img/uicheanfes.jpeg" class="d-block w-100" alt="...">
    </div>
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>





















</div>
   <%@ include file="/footer.jsp" %>
</body>
</html>