<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	<%@ include file="navbar.jsp"%>
          <div class="right-container">
            <table class="detail-list">
              <tr>
                <td class="detail-title">버전명</td>
                <td>발전소경보계통_2020_1</td>
                <td class="detail-title">점검자</td>
                <td class="small-td">양소영</td>
              </tr>
              <tr>
                <td class="detail-title">점검연도</td>
                <td>2020</td>
                <td class="detail-title">점검일자</td>
                <td class="small-td">08-28</td>
              </tr>
              <tr>
                <td class="detail-title">점검분기</td>
                <td id="right">3분기</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검설비</td>
                <td id="right">발전소경보계통</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검내용</td>
                <td id="right">해당 자산은 8월 28일 진행한 무결성 유지 점검에서 무결성 정보 유치중 상태를 받았음</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검결과</td>
                <td id="right">적합</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
            </table>
            <div class="button_group" style="width:1100px;">
                <button type="button" id="modal_open_btn">삭제</button>
                <button type="button" id="modal_open_btn">수정</button>
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