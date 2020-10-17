<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body>
	
   <section>
      <h2 class="text-center">Login</h2>
      <form class="login-form" name=form1 action="<c:url value="/user/login"/>" method="post">
        <div class="form-text">
          name
        </div>
        <input class="form-input" type="text" name="name" placeholder="이름">
        <div class="form-text">
          Password
        </div>
        <input class="form-input" type="password" name="passwd" placeholder="비밀번호">
        <a href="#"><button class="button" type="submit" name="button">LOGIN</button></a>
      </form>
  </section>
	
</body>

</html>