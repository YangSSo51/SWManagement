<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="/resources/image/envm.png" href=""> <!-- 탭 아이콘 들어감 -->
<title>로그인</title>

<!-- Custom styles for this template -->
<link href= "<c:url value="/resources/signin.css" />" rel="stylesheet">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>

 
	<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {

			var user_id = $("#user_id").val();
			var password = $("password").val();

			if(user_id == "") {
				alert("아이디를 입력하세요");
				$("#password").focus();
				return;
				}
			document.loginform.action="${path}/eunji/login" 
			document.loginform.submit();	
			});
		});

	
	</script>


	<div class="container login-container">
	       <div class="row">
	          <div class="col-md-8 login-form-1">
	           <form>    
             
	             <img src="<c:url value="/resources/envm.png" />" width="400" height="400"/>

	                      
	           </form>
	          </div>
	          
	          <!-- 로그인 창 --> 
	          <div class="col-md-4 login-form-2">
	            <h3>Login</h3>
	            <form class = "login-form" name=loginform action="<c:url value="/login"/>" method="post">
	              <div class="form-group">
	                <input type="text" name="user_id" class="form-control" placeholder="Username" />
	              </div>
	              <div class="form-group">
	                <input type="password" name="password" class="form-control" placeholder="Password" />
	              </div>
	              <div class="form-group">
	                <input type="submit" id="btnLogin" class="btnSubmit" value="Login" />	                
	              </div>
	              <!--  
	              <p>${member.user_id }님 안녕하세요.</p>
	              -->
	              
	              <c:if test = "${msg == false}">
	              	<div style="color:red">
	              		아이디 또는 비번이 일치하지 않음
	              	</div>
	              </c:if>

	              
	              <div class="form-group">
	                <a href="#" class="ForgetPwd" >Forgot Password?</a>
	              </div>
	              
	              <div class="form-group">
	                <a href="<c:url value="/join"/>" class="ForgetPwd" >Join</a>
	              </div>
	              
	            </form>
	           </div>
	        </div>
	</div>

</body>
</html>