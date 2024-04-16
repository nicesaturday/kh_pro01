<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna</title>
<%@ include file="/head.jsp" %>
  <script>
  function onClick1() {
	  location.href="${ipath }/question_delete?parid=${data.parid }";
	  return;
  }
  function onClickAns() {
	  location.href="${ipath }/answer_upload?parid=${data.parid }";
	  return;
  }
  function onClick3() {
	  location.href="${ipath }/answer_delete?id=${data.id }";
	  return;
  }
  
</script>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="wrapper">
 <div style="display: flex; width: 100%; justify-content: center;">
   <div class="card text-bg-success mb-3" style="max-width: 18rem; width: 100%;">
  <div class="card-header">${data.title }</div>
  <div class="card-body">
    <p class="card-text">${data.content }</p>
  </div>
</div>
</div>
  <c:if test="${data.aemail ne 'admin' and data.aemail eq semail }">
 <button type="button" class="btn btn-danger" style="color: #ffff;" onclick="onClick()">삭제하기</button>
  </c:if>
  <c:if test="${semail eq 'admin' }">
  <c:if test="${data.pLevel eq 2 }">
  <button type="button" class="btn btn-warning" style="color: #ffff;" onclick="onClick3()">답변  삭제하기</button>
  </c:if>
  <c:if test="${data.pLevel eq 1 }">
  <button type="button" class="btn btn-danger" style="color: #ffff;" onclick="onClick()">관리자 권한 삭제하기</button>
  <button type="button" class="btn btn-info" style="color: #ffff;" onclick="onClickAns()">답변 해주기</button>
  </c:if>
  </c:if>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>