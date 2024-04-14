<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 정보 수정</title>
<%@ include file="/head.jsp" %>
</head>
<body>
   <div class="logo_wrap">
       <a href="/pro01"><img src="${ipath }/img/favicon.png" style"width=50px; height="50px"" alt="suyu"/></a>
   </div>
  <form action="${ipath }/user_edit" method="post" onsubmit="return onSubmit(this)">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" value="${semail }" readonly="readonly" >
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="pw1" class="form-label">Password</label>
    <input type="password" class="form-control" id="pw1" value="${spw }" name="pw">
  </div>
  <div class="mb-3">
    <label for="pw2" class="form-label">Password Check</label>
    <input type="password" class="form-control" id="pw2" value="${spw }" >
  </div>
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="name" class="form-control" id="name" value="${sname }" name="name" >
  </div>
  
  <button id="btn" type="submit" class="btn btn-primary" >변경</button>
  </form>
  <script>
  function onSubmit(f) {
	  if(f.pw1.value != f.pw2.value){
		  alert("비밀번호가 일치하지 않습니다.");
		  $("#pw2").css("backgroundColor","#FF0000");
		  return false;
	  }
  }
  </script>
</body>
</html>