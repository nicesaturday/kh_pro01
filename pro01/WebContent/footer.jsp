<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="fpath" value="<%=request.getContextPath() %>" />
<hr>    
<footer>
		<nav id="fnb" style="margin-top: 5px">
			<ul>
				<li><a href="${fpath }/user_terms">회원약관</a></li>
				<li><a href="${fpath }/user_policy">개인정보처리방침</a></li>
			</ul>
		</nav>
		<div id="loc" style="margin-left: 20px; ">
			<select name="sel" id="sel" onchange="locate()">
				<option value="">해당 관광서</option>
				<option value="https://www.gangbuk.go.kr/www/index.do">강북구청</option>
				<option value="https://www.gangbuk.go.kr/suyu1/index.do">수유1동 주민센터</option>
				<option value="https://smpa.go.kr/home/homeIndex.do?menuCode=gb">강북 경찰서</option>
			</select>
		</div>
		<script>
		function locate(){
			var sel = document.getElementById("sel");
			if(sel.value!=""){
				window.open(sel.value);
			}
		}
		</script>
		<br><br>
		<div id="copyright" style="color: #EFEFFB; margin-left: 20px;">
			<p class="addr">서울특별시 강북구 수유동 소개, 대표전화 : 02-2627-2114(120 다산콜센터로연결)</p>
			<p class="copy">COPYRIGHT(C) SEOUL SUYU INTRO. ALL RIGHTS RESERVED.</p>
		</div>
</footer>
