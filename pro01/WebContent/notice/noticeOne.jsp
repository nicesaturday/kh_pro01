<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수유 - 게시판 ${data.id }</title>
<%@ include file="/head.jsp" %>
<script>
  function onClick1(){
	  location.href="${ipath }/notilist";
  }
  function onClick2(){
	  location.href="${ipath }/delete_notice_one?id=${data.id }";
  }
  function onClick3(){
	  location.href="${ipath }/notice_edit?id=${data.id }";
  }
  
</script>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="wrapper">
   <div class="row">
     <div class="col">id</div>
     <div>${data.id }</div>
     <div class="col">title</div>
     <div>${data.title }</div>
     <div class="col">content</div>
     <div>${data.content }</div>
   </div>
   <div class="btn-group" role="group" aria-label="Basic example">
     <button type="button" class="btn btn-info" style="color: #ffff;" onclick="onClick1()">글목록</button>
   <c:if test="${semail eq 'admin' }">
     <button type="button" class="btn btn-danger" style="color: #ffff;" onclick="onClick2()">글 삭제</button>

     <button type="button" class="btn btn-warning" style="color: #ffff;" onclick="onClick3()">글수정</button>
   </c:if>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>