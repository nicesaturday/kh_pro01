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

   <form action="${ipath }/notice_upload" method="post" style="margin-top: 150px;">
  <div class="form-group container">
    <label for="exampleFormControlInput1" style="text-align: center; width: 100%">Title</label>
    <input type="title" name="title" class="form-control"placeholder="title" max="100" required="required">
  </div>
 
  <div class="form-group container">
    <label for="exampleFormControlTextarea1" style="text-align: center; width: 100%">Content</label>
    <textarea class="form-control" name="content" placeholder="content" rows="3" required="required"></textarea>
  </div>
  <div class="form-group container">
  <button class="btn btn-primary form-control container" type="submit">등록</button>
  </div>
</form>
<c:if test="${not empty error }">
  <div>
     <h2>${error }</h2>
  </div>
</c:if>

</body>
</html>