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
   <table>
    <thead>
          <tr>
            <th>id</th>
            <th>title</th>
            <th>content</th>
            <th>resdate</th>
            <th>visited</th>
          </tr>
    </thead>
    <tbody>
       <c:forEach var="data" items="${arr }">
          <tr>
            <td>${data.id }</td>
            <td><a href="${hpath }/notice_one?id=${data.id }">${data.title }</a></td>
            <td>${data.content }</td>
            <td>${data.resdate }</td>
            <td>${data.visited }</td>            
          </tr>
       </c:forEach>
    </tbody>
   </table>
   
   <c:if test="${not empty error}">
     <div>
       <h2>${error }</h2>
     </div>
   </c:if>
   
   <button type="button" class="btn btn-info" style="color: #0000;"><a href="${ipath}/notice_upload" >글작성</a></button>
</body>
</html>