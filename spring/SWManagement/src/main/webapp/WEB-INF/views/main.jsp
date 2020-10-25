<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>형상관리</title>
<style>
body{
	background-color:black;
}
img.infinite_rotating_logo{
    animation: rotate_image 20s linear infinite;
    transform-origin: 50% 50%;
}
 
@keyframes rotate_image{
	100% {
    	transform: rotate(360deg);
    }
}
</style>
</head>
<body>
<div class="logo-area">
	<img src="<c:url value="/resources/images/main.png"/>" class="infinite_rotating_logo">
	<a href='http://m.site.naver.com/0GiHA'><img src='https://qrcodethumb-phinf.pstatic.net/20201019_214/1603040101585Sv2A0_PNG/0GiHA.png'/></a>
</div>
</body>

  
</html>