<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>취약점 점검 항목</title>
</head>
<body>
<header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	취약점 점검 항목
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>

          <div class="right-container" style="margin-top:100px;">
            <table class="list" style="width:1100px;">
              <tr>
                <th style="width:50px;">분야 번호</th>
                <th>점검 분야</th>
                <th>항목번호</th>
                <th>점검항목</th>
                <th>중요도</th>
              </tr>
              <tr>
                <td style="width:50px;">1</td>
                <td>인적보안 정책 및 절차</td>
                <td>1.1</td>
                <td>개인 보안 정책을 수립하고 있는가?</td>
                <td>상</td>
              </tr>
              <tr>
                <td style="width:50px;"></td>
                <td>인적 반환</td>
                <td>1.2</td>
                <td>접근 허가 프로그램은 개인 업무 종료 시의 규정을 준수하고 있는가?</td>
                <td>상</td>
              </tr>
              <tr>
                <td style="width:50px;">2</td>
                <td>결함 고정</td>
                <td>2.1</td>
                <td>자산 평가를 실시하여 결함이 제거되었는지 검증하고 있는가?</td>
                <td>중</td>
              </tr>
              <tr>
                <td style="width:50px;"></td>
                <td></td>
                <td>2.2</td>
                <td>보안 경고 및 취약성 평가 프로세스를 식별하고 자산의 정확한 보안 결함을 알아내고 있는가?</td>
                <td>중</td>
              </tr>
            </table>
              <div class="button_group" style="width:1100px;">
                  <button type="button" id="modal_open_btn" style="width:110px;">통제항목 등록</button>
              </div>
                <div id="modal">
                  <div class="modal_layer">
                  <div class="small_modal_content">
                    <div class="modal_title">
                      통제항목 등록
                    </div>
                      <form class="" action="index.html" method="post">
                    <p>
                      <span>통제분야 번호</span>
                    </p>
                      <input type="text" placeholder=""></input>
                    <p>
                      <span>점검항목 번호</span>
                    </p>
                      <input type="text" placeholder=""></input>
                      <p>
                        <span>점검항목 중요도</span>
                      <select class="" name="">
                        <option value="">상</option>
                      </select>
                    </p>
                      <p>
                        <span>점검항목 내용</span>
                      </p>
                      <textarea name="name" rows="8" cols="35"></textarea>
                    </form>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">취소</button>
                      <button type="button" id="submit">등록</button>
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