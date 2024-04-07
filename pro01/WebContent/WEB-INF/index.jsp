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


<div id="header">
   <%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container" style="width: 1200px;">
   <h2>콘텐츠 영역</h2>

   <%@ include file="/contents.jsp" %>
   <div>
     <img src="${hpath }/img/hwaguesa.jpg">
   </div>
</div>
<div id="footer">
   <%@ include file="/footer.jsp" %>
</div>
</body>
</html>