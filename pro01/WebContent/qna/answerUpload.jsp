<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변 하기</title>
<%@ include file="/head.jsp" %>
</head>
<body>
<%@ include file="/header.jsp" %>
  <form action="${ipath }/answer_upload" method="post" >
  
  <div class="mb-3">
    <label for="title" class="form-label">Title</label>
    <input type="text" class="form-control" id="title" name="title">
  </div>
  
  <div class="mb-3">
    <label for="content" class="form-label">Content</label>
    <textarea type="textarea" class="form-control" id="content" name="content"></textarea>
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" value="${semail }" readonly="readonly" >
  </div>
  
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Parid</label>
    <input type="text" class="form-control" name="parid" id="exampleInputEmail1" aria-describedby="emailHelp" value="${parid }" readonly="readonly" >
  </div>
  
  <button id="btn" type="submit" class="btn btn-primary" >등록</button>
  </form>
</body>
</html>