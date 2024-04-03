<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/head.jsp"%>
</head>
<body>
<h1>메인 페이지</h1>

<h2>${name }</h2>
<h2>${realPath }</h2>
<img src="${sa}" alt="hg"/>
<button type="button" class="btn btn-outline-primary">Primary</button>
<h2><%=request.getContextPath() %></h2>
<div id="header">
   <%@ include file="/header.jsp" %>
</div>
<div id="contents">
   <%@ include file="/contents.jsp" %>
</div>
<div id="footer">
   <%@ include file="/footer.jsp" %>
</div>

</body>
</html>