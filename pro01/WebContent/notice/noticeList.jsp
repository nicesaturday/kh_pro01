<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<script>
   function onClick(){
	   location.href="${ipath }/notice_upload"
   }
   </script>
</head>
<body>
<%@ include file="/header.jsp" %>

   <div id="wrapper">
    <h2>공지사항</h2>
   <table class="table table-striped">
    <thead>
          <tr class="table-light">
            <th>id</th>
            <th>제목</th>
            <th>내용</th>
            <th>작성 일</th>
            <th>방문 날짜</th>
          </tr>
    </thead>
    <tbody>
       <c:forEach var="data" items="${arr }">
          <tr class="table-light">
            <td class="table-light">${data.id }</td>
            <td class="table-light"><a href="${hpath }/notice_one?id=${data.id }">${data.title }</a></td>
            <td class="table-light">${data.content }</td>
            <td class="table-light">${data.resdate }</td>
            <td class="table-light">${data.visited }</td>            
          </tr>
       </c:forEach>
    </tbody>
   </table>
   
   <c:if test="${not empty error}">
     <div>
       <h2>${error }</h2>
     </div>
   </c:if>
   <c:if test="${semail eq 'admin' }">
     <button type="button" class="btn btn-info" style="color: #ffff;" onclick="onClick()">글작성</button>
     </c:if>
</div>
   <%@ include file="/footer.jsp" %>
</body>
</html>