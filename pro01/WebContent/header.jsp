<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="hpath" value="<%=request.getContextPath() %>"/> <!-- 최상위 패스(고정패스) -->
<script src="${hpath }/js/jquery-3.2.1.min.js"></script>
<script src="${hpath }/js/popper.min.js"></script>
<script src="https://kit.fontawesome.com/47a3dbe8b6.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${hpath }/css/menu.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script>
    function onClickUserManage() {
    	location.href="${hpath }/user_manage";
    }
    function onClickUserInfo() {
    	location.href="${hpath }/user_info?id=${semail }";
    }
    function onClickLogin() {
    	location.href="${hpath }/user_login";
    }
    function onClickLogOut() {
    	location.href="${hpath }/user_logout";
    }
    
   </script>
<header style="margin-bottom: 20px;">
  
 
   
 
    <nav class="navBar">
       <div class="navBar_logo">
              <a href="/pro01"><img src="${hpath }/img/suyufavi.png" style="width:50px; height:50px" alt="suyu"/></a>
             <div style=" font-family: Gugi, sans-serif; font-weight: 400; font-style: normal; font-size: 30px;"><a href="/pro01">강북구 수유동</a></div>
       </div>

       
       <div class="navBar_menu">
          <li><a href="">수유 소개</a>
            <ul class="navBar_menu_son">
            	<li>인구수</li>
            	<li>오시는 길</li>
            	<li>역사</li>
            	<li>위치적 장점</li>
            </ul>
          </li>
          <li><a href="">교통 및 상권</a>
            <ul class="navBar_menu_son">
                <li><a href="${hpath }/trafficlist">교통편</a></li>
            	<li>주변 맛집</li>
            	<li>주변 상권</li>
            	<li>주요 시설</li>
            </ul>
          </li>
          <li><a href="">행사</a>
          	<ul class="navBar_menu_son">
          		<li>크리스마스 행사</li>
            	<li>419 축제</li>
            	<li>빨래골 축제</li>
            	<li>우이천 축제</li>
            	<li>고려대 행진 축제</li>
          	</ul>	
          </li>
          <li><a href="${hpath }/notilist">공지사항</a></li>
          <li><a href="${hpath }/qnalist">QnA</a></li>
          
       </div>
       
       
       <ul class="navBar_icons">
       	<li><i class="fa-brands fa-x-twitter"></i></li>
       	<li><i class="fa-brands fa-instagram"></i></li>
       </ul>
       
       
    </nav>
    
 
          
 
 
 
 
 
 
 
 
 
 <%--   <nav id="tnb">
       <div class="btn-group" role="group" aria-label="Basic outlined example">
          <c:if test="${empty sname}" >         
            <button type="button" class="btn btn-outline-primary" onclick="onClickLogin()">로그인</button>
          </c:if>
          <c:if test="${not empty sname}" >
          <h2>어서오세요 ${sname }</h2>
            <button type="button" class="btn btn-outline-primary" onclick="onClickLogOut()">로그 아웃</button>
          <c:choose>
            <c:when test="${semail.equals('admin') }"><button type="button" class="btn btn-outline-primary" onclick="onClickUserManage()">회원 관리</button></c:when>
            <c:otherwise><button type="button" class="btn btn-outline-primary" onclick="onClickUserInfo()">회원 정보</button></c:otherwise>
          </c:choose>
          </c:if>
       </div>  
    </nav>
   </div>
   <nav id="gnb" style="width: 100%;" >
      <ul class="main_menu" style="list-style-type: none; display: flex; justify-content: space-around; width: auto">
        <li><a href="">수유 소개</a>
          <ul>
            <li>인구수</li>
            <li>오시는 길</li>
            <li>역사</li>
            <li>위치적 장점</li>
          </ul>
        </li>
        <li><a href="">교통 및 상권</a>
          <ul>
            <li><a href="${hpath }/trafficlist">교통편</a></li>
            <li>주변 맛집</li>
            <li>주변 상권</li>
            <li>주요 시설</li>
          </ul>
        </li>
        <li><a href="">행사</a>
          <ul>
            <li>크리스마스 행사</li>
            <li>419 축제</li>
            <li>빨래골 축제</li>
            <li>우이천 축제</li>
            <li>고려대 행진 축제</li>
          </ul>
        </li>
         <li><a href="${hpath }/notilist">공지사항</a></li>
         <li><a href="${hpath }/qnalist">QnA</a></li>
      </ul>   
   </nav>  --%>
   
   
   
   
   
   
   
   
</header>