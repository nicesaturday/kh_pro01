<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="hpath" value="<%=request.getContextPath() %>"/> <!-- 최상위 패스(고정패스) -->
<header>
   <div class="logo_wrap">
       <a href="/pro01"><img src="${hpath }/img/favicon.png" alt="suyu"/></a>
   </div>
   <nav id="tnb">
       <ul>
          <c:if test="${empty sid}" >
          <li><a href="${hpath }/member">로그인</a></li>
          </c:if>
          <c:if test="${not empty sid}" >
          <li><a href="${hpath }/member">로그 아웃</a></li>
          <li><a href="${hpath }/member">회원 정보</a></li>
          </c:if>
          <c:if test="${sid.equals('admin')}" >
          <li><a href="${hpath }/member">관리자 로그인</a></li>
          </c:if>
       </ul>
   </nav>
   <nav id="gnb">
      <ul class="main_menu">
        <li><a href="">커뮤니티</a></li>
        <ul>
         <li><a href="${hpath }/notilist">공지사항</a></li>
         <li></li>
        </ul>
      </ul>   
   </nav>
</header>