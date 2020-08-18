<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>형상관리</title>
</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	공통코드 관리(상세코드 등록)
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
          <div class="right-container">
            <form class="center_form">
              <select class="select" name="">
                <option value="상세코드">상세코드</option>
              </select>
              <input type="search" name="" value="" placeholder="검색어 입력">
              <button type="button" name="button">검색</button>
            </form>
            <table class="list">
              <tr>
                <th style="width:30px;">id</th>
                <th>대표코드</th>
                <th>대표코드맵</th>
                <th>상세코드</th>
                <th>상세코드맵</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>A001</td>
                <td>자산</td>
                <td>A001_1</td>
                <td>제어봉구동장치</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>A001</td>
                <td>자산</td>
                <td>A001_2</td>
                <td>터빈계통PLC</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>B001</td>
                <td>기술 보안항목</td>
                <td>B001_1</td>
                <td>계정관리</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>B001</td>
                <td>기술 보안항목</td>
                <td>B001_2</td>
                <td>접근통제</td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">등록</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="small_modal_content">
                  <div class="modal_title">
                    상세코드 등록
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>대표코드</span>
                  </p>
                  <div style="margin-left:20px;">
                    <select class="" name="">
                      <option value="">A001</option>
                    </select>
                  </div>
                  <p>
                    <span>대표코드명</span>
                  </p>
                    <input type="text" placeholder="자산"></input>
                  <p>
                    <span>상세코드</span>
                  </p>
                    <input type="text" placeholder=""></input>
                  <p>
                    <span>상세코드명</span>
                  </p>
                    <input type="text" placeholder=""></input>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">취소</button>
                      <button type="button" id="submit">등록</button>
                    </div>
                  </form>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
        </section>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
  </script>
  
</html>