<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>취약점 점검 항목</title>
   <style>
   	.tall-tr{
   		height:45px;	
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
            	취약점 점검 항목
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="../navbar.jsp"%>
    <div class="right-container">
            <table class="list" style="width:1100px; margin-top:40px;">
              <tr>
                <th style="width:50px;">분야 번호</th>
                <th>점검 <br>분야</th>
                <th>항목번호</th>
                <th>점검항목</th>
                <th>중요도</th>
              </tr>
              <c:set var="i" value="0"/>
              <c:forEach items="${vo}" var="vo">
              <tr class="tall-tr">
                <td style="width:50px;">${vo.field_num }</td>
                <td>${vo.field }</td>
                <td>${vo.item_num }</td>
                <td>${vo.item }</td>
                <td>${vo.importance }</td>
              </tr>
              </c:forEach>
            </table>
              <div class="button_group" style="width:1100px; margin-top:-15px;">
                  <button type="button" id="modal_open_btn" style="width:110px;">점검항목 등록</button>
              </div>
                <div id="modal">
                  <div class="modal_layer">
                  <div class="small_modal_content">
				<form class="" action="<c:url value="/vul/add"/>" method="post">
                    <div class="modal_title">
                     	 통제항목 등록
                    </div>
                    <p>
                      <span>점검분야 번호</span>
                    </p>
                      <input type="text" placeholder="1.1" name="field_num"></input>
                    <p>
                      <span>점검분야</span>
                    </p>
                      <input type="text" placeholder="계정관리" name="field"></input>
                    <p>
                      <span>점검항목 번호</span>
                    </p>
                      <input type="text" placeholder="1.1.1" name="item_num"></input>
                      <p>
                        <span>점검항목 중요도</span>
                      <select class="" name="importance">
                        <option value="상">상</option>
                        <option value="중">중</option>
                        <option value="하">하</option>                        
                      </select>
                    </p>
                      <p>
                        <span>점검항목 내용</span>
                      </p>
                      <textarea rows="8" cols="35" name="item"></textarea>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">취소</button>
                      <button type="submit" id="submit">등록</button>
                    </div>
                    </form>
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
  </script>
</html>