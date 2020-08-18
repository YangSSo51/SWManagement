<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
    <title>sw���� ���α׷�</title>
	<link rel="stylesheet" href="<c:url value="/resources/reset.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/main.css"/>">
</head>
    <div class="wrap">
        <section>
          <nav>
          <div class="dropdown">
            <button class="dropdown-title">�ڻ����</button>
              <div class="dropdown-content">
                <a href="<c:url value="/asset_perchase/"/>">�ڻ� ����</a>
                <a href="<c:url value="/common_code/"/>">���� �ڵ� ����</a>
                <a href="<c:url value="/common_code_detail/"/>">���� �ڵ� ����(��)</a>
              </div>
          </div>
          <div class="dropdown">
            <button class="dropdown-title">���Ἲ ���� </button>
              <div class="dropdown-content">
               <a href="<c:url value="/asset_integ/"/>">�ڻ� ���Ἲ ���</a>
               <a href="<c:url value="/integ_keep/"/>">���Ἲ ���� ����</a>
             </div>
          </div>
          <div class="dropdown">
            <button class="dropdown-title" >���� ���� </button>
            <div class="dropdown-content">
                <a href="<c:url value="/config_keep/"/>">���� ����</a>
               <a href="<c:url value="/vul_check/"/>">����� �����׸�</a>
               <a href="<c:url value="/risk_manage/"/>">���� ����</a>
           </div>
          </div>
          <div class="dropdown">
            <button class="dropdown-title">�Խ���</button>
            <div class="dropdown-content">
              <a href="#">�����ڿ��� ����</a>
             <a href="#">FAQ</a>
           </div>
          </div>
          </nav><!-- nav -->
        </section>
        </div>	<!-- wrap -->
</html>