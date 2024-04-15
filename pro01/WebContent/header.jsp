<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="hpath" value="<%=request.getContextPath() %>"/> <!-- 최상위 패스(고정패스) -->
<script src="${hpath }/js/jquery-3.2.1.min.js"></script>
<script src="${hpath }/js/popper.min.js"></script>
<style>
  li {
     list-style-type: none;
     float: left;
     width: 100%;
     min-width: 200px;
  }
  #gnb {
      	font:bold 16px "malgun gothic";
		min-width:1fr;
		height:50px;
		background: #ccc;
		color:black;
		line-height: 50px; 
		clear:both;
		text-align: center; 
		z-index: 3;
		left:0px;
		
  }
  
  #gnb > ul > li {
		width:auto;
		position:relative;
		z-index: 3;
		clear:both;
		float: left;
  }
  
  #gnb > ul > li > ul {
		width: 100%;
		display:none;
		left:0px; 
		position: absolute;
		font-size:14px;
		background: skyblue;
		clear:both;
	}
  #gnb > ul > li:hover > ul {
		display:block;
		width: 100%;
  }
  #gnb > ul > li > ul > li {
        width: 100%;
        list-style-type: none;
       
  }
  
  
  #gnb > ul > li > ul > li:hover {
        align-items: center;
        margin: 20px;
        left:0px; 
        width: 100%;
		background: orange;
		list-style-type: none;
		transition: ease 1s;
		}
  #topBar {
        display: flex;
        justify-content: space-between;
        margin-right: 20px;
  }
	
</style>
<header style="margin-bottom: 20px;">
  <div id="topBar">
   <div class="logo_wrap">
       <a href="/pro01"><img src="${hpath }/img/favicon.png" style"width=50px; height="50px"" alt="suyu"/></a>
   </div>
   <h2>강북구 수유동 </h2>
   <nav id="tnb">
       <div class="btn-group" role="group" aria-label="Basic outlined example">
          <c:if test="${empty sname}" >         
            <button type="button" class="btn btn-outline-primary"><a href="${hpath }/user_login">로그인</a></button>
          </c:if>
          <c:if test="${not empty sname}" >
          <h2>어서오세요 ${sname }</h2>
            <button type="button" class="btn btn-outline-primary"><a href="${hpath }/user_logout">로그 아웃</a></button>
          <c:choose>
            <c:when test="${semail.equals('admin') }"><button type="button" class="btn btn-outline-primary" onclick="onClick1()">회원 관리</button></c:when>
            <c:otherwise><button type="button" class="btn btn-outline-primary" onclick="onClick2()">회원 정보</button></c:otherwise>
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
   </nav>
   <script>
    function onClick1() {
    	location.href="${hpath }/user_manage";
    }
    function onClick2() {
    	location.href="${hpath }/user_info?id=${semail }";
    }
    
   </script> 
</header>