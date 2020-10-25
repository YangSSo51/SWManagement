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
                <td class="detail-title">작업명</td>
                <td>${vo.work_name}</td>
                <td class="detail-title">작업자</td>
                <td class="small-td">${vo.person }</td>
              </tr>
              <tr>
                <td class="detail-title">작업기간</td>
                <td>${vo.date_start} ~ ${vo.date_end }</td>
                <td class="detail-title">신청일자</td>
                <td class="small-td">${vo.date}</td>
              </tr>
              <tr>
                <td class="detail-title">점검설비</td>
                <td id="right">${asset_name.asset_name }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">작업종류</td>
                <td id="right">${vo.work_type}</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검내용</td>
                <td id="right">${vo.work_content}</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">메모</td>
                <td id="right">${vo.memo}</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">필요장비</td>
                <td id="right">${vo.equipment}</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">관리자 승인여부</td>
                <td id="right">
                <c:choose>
	                <c:when test="${vo.m_okay eq 'O'}">
	               		<i class="fa fa-check"></i>
	                </c:when>
	                <c:otherwise>
	                   <i class="fa fa-close"></i>
	                </c:otherwise>
                </c:choose>
                </td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
            </table>
              <div class="button_group">
                <button type="button" id="modal_open_btn" style="width:80px;">수정</button>
            	<button type="button" id="modal_open_btn2" style="width:80px;">승인</button>
            </div>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
          		  <form class="" action="<c:url value="/config/update"/>" method="post">
          		  <input type="hidden" value="${vo.config_id}" name="config_id"></input>
                  <div class="modal_title">
               	     작업 신청서
                  </div>
                  <p>
                  <span>자산명</span>
                    <input type="text" value="${asset_name.asset_name }"  readonly></input>
                  </p>
                  <p>
                    <span>작업명</span>
                    <input type="text" value="${vo.work_name }" name="work_name"></input>
                  </p>
                  <p>
                    <span>신청자</span>
                    <input type="text" value="${vo.person}"  name="person"></input>
                  </p>
                  <p>
                    <span>작업시작일자</span>
                    <input type="text" value="${vo.date_start}"  style="width:160px;" name="date_start"></input>
                  </p>
                  <p>
                    <span>작업종료일자</span>
                    <input type="text" value="${vo.date_end }"  style="width:160px;" name="date_end"></input>
                  </p>
                  <p>
                    <span style="margin-right:15px;">작업 종류</span>
                    <select class="" name="work_type">
                      <option value="프로그램 업데이트">프로그램 업데이트</option>
                      <option value="프로그램 신규설치">프로그램 신규설치</option>
                      <option value="로직변경">로직변경</option>
                      <option value="OS/백신">OS/백신</option>
                    </select>
                  </p>
                  <p></p>
                  <p><span>작업 내용</span></p>
                  <div class="textarea">
                    <textarea name="work_content" rows="4" cols="40">${vo.work_content }</textarea>
                  </div>
                  <p><span>필요 기자재</span></p>
                  <div class="textarea">
                    <textarea name="equipment" rows="2" cols="40" >${vo.equipment}</textarea>
                  </div>
                  <p><span>메모</span></p>
                    <textarea name="memo" rows="2" cols="40" placeholder=".">${vo.memo }</textarea>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="submit" id="submit" >등록</button>
                  </div>
                  </form>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
              <div id="modal2">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
              	      작업 신청서 승인
                  </div>
          		  <form class="" action="<c:url value="/config/update/admin"/>" method="post">
          		  <input type="hidden" value="${vo.config_id}" name="config_id"></input>
                  <p><span>작업 내역 검토</span></p>
                  <input type="text" style="width:300px;" value="작업 내용을 기능적으로 검토하였습니까?"></input>
                  <div style="margin:3px 0 6px 30%;">
                    <span>예<input type="checkbox" name="m_review" value="O"></span><span>아니요<input type="checkbox" name="no2"></span>
                  </div>
                  <p><span>보안 영향도 검사</span></p>
                  <div style="margin-left:10px;">
                  <p> 1.취약점을 분석하였습니까?<input style="float:right" type="checkbox" name="m_vul" value="O" ></p>
                  <p> 2.연결경로를 검사하였습니까?<input style="float:right" type="checkbox" name="m_path" value="O"></p>
                  <p> 3.정보통신기반시설을 점검하였습니까?<input style="float:right" type="checkbox" name="m_infra" value="O"></p>
                  <p> 4.위치 변경을 점검하였습니까?<input style="float:right" type="checkbox" name="m_locate" value="O"></p>
                  </div>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="submit" id="submit" style="width:80px;">승인완료</button>
                  </div>
                 </form>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal1").attr("style", "display:block");
      });
      $("#modal_open_btn2").click(function(){
          $("#modal2").attr("style", "display:block");
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