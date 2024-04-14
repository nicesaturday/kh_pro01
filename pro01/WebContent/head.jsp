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
<link rel="stylesheet" href="${ipath }/css/base.css"/>
<style>
  li {
     list-style-type: none;
     float: left;
     width: 100%;
  }
  #gnb {
      	font:bold 16px "malgun gothic";
		width:100%;
		height:50px;
		background: #ccc;
		color:black;
		line-height: 50px; 
		clear:both;
		text-align: center; 
		z-index: 3;
		left:0px; 
  }
  
  #gnb > ul > li {
		width:100%;
		position:relative;
		z-index: 3;
		clear:both;
		float: left;
  }
  
  #gnb > ul > li > ul {
		width: 100%;
		display:none;
		left:0px; 
		position: absolute;
		font-size:14px;
		background: skyblue;
		clear:both;
	}
  #gnb > ul > li:hover > ul {
		display:block;
		width: 100%;
  }
  #gnb > ul > li > ul > li {
        width: 100%;
        list-style-type: none;
       
  }
  
  
  #gnb > ul > li > ul > li:hover {
        align-items: center;
        margin: 20px;
        left:0px; 
        width: 100%;
		background: orange;
		list-style-type: none;
		transition: ease 1s;
		}
		

	
</style>