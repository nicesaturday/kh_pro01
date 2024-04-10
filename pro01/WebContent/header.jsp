<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="hpath" value="<%=request.getContextPath() %>"/> <!-- 최상위 패스(고정패스) -->
<header>
   <div class="logo_wrap">
       <a href="/pro01"><img src="${hpath }/img/favicon.png" style"width=50px; height="50px"" alt="suyu"/></a>
   </div>
   <nav id="tnb">
       <ul>
          <c:if test="${empty sname}" >
          <li><a href="${hpath }/user_login">로그인</a></li>
          </c:if>
          <c:if test="${not empty sname}" >
          <li><a href="${hpath }/user_logout">로그 아웃</a></li>
          <li><a href="${hpath }/user">회원 정보</a></li>
          <h2>어서오세요 ${sname }</h2>
          </c:if>
          <c:if test="${sid.equals('admin')}" >
          <li><a href="${hpath }/user">관리자 로그인</a></li>
          </c:if>
       </ul>
   </nav>
   <nav id="gnb" style="width: 100%; ">
      <ul class="main_menu" style="list-style-type: none; display: flex; justify-content: space-around;">
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
            <li>교통편</li>
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
      </ul>   
   </nav>
</header>
