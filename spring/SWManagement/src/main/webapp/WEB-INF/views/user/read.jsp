<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>읽기</title>
</head>
<body>
	<table>
	<tr>
		<th>이름</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
       <c:forEach items="${user}" var="user">
       		<tr>
       		<td><c:out value="${user.name}"/></td>
       		<td><a href="<c:url value="/user/update?id=${user.id}"/>"><button type="button">수정</button></a></td>
       		<td><a href="<c:url value="/user/delete?id=${user.id}"/>"><button type="button">삭제</button></a></td>
            </tr>
       </c:forEach>
     </table>
</body>
</html>