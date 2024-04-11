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

	<div class="card text-bg-light mb-3" style="max-width: 18rem;">
  <div class="card-header">당신의 이메일 ${semail }</div>
  <div class="card-body">
    <h5 class="card-title">어서 오세요</h5>
    <p class="card-text">수유 사이트 유저 카드</p>
  </div>
  </div>


   <h2></h2>
   <div class="btn-group">
  	 <a href="${hpath }/user_edit" class="btn btn-warning">회원 정보 수정</a>
     <a href="${hpath }/user_out_self?id=${sid }" class="btn btn-danger">회원 탈퇴</a>
   </div>
</body>
</html>