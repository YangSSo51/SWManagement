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
            	형상 관리
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
                <th>자산명</th>
                <th>작업 신청서</th>
                <th>등록일자</th>
                <th>수행일자</th>
                <th>승인여부</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>ServerWin7_1</td>
                <td><button type="button" class="detail-btn">상세보기</button></td>
                <td>2019-03-14</td>
                <td>2019-04-02</td>
                <td><i class="fa fa-check"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>PcWinXP_1</td>
                <td><button type="button" class="detail-btn">상세보기</button></td>
                <td>2019-09-26</td>
                <td>2019-07-07</td>
                <td><i class="fa fa-close"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>PLC_3</td>
                <td><button type="button" class="detail-btn">상세보기</button></td>
                <td>2019-11-15</td>
                <td>-</td>
                <td><i class="fa fa-check"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>ServerUnix_9</td>
                <td><button type="button" class="detail-btn">상세보기</button></td>
                <td>2020-01-04</td>
                <td>2020-03-31</td>
                <td><i class="fa fa-close" ></i></td>
              </tr>
              <tr>

            </table>

            <div class="button_group">
                <button type="button" id="modal_open_btn" style="width:80px;">작업 등록</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
                    작업 신청서
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>자산명</span>
                    <input type="text" placeholder="ServerWin7_1"></input>
                  </p>
                  <p>
                    <span>신청자</span>
                    <input type="text" placeholder="Hanium(사용자)"></input>
                  </p>
                  <p>
                    <span>신청일자</span>
                    <input type="text" placeholder="2020-03-31" style="width:165px;"></input>
                  </p>
                  <p>
                    <span>작업일자</span>
                    <input type="text" placeholder="2020-04-02" style="width:165px;"></input>
                  </p>
                  <p>
                    <span style="margin-right:15px;">작업 종류</span>
                    <select class="" name="">
                      <option value="">프로그램 업데이트</option>
                    </select>
                  </p>
                  <p></p>
                  <p><span>작업 내용</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="4" cols="35" placeholder="ServerWin7_1 내부 소프트웨어 업데이트 작업"></textarea>
                  </div>
                  <p><span>필요 기자재</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="2" cols="35" placeholder="자사 업데이트 파일"></textarea>
                  </div>
                  <p><span>메모</span></p>
                    <textarea name="name" rows="2" cols="35" placeholder="."></textarea>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="button" id="submit">수정</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
</body>
<script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
       $("#submit").click(function(){
           $("#modal").attr("style", "display:none");
       });
  </script>
</html>