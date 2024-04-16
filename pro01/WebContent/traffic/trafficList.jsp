<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수유 교통 정보 안내</title>
<%@ include file="/head.jsp" %>
<%
  String[] numberArr = {"#collapseOne","#collapseTwo","#collapseThree","#collapseFour","#collapseFive"};

  String[] numberArr2 = {"collapseOne","collapseTwo","collapseThree","collapseFour","collapseFive"};
  request.setAttribute("arr2", numberArr);
  request.setAttribute("arr3", numberArr2);
%>
</head>
<body>

   <%@ include file="/header.jsp" %>

   
   <div id="wrapper">
   <hr>
    <hr>
    <hr>
   <div id="card_header" style="display: flex; flex-direction: column; align-items: center">
   		<h5>수유동 주변 교통편 카드</h5>
    	<h2>카드를 눌러서 확인해보세요!!</h2>
    </div>
    <hr>
    <hr>
    <hr>
    <hr>
   <div class="accordion" id="accordionExample">
   
   <c:forEach var="data" items="${arr }" varStatus="status">
   
  <div class="accordion-item">
    <h2 class="accordion-header">
    <c:if test="${data.num.length() eq 3}">
      <button style="background-color: #40A9FF; color: #030303; font-size:30px; font-weight: bold; " class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="${arr2[status.index] }" aria-expanded="true" aria-controls="${arr3[status.index] }">
        ${data.num }
      </button>
      </c:if>
      <c:if test="${data.num.length() ne 3}">
      <button style="background-color: #50FF9F; color: #030303; font-size:30px; font-weight: bold; " class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="${arr2[status.index] }" aria-expanded="true" aria-controls="${arr3[status.index] }">
        ${data.num }
      </button>
      </c:if>
    </h2>
    <div id=${arr3[status.index] } class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      
      
      <table class="table">
					<tbody>
						<tr>
							<th style="background-color: #6E6E6E"><label for="content">버스 번호</label></th>
							<td>
								<input name="id" id="id" class="form-control" value="${data.num }" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th style="background-color: #848484"><label for="title">설명</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100"  readonly="readonly" value="${data.comment }">
							</td>
						</tr>
						<tr>
							<th style="background-color: #A4A4A4"><label for="content">경로</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control" readonly="readonly">${data.route }</textarea>
							</td>
						</tr>
						<tr>
							<th style="background-color: #6E6E6E"><label for="content">지도</label></th>
							<td>
							   <a href="${data.uri }" target="_blank" >버스 지도</a>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>

      </div>
    </div>
  </div>
  
  </c:forEach>
  
 
  
</div>
   </div>
   <%@ include file="/footer.jsp" %>
</body>
</html>