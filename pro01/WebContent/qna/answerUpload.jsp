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
<div id="wrapper">
  <form action="${ipath }/answer_upload" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th style="background-color: #848484"><label for="title">제목</label></th>
							<td>
								 <input type="text" class="form-control" id="title" name="title" required="required">
							</td>
						</tr>
						<tr>
							<th style="background-color: #6E6E6E"><label for="content">내용</label></th>
							<td>
								  <textarea type="textarea" class="form-control" id="content" name="content" required="required"></textarea>
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="email">이메일</label></th>
							<td>
								<input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" value="${semail }" readonly="readonly" >
							</td>
						</tr>
						<tr>
							<th style="background-color: #A4A4A4"><label for="parid">PARID</label></th>
							<td>
								  <input type="text" class="form-control" name="parid" id="exampleInputEmail1" aria-describedby="emailHelp" value="${parid }" readonly="readonly" >
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<button type="submit" class="btn btn-primary">글 수정</button>
			</form>
  
  

  </div>
<%@ include file="/footer.jsp" %>
  
</body>
</html>