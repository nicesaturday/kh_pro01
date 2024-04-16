<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수유 - 게시판 ${data.id }</title>
<%@ include file="/head.jsp" %>
<script>
  function onClick1(){
	  location.href="${ipath }/notilist";
  }
  function onClick2(){
	  location.href="${ipath }/delete_notice_one?id=${data.id }";
  }
  function onClick3(){
	  location.href="${ipath }/notice_edit?id=${data.id }";
  }
  
</script>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="wrapper">



   <table class="table">
					<tbody>
						<tr>
							<th style="background-color: #6E6E6E"><label for="content">id</label></th>
							<td>
								<input name="id" id="id" class="form-control" value="${data.id }" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100"  readonly="readonly" value="${data.title }">
							</td>
						</tr>
						<tr>
							<th style="background-color: #A4A4A4"><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control" readonly="readonly">${data.content }</textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
   
   
   
   
   <div class="btn-group" role="group" aria-label="Basic example">
     <button type="button" class="btn btn-info" style="color: #ffff;" onclick="onClick1()">글목록</button>
   <c:if test="${semail eq 'admin' }">
     <button type="button" class="btn btn-danger" style="color: #ffff;" onclick="onClick2()">글 삭제</button>

     <button type="button" class="btn btn-warning" style="color: #ffff;" onclick="onClick3()">글수정</button>
   </c:if>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>