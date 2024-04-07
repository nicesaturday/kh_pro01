<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
<%@ include file="/head.jsp" %>
</head>
<body>
<div id="contents">

	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
		<div class="logo_wrap" style="display: flex; padding-bottom: 15px;">
       			<a href="/pro01"><img src="${ipath }/img/favicon.png" style"width=50px; height="50px"" alt="suyu"/></a>
       			<h3 class="page_title">공지사항 글 수정</h3>
  		</div>
			
			<form action="${ipath }/notice_edit" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th style="background-color: #A4A4A4"><label for="no">글 번호</label></th>
							<td>
								<input type="text" name="id" id="no" class="form-control" maxlength="100" value="${data.id }" readonly>
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100" value="${data.title }" required>
							</td>
						</tr>
						<tr>
							<th style="background-color: #6E6E6E"><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control">${data.content }</textarea>
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="resdate">작성일시</label></th>
							<td>
								<input type="text" name="resdate" id="resdate" class="form-control" value="${data.resdate }" disabled>
							</td>
						</tr>
						<tr>
							<th style="background-color: #A4A4A4"><label for="visited">읽은횟수</label></th>
							<td>
								<input type="text" name="visited" id="visited" class="form-control" value="${data.visited }" disabled>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<button type="submit" class="btn btn-primary">글 수정</button>
			</form>
			<div class="btn-group">
				  <a href="${ipath }/notilist" class="btn btn-secondary">글목록</a>				  
			</div>
		</div>
	</section>	
</div>
</body>
</html>