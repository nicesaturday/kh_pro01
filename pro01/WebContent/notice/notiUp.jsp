<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/head.jsp" %>
</head>
<body>

   <form action="${ipath }/notiupload" method="post" style="margin-top: 150px;">
  <div class="form-group container">
    <label for="exampleFormControlInput1" style="text-align: center; width: 100%">Title</label>
    <input type="email" name="title" class="form-control"placeholder="title">
  </div>
 
  <div class="form-group container">
    <label for="exampleFormControlTextarea1" style="text-align: center; width: 100%">Content</label>
    <textarea class="form-control" name="content" placeholder="content" rows="3"></textarea>
  </div>
  <div class="form-group container">
  <button class="btn btn-primary form-control container" type="submit">등록</button>
  </div>
</form>
</body>
</html>