<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
              <input type="search" name="" value="" placeholder="검색어 입력">
              <button type="button" name="button">검색</button>
            </form>
            <table class="list">
              <tr>
                <th style="width:30px;">id</th>
                <th>자산명</th>
                <th>작업 신청서</th>
                <th>신청일자</th>
                <th>승인여부</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>발전소경보계통</td>
                <td><button type="button" class="detail-btn">상세보기</button></td>
                <td>2019-02-24</td>
                <td><i class="fa fa-check"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>터빈제어설비</td>
                <td><button type="button" class="detail-btn">상세보기</button></td>
                <td>2020-08-28</td>
                <td><i class="fa fa-close"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>자동지진정지계통</td>
                <td><button type="button" class="detail-btn">상세보기</button></td>
                <td>2020-07-31</td>
                <td><i class="fa fa-check"></i></td>
              </tr>

            </table>

            <div class="button_group">
                <button type="button" id="modal_open_btn" style="width:80px;">작업 등록</button>
            </div>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
               	     작업 신청서
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>자산명</span>
                    <select class="" name="" style="margin-left:20px;">
                      <option value="">발전소경보계통</option>
                    </select>
                  </p>
                  <p>
                    <span>신청자</span>
                    <input type="text" placeholder="Hanium"></input>
                  </p>
                  <p>
                    <span>신청일자</span>
                    <input type="text" placeholder="2020-03-31" style="width:190px;"></input>
                  </p>
                  <p>
                    <span>작업일자</span>
                    <input type="text" placeholder="2020-04-02" style="width:190px;"></input>
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
                    <textarea name="name" rows="4" cols="40" placeholder="발전소경보계통 내부 소프트웨어 업데이트 작업"></textarea>
                  </div>
                  <p><span>필요 기자재</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="2" cols="40" placeholder="자사 업데이트 파일"></textarea>
                  </div>
                  <p><span>메모</span></p>
                    <textarea name="name" rows="2" cols="40" placeholder="."></textarea>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="button" id="submit" onclick="modal(1,2)">다음</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
              <div id="modal2">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
              	      작업 신청서
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>자산명</span>
                    <input type="text" placeholder="발전소경보계통"></input>
                  </p>
                  <p>
                    <span>신청자</span>
                    <input type="text" placeholder="Hanium"></input>
                  </p>
                  <p>
                    <span>신청일자</span>
                    <input type="text" placeholder="2020-03-31" style="width:190px;"></input>
                  </p>
                  <p>
                    <span>작업일자</span>
                    <input type="text" placeholder="2020-04-02" style="width:190px;"></input>
                  </p>
                  <p>
                    <span style="margin-right:15px;">작업 종류</span>
                    <select class="" name="">
                      <option value="">프로그램 업데이트</option>
                    </select>
                  </p>
                  <p></p>
                  <p><span>작업 내역 검토</span></p>
                  <input type="text" style="width:300px;" value="작업 내용을 기능적으로 검토하였습니까?"></input>
                  <div style="margin:3px 0 6px 30%;">
                    <span>예<input type="checkbox"></span><span>아니요<input type="checkbox" name="no2"></span>
                  </div>
                  <p><span>보안 영향도 검사</span></p>
                  <div style="margin-left:10px;">
                  <p> 1.취약점을 분석하였습니까?<input style="float:right" type="checkbox"></p>
                  <p> 2.연결경로를 검사하였습니까?<input style="float:right" type="checkbox"></p>
                  <p> 3.정보통신기반시설을 점검하였습니까?<input style="float:right" type="checkbox"></p>
                  <p> 4.위치 변경을 점검하였습니까?<input style="float:right" type="checkbox"></p>
                </div>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="button" id="submit" style="width:80px;">승인완료</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
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