<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ipath" value="<%=request.getContextPath() %>"/> <!-- 최상위 패스(고정패스) -->
<script src="${ipath }/js/bootstrap.min.js"></script>
<script src="${ipath }/js/jquery-3.2.1.min.js"></script>
<script src="${ipath }/js/popper.min.js"></script>
<link rel="stylesheet" href="${ipath }/css/bootstrap.min.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="subject" content="수유역  소개">
<meta name="description" content="수유동 , 419 , 우이천 , 수유시장 ">
<meta name="keyword" content="수유동 , 419 , 우이천 , 수유시장">
<link rel="icon" href="${ipath }/img/favicon.png" />
<link rel="shortcut" href="${ipath }/img/favicon.png" />
<meta property="og:url" content="">
<meta property="og:title" content="suyu">
<meta property="og:description" content="수유동 , 419 , 우이천 , 수유시장">
<meta property="og:type" content="website">
<meta property="og:image" content="${ipath }/img/favicon.png">
<style>
  #gnb {
      	font:bold 16px "malgun gothic";
		width:700px;
		height:50px;
		background: #ccc;
		color:black;
		line-height: 50px; 
		margin:0 auto;
		text-align: center; 
  }
  
  #gnb > ul > li {
        float:left;
		width:140px;
		position:relative;
  }
  
  #gnb > ul > li > ul {
		width:130px;
		display:none;
		position: absolute;
		font-size:14px;
		background: skyblue;
	}
  #gnb > ul > li:hover > ul {
		display:block;
  }
  
  #gnb > ul > li > ul > li:hover {
		background: orange;
		transition: ease 1s;
		}
		

	
</style>