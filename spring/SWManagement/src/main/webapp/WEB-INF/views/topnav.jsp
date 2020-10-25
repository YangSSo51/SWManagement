<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="login">
	<c:if test="${user.user_id != null}">
	<input type = "button" value = "로그아웃" onclick="location.href='/web/logout'"></input>
	 ${user.user_id}
	 </c:if>
	
	<c:if test="${user.user_id == null}">
	  <a href="<c:url value="/login"/>">로그인</a>
	</c:if>          
</div>