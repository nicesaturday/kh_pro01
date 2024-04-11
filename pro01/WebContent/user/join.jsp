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
    <label for="email" style="text-align: center; width: 100%">이메일</label>
    <input type="email" id="email" name="email" class="form-control"placeholder="이메일" max="100" required="required">
    <button class="btn btn-primary form-control container" onclick="onEClick()" type="submit" style="width: 20%"; id="e-btn">이메일 중복 확인</button>
  </div>
  
  <div class="form-group container">
    <label for="name" style="text-align: center; width: 100%">이름</label>
    <input class="form-control" id="name" name="name" placeholder="이름" max="100" required="required">
  </div>
  
 
  <div class="form-group container">
    <label for="pw" style="text-align: center; width: 100%">비밀번호</label>
    <input class="form-control" id="pw" name="pw" placeholder="비밀번호" max="100" r required="required">
  </div>
 
  
  
  <div class="form-group container">
    <label for="pw2" style="text-align: center; width: 100%">비밀번호 확인</label>
    <input class="form-control" id="pw2" name="pw2" placeholder="비밀번호 확인" max="100" required="required">
  </div>
 
  <div class="form-group container">
   <button class="btn btn-primary form-control container" type="submit">가입</button>
  </div>
</form>
<c:if test="${not empty error }">
  <div>
     <h2 style="color: red">${error }</h2>
  </div>
</c:if>
<script>
  function onEClick() {
	  if($("#email").val() = ""){
		  alret("이메일을 입력하세요.");
		  $("#email").focus();
		  return;
	  }
	  
	  let params = {email : $("#email").val()};
	  $.ajax({
		  url:"${hpath}/user_join_email_check",
		  type:"post",
		  dataType:"JSON",
		  data:params,
		  success:function (data){
			  let idCk = data.result;
			  if(!idCk) {
				  $("#e-btn").css("backgroundColor","#00FF00");
				  $("#e-btn").off("click");
				  $("#e-btn").vaㅣ() = "아이디 사용 가능";
			  } else{
				  $("#e-btn").css("backgroundColor","#FF0000");
				  $("#e-btn").vaㅣ() = "이미 존재하는 이메일 입니다.";
				  return;
			  }
			  
		  }
	  });
  }
</script>

</body>
</html>