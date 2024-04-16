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
<div id="wrapper">
	<table class="table">
					<tbody>
						<tr>
							<th style="background-color: #6E6E6E"><label for="name">이름</label></th>
							<td>
								<input name="name" id="name" class="form-control" value="${sname }" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="email">이메일</label></th>
							<td>
								<input type="text" name="email" id="email" class="form-control" maxlength="100"  readonly="readonly" value="${semail }">
							</td>
						</tr>
						
					</tbody>
				</table>
				<hr>


  <hr>
   <div class="btn-group">
  	 <a href="${hpath }/user_edit" class="btn btn-warning">회원 정보 수정</a>
     <a href="${hpath }/user_out_self?id=${sid }" class="btn btn-danger">회원 탈퇴</a>
   </div>
   </div>
  <%@ include file="/footer.jsp" %>
</body>
</html>