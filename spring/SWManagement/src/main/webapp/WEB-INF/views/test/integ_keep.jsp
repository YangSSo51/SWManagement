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
            <form class="center_form">
              <select class="select" name="">
                <option value="자산명">자산명</option>
              </select>
              <select class="select" name="">
                <option value="점검연도">점검연도</option>
              </select>
              <select class="select" name="">
                <option value="점검결과">점검결과</option>
              </select>
              <button type="button" name="button">검색</button>
            </form>
            <table class="list">
              <tr>
                <th style="width:30px;">번호</th>
                <th>버전명</th>
                <th>점검연도</th>
                <th>점검일자</th>
                <th>점검설비</th>
                <th>점검주기</th>
                <th>점검자</th>
                <th>점검결과</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">주급수계통_2020_1</a></td>
                <td>2020</td>
                <td>09-30</td>
                <td>주급수계통</td>
                <td>3분기</td>
                <td>김은지</td>
                <td>적합</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">발전소경보계통_2020_1</a></td>
                <td>2020</td>
                <td>08-28</td>
                <td>발전소경보계통</td>
                <td>3분기</td>
                <td>양소영</td>
                <td>적합</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">터빈제어설비_2020_2</a></td>
                <td>2020</td>
                <td>07-15</td>
                <td>터빈제어설비</td>
                <td>2분기</td>
                <td>주소영</td>
                <td>적합</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">유지보수PC_2020_1</a></td>
                <td>2020</td>
                <td>03-02</td>
                <td>유지보수PC</td>
                <td>2분기</td>
                <td>주소영</td>
                <td>적합</td>
              </tr>
              <tr>
                <td style="width:30px;">5</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">자동지진정지계통_2020_1</a></td>
                <td>2020</td>
                <td>06-01</td>
                <td>자동지진정지계통</td>
                <td>1분기</td>
                <td>권해나</td>
                <td>적합</td>
              </tr>
              <tr>
                <td style="width:30px;">6</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">자동지진정지계_2020_1</a></td>
                <td>2020</td>
                <td>03-01</td>
                <td>자동지진정지계</td>
                <td>1분기</td>
                <td>권해나</td>
                <td>부적합</td>
              </tr>
              <tr>
                <td style="width:30px;">7</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">터빈제어설비_2020_1</a></td>
                <td>2020</td>
                <td>01-15</td>
                <td>터빈제어설비</td>
                <td>2분기</td>
                <td>주소영</td>
                <td>부적합</td>
              </tr>
              <tr>
                <td style="width:30px;">8</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">유지보수PC_2020_1</a></td>
                <td>2020</td>
                <td>01-15</td>
                <td>유지보수PC</td>
                <td>2분기</td>
                <td>주소영</td>
                <td>적합</td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">추가</button>
            </div>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
                   	 무결성 유지 점검
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>자산명</span>
                    <select class="" name="" style="margin-left:20px;">
                      <option value="">발전소경보계통</option>
                    </select>
                  </p>
                  <p>
                    <span>점검자</span>
                    <input type="text" style="margin-left:20px;" placeholder="양소영"></input>
                  </p>
                  <p>
                    <span>점검연도</span>
                    <input type="text" style="margin-left:5px;" placeholder="2020"></input>
                  </p>
                  <p>
                    <span>점검일자</span>
                    <input type="text" style="margin-left:5px;" placeholder="08-28"></input>
                  </p>
                  <p>
                    <span>점검분기</span>
                    <select class="" name="" style="margin-left:5px;">
                      <option value="">3분기</option>
                    </select>
                  </p>
                  <p><span>점검내용</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="4" cols="38"></textarea>
                  </div>
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
                    	무결성 매핑
                  </div>
                    <form class="" action="index.html" method="post">
                  <div class="soft-text">
                  	운영/제어로직 해시
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">확인</button>
                  <div class="soft-text">
                	  제어시스템 펌 웨어 해시값 입력
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">확인</button>
                  <div class="soft-text">
                	  운영매개변수 해시값 입력
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">확인</button>
                  <div class="soft-text">
                  	설정정보 해시값 입력
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">확인</button>
                  <div class="soft-text">
                   	 엔지니어링 S/W 해시
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">확인</button>
                  <p><span>H/W 점검 여부</span></p>
                  <div style="margin:3px 0 6px 30%;">
                    <span>예<input type="checkbox"></span><span>아니요<input type="checkbox" name="no2"></span>
                  </div>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="submit" >저장</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
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