<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 정보 수정</title>
<%@ include file="/head.jsp" %>
  <script>
  function onSubmit(f) {
	  if(f.pw1.value != f.pw2.value){
		  alert("비밀번호가 일치하지 않습니다.");
		  $("#pw2").css("backgroundColor","#FF0000");
		  return false;
	  }
  }
  </script>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="wrapper">
  	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
		<div class="logo_wrap" style="display: flex; padding-bottom: 15px;">
		 <h2>회원 정보 수정</h2>
		 </div>
			<form action="${hpath }/user_edit" method="post" onsubmit="return onSubmit(this)">
				<table class="table">
					<tbody>
						
						<tr>
							<th style="background-color: #848484"><label for="email">이메일</label></th>
							<td>
							
    							<input type="email" class="form-control" name="email" id="email" value="${semail }" readonly="readonly" >
							</td>
						</tr>
						<tr>
							<th style="background-color: #6E6E6E"><label for="pw1">비밀번호</label></th>
							<td>
								 
   								 <input type="password" class="form-control" id="pw1" value="${spw }" name="pw">
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="pw2">비밀번호 확인</label></th>
							<td>
	
    								<input type="password" class="form-control" id="pw2" value="${spw }" >
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="name">이름</label></th>
							<td>
      								<input type="name" class="form-control" id="name" value="${sname }" name="name" >
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<button id="btn" type="submit" class="btn btn-primary" >변경</button>
			</form>
  		</div>
	</section>	
  </div>
  <%@ include file="/footer.jsp" %>
</body>
</html>