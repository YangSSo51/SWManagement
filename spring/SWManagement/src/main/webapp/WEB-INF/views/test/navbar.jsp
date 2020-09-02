<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
    <title>sw관리 프로그램</title>
	<link rel="stylesheet" href="<c:url value="/resources/reset.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/main.css"/>">
</head>
    <div class="wrap">
        <section>
          <nav>
          <div class="dropdown">
            <button class="dropdown-title">자산관리</button>
              <div class="dropdown-content">
                <a href="<c:url value="/asset/perchase/desc"/>">자산 구매</a>
                <a href="<c:url value="/common/code/"/>">공통 코드 관리</a>
              </div>
          </div>
          <div class="dropdown">
            <button class="dropdown-title">무결성 관리 </button>
              <div class="dropdown-content">
               <a href="<c:url value="/asset/integ/2"/>">자산 무결성 등록</a>
               <a href="<c:url value="/integ/keep/"/>">무결성 유지 점검</a>
               <a href="<c:url value="/config/keep/"/>">형상 관리</a>
             </div>
          </div>
          <div class="dropdown">
            <button class="dropdown-title" >위험 관리 </button>
            <div class="dropdown-content">
               <a href="<c:url value="/vul/check/"/>">취약점 점검항목</a>
               <a href="<c:url value="/risk/read/"/>">위험 관리</a>
           </div>
          </div>
          <div class="dropdown">
            <button class="dropdown-title">게시판</button>
            <div class="dropdown-content">
              <a href="#">개발자에게 문의</a>
             <a href="#">FAQ</a>
           </div>
          </div>
          </nav><!-- nav -->
        </section>
        </div>	<!-- wrap -->
</html>