<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>생성</title>
</head>
<body>
   <section>
      <h2 class="text-center">회원 생성</h2>
      <form class="login-form" name=form1 action="<c:url value="/user/add"/>" method="post">
        <div class="form-text">
          name
        </div>
        <input class="form-input" type="text" name="name" value="${user.name }">
        <div class="form-text">
          Password
        </div>
        <input class="form-input" type="password" name="passwd" value="${user.passwd}">
        <a href="#"><button class="button" type="submit" name="button">생성</button></a>
      </form>
  </section>
</body>
</html>