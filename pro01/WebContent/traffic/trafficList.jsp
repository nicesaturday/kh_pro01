<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수유 교통 정보 안내</title>
<%@ include file="/head.jsp" %>
<%
  String[] numberArr = {"#collapseOne","#collapseTwo"};

  String[] numberArr2 = {"collapseOne","collapseTwo"};
  request.setAttribute("arr2", numberArr);
  request.setAttribute("arr3", numberArr2);
%>
</head>
<body>

   <%@ include file="/header.jsp" %>

   
   <div id="wrapper">
   <div class="accordion" id="accordionExample">
   
   <c:forEach var="data" items="${arr }" varStatus="status">
   
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="${arr2[status.index] }" aria-expanded="true" aria-controls="${arr3[status.index] }">
        ${data.num }
      </button>
    </h2>
    <div id=${arr3[status.index] } class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
         <strong>버스 번호  : ${data.num }</strong>
         <h2>버스 설명 : ${data.comment }</h2>
         <h1>버스 노선 : ${data.route }</h1>
         <a href="${data.uri }" target="_blank" >버스 지도</a>
      
      </div>
    </div>
  </div>
  
  </c:forEach>
  
 
  
</div>
   </div>
   <%@ include file="/footer.jsp" %>
</body>
</html>