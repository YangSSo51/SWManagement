<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<%@ include file="navbar.jsp"%>
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
                <tr>
                  <td style="width:30px;">1</td>
                  <td>발전소경보계통/MCR OIS</td>
                  <td>발전소경보계통/MCR OIS_2020_1</td>
                  <td>2020.09.30</td>
                  <td>3분기</td>
                </tr>
                <tr>
                  <td style="width:30px;">2</td>
                  <td>주급수계통/DCS</td>
                  <td>주급수계통/DCS_2020_1</td>
                  <td>2020.08.28</td>
                  <td>2분기</td>
                </tr>
                <tr>
                  <td style="width:30px;">3</td>
                  <td>주급수계통/제어서버</td>
                  <td>주급수계통/제어서버_2020_2</td>
                  <td>2020.07.15</td>
                  <td>2분기</td>
                </tr>
                <tr>
                  <td style="width:30px;">4</td>
                  <td>발전소경보계통/PLC</td>
                  <td>발전소경보계통/PLC_2020_2</td>
                  <td>2020.06.01</td>
                  <td>1분기</td>
                </tr>
                <tr>
                  <td style="width:30px;">5</td>
                  <td>제어봉제어계통/PLC</td>
                  <td>제어봉제어계통/PLC_2020_1</td>
                  <td>2020.03.02</td>
                  <td>1분기</td>
                </tr>
                <tr>
                  <td style="width:30px;">6</td>
                  <td>지진감시계통/제어PC</td>
                  <td>지진감시계통/제어PC_2020_1</td>
                  <td>2020.03.01</td>
                  <td>2분기</td>
                </tr>
                <tr>
                  <td style="width:30px;">7</td>
                  <td>자동지진정지계통/PLC</td>
                  <td>자동지진정지계통/PLC_2020_1</td>
                  <td>2020.01.15</td>
                  <td>2분기</td>
                </tr>
              </table>
        </div>
        <div class="button_group" style="width:1350px;">
          <a href="<c:url value="/risk/manage"/>"><button class="button" style="width:80px;">위험관리</button></a>
        </div>
  </body>

</html>