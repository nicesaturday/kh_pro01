<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<c:set var="path0" value="<%=request.getContextPath() %>"/> 
<%@ include file="/head.jsp"%>
</head>
<body>
<h1>메인 페이지</h1>

<h2>${name }</h2>
<h2>${realPath }</h2>
<img src="${sa}" alt="hg"/>
<button type="button" class="btn btn-outline-primary">Primary</button>
<h2><%=request.getContextPath() %></h2>
<div id="header">
   <%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container" style="width: 1200px;">
   <h2>콘텐츠 영역</h2>
   <section class="row justify-content-center" style="width: 100%;">
    <h2 class="col-4">제작자 : ${name }</h2>
   </section>
   <%@ include file="/contents.jsp" %>
   <section class="row">
    <h2 class="col" style="background-color: #afdd;">${hpath }</h2>
    <h2 class="col" style="background-color: #afbb;">${hpath }</h2>
    <h2 class="col" style="background-color: #bdda;">${hpath }</h2>
   </section>
</div>
<div id="footer">
   <%@ include file="/footer.jsp" %>
</div>
</body>
</html>