<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자산무결성 관리</title>
    <style>
    td a{
    	text-decoration:underline;
    	color:blue;
    }
    </style>
</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	무결성 유지 점검
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
	<%@ include file="../navbar.jsp"%>
          <div class="right-container">
            <table class="detail-list">
              <tr>
                <td class="detail-title">버전명</td>
                <td>${vo.version }</td>
                <td class="detail-title">점검자</td>
                <td class="small-td">${vo.person }</td>
              </tr>
              <tr>
                <td class="detail-title">점검연도</td>
                <td>${vo.year }</td>
                <td class="detail-title">점검일자</td>
                <td class="small-td">${vo.date }</td>
              </tr>
              <tr>
                <td class="detail-title">점검분기</td>
                <td id="right">${vo.cycle }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검설비</td>
                <td id="right">${asset_name.asset_name }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검내용</td>
                <td id="right">${vo.content }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검결과</td>
                <td id="right">${vo.result }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
            </table>
            <div class="button_group" style="width:1100px;">
                <a href="<c:url value="/integ/delete/${vo.integ_id}"/>"><button type="submit">삭제</button></a>
                <a href="<c:url value="/integ/update/${vo.integ_id}"/>"><button type="submit" id="modal_open_btn">수정</button></a>
            </div>
            </div><!--right-container-->
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal1").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal1").attr("style", "display:none");
      });
      function modal(x,y){
            $("#modal"+x).attr("style", "display:none");
            $("#modal"+y).attr("style", "display:block");
      }
  </script>

</html>