<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna 목록</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${ipath }/css/jquery.dataTables.css" >
<script>
 function onClick() {
	 location.href="${ipath }/qna_upload";
 }
 $(document).ready(function(){
		$("#tb1").DataTable({
			order:[[0,"desc"]]
		});
	});
</script>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="wrapper">
<table class="table" id="tb1">
<thead>
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>작성일</th>
    <th>조회수</th>
    <th>작성자</th>
  </tr>
</thead>
<tbody>
  <c:if test="${not empty arr }">
  <c:forEach var="data" items="${arr }" varStatus="status">
    <tr class="table-light">
            <td class="table-light">${status.index + 1}</td>
            <td class="table-light">
            <c:if test="${data.pLevel eq 1 }">
             <a href="${hpath }/q_one?id=${data.id }&aemail=${data.aemail }">${data.title }</a>
            </c:if>
            <c:if test="${data.pLevel eq 2 }">
             ┗ 답변 => <a href="${hpath }/q_one?id=${data.id }&aemail=${data.aemail }">${data.title }</a>
            </c:if>
            </td>
            <td class="table-light">${data.resDate }</td>
            <td class="table-light">${data.visited }</td>
            <td class="table-light">${data.aemail }</td>            
          </tr>
  </c:forEach>
  </c:if>
</tbody>
</table>
<c:if test="${empty arr }">
   <h2 align="center">질문이 없습니다</h2>
  </c:if>
  <c:if test="${not empty semail  and semail ne 'admin'}">
   <button type="button" class="btn btn-info" style="color: #ffff;" onclick="onClick()">질문 하기</button>
  </c:if>
  </div>
  <%@ include file="/footer.jsp" %>
</body>
</html>