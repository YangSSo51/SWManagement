<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>위험 관리</title>
</head>
<body>
<header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	위험 관리
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="../navbar.jsp"%>
        <div class="right-container">
            <form class="center_form">
              <select class="select" name="">
                <option value="자산명">자산명</option>
                <option value="버전">버전</option>
              </select>
              <input type="search" name="" value="" placeholder="">
              <button type="button" name="button">검색</button>
            </form>
              <table class="list" style="margin-top:50px;">
                <tr>
                  <th style="width:30px;">id</th>
                  <th>자산명</th>
                  <th>위험관리보고서</th>
                  <th>점검일자</th>
                  <th>점검주기</th>
                </tr>
              <c:set var="i" value="0"/>
              <c:forEach items="${vo}" var="vo">
                <tr>
                  <td style="width:30px;"><c:out value="${i+1}"/></td>
                  <td><c:out value="${asset_name[i].asset_name }"/></td>
                  <td><c:out value="${vo.version}"/></td>
                  <td><c:out value="${vo.date}"/></td>
                  <td><c:out value="${vo.cycle}"/></td>
                </tr>
                <c:set var="i" value="${i+1 }"/>
                </c:forEach>
                
              </table>
        </div>
        <div class="button_group" style="width:1350px;">
          <a href="<c:url value="/risk/manage"/>"><button class="button" style="width:80px;">위험관리</button></a>
        </div>
  </body>

</html>