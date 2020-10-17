<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="login">
	<c:if test="${user.user_id != null}">
	 ${user.user_id}
	</c:if>
	<c:if test="${user.user_id == null}">
	  모르는사람 
	</c:if>          
</div>