<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수유 - 게시판 ${data.id }</title>
<%@ include file="/head.jsp" %>
</head>
<body>
   <div class="row">
     <div class="col">id</div>
     <div>${data.id }</div>
     <div class="col">title</div>
     <div>${data.title }</div>
     <div class="col">content</div>
     <div>${data.content }</div>
   </div>
   
   <div class="btn-group" role="group" aria-label="Basic example">
  <a href="${ipath }/notilist" class="btn btn-secondary">글목록</a>
  <a href="${ipath }/delete_notice_one?id=${data.id }" class="btn btn-secondary">글 삭제</a>
  <a href="${ipath }/notice_edit?id=${data.id}" class="btn btn-secondary">글수정</a>
</div>
</body>
</html>