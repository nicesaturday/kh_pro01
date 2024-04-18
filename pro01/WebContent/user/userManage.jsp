<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>

<%@ include file="/head.jsp" %>
 <script>
   function onClickCount(f) {
	 const checkBoxs = document.getElementsByName("id");
	 if(f.checked == true){
	 function c(data) {
		 data.checked = false;
	 }
	 checkBoxs.forEach(c);
	 f.checked = true;
	 $("#ubtn").attr('disabled',false);
	 } else {
		 function c(data) {
			 data.checked = false;
		 }
		 checkBoxs.forEach(c);
		 f.checked = false;
		 $("#ubtn").attr('disabled',true);
	 }
 }
</script>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="wrapper">
  <h2>유저 관리</h2>
  <form method="get" action="${hpath }/user_out_self?">
  <c:if test="${not empty arr }">
   <table class="table table-striped">
    <thead>
          <tr class="table-light">
            <th></th>
            <th>Id</th>
            <th>이메일</th>
            <th>이름</th>
            <th>생성일</th>
          </tr>
    </thead>
    <tbody>
       <c:forEach var="data" items="${arr }" varStatus="status">
          <tr class="table-light">
            <td>
              <input onclick="onClickCount(this)" type="checkbox" name="id" id="id${status.count }" value="${data.id }">
              ${status.count }
            </td>
            <td class="table-light">${data.id }</td>
            <td class="table-light">${data.email }</td>
            <td class="table-light">${data.name }</td>
            <td class="table-light">${data.resdate }</td>
          </tr>
       </c:forEach>
    </tbody>
   </table>
   </c:if>
   <c:if test="${arr.size() eq 1}">
   <h2>유저가 존재하지 않습니다.</h2>
   </c:if>
   <button disabled="true" id="ubtn" type="submit" class="btn btn-danger" style="color: #ffff;" >회원 삭제</button>
</form>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>