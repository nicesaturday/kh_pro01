<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 하기</title>
<%@ include file="/head.jsp" %>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="wrapper">
  <form action="${hpath }/qna_upload" method="post">
				<table class="table">
					<tbody>
						
						<tr>
							<th style="background-color: #848484"><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100"  required>
							</td>
						</tr>
						<tr>
							<th style="background-color: #6E6E6E"><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control"></textarea>
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="content">이메일</label></th>
							<td>
								<input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" value="${semail }" readonly="readonly" >
							</td>
						</tr>	
					</tbody>
				</table>
				<hr>
				<button type="submit" class="btn btn-primary">글 등록</button>
			</form>
  
  
  
  </div>
  <%@ include file="/footer.jsp" %>
</body>
</html>