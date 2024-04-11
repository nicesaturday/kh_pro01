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
<%@ include file="/header.jsp" %>
  <form action="${hpath }/user_login" method="post" style="margin-top: 150px;">
  <div class="form-group container">
    <label for="title" style="text-align: center; width: 100%">이메일</label>
    <input type="title" id="title" name="email" class="form-control"placeholder="이메일" max="100" required="required" value="${email }">
  </div>
 
  <div class="form-group container">
    <label for="content" style="text-align: center; width: 100%">비밀번호</label>
    <textarea class="form-control" id="content" name="pw" placeholder="비밀번호" rows="3" required="required"></textarea>
  </div>
  <div class="form-group container">
  
  
  <button class="btn btn-primary form-control container" type="submit">로그인</button>
  <hr>
  <button class="btn btn-info form-control container" type="button" id="join" onclick="onClick()">회원 가입</button>
  <script>
    const a = document.getElementById("join");
    
    function onClick() {
    	location.href="/pro01/user_join_check";
    }
    
  </script>
  </div>
</form>
<c:if test="${not empty error }">
  <div>
     <h2 style="color: red">${error }</h2>
  </div>
</c:if>

</body>
</html>