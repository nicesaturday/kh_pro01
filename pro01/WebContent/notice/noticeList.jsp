<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>

<%@ include file="/head.jsp" %>
</head>
<body>
<%@ include file="/header.jsp" %>
  <h2>공지사항</h2>
   <table class="table table-striped">
    <thead>
          <tr class="table-light">
            <th>id</th>
            <th>title</th>
            <th>content</th>
            <th>resdate</th>
            <th>visited</th>
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
   
   <button type="button" class="btn btn-info" style="color: #0000;"><a href="${hpath }/notice_upload" >글작성</a></button> 
</body>
</html>