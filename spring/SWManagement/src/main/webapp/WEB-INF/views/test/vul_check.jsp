<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<%@ include file="navbar.jsp"%>
    <div class="right-container">
            <table class="list" style="width:1100px; margin-top:40px;">
              <tr>
                <th style="width:50px;">분야 번호</th>
                <th>점검 <br>분야</th>
                <th>항목번호</th>
                <th>점검항목</th>
                <th>중요도</th>
              </tr>
              <tr>
                <td style="width:50px;">1.1</td>
                <td>계정관리</td>
                <td>1.1.1</td>
                <td>필수디지털자산 계정 관리(승인, 사용, 변경, 불용 및 삭제 절차) 및 문서화를 하고 있는가?</td>
                <td>상</td>
              </tr>
              <tr class="tall-tr">
                <td style="width:50px;">1.1</td>
                <td>계정관리</td>
                <td>1.1.2</td>
                <td>검토절차의 수립 및 이에 따른 필수디지털자산 계정의 불법적인 사용 <br>및 변경 여부에 대해 주기적 검토를 하고 있는가?(최소 분기 1회)</td>
                <td>중</td>
              </tr>
              <tr>
                <td style="width:50px;">1.1</td>
                <td>계정관리</td>
                <td>1.1.3</td>
                <td>주어진 업무를 수행하는데 필요한 만큼의 제한된 접근권한을 각 계정에 부여하고 있는가?</td>
                <td>상</td>
              </tr>
              <tr>
                <td style="width:50px;">1.1</td>
                <td>계정관리</td>
                <td>1.1.4</td>
                <td>업무의 변경 시 계정에 대한 접근권한 검토를 통해 업무에 기반한 제한된 접근권한이 부여되고 있음을 보장하고 있는가?</td>
                <td>상</td>
              </tr>
              <tr>
                <td style="width:50px;">1.1</td>
                <td>계정관리</td>
                <td>1.1.5</td>
                <td>다음과 같은 자동화된 계정관리 수행하여야 하며, 자동화된 계정관리가 불가할 경우 수기로 계정관리 수행하고 있는가?</td>
                <td>중</td>
              </tr>
              <tr>
                <td style="width:50px;">1.2</td>
                <td>접근권한</td>
                <td>1.2.1</td>
                <td>수립된 접근통제 정책 및 절차에 따라 필수디지털자산에 대한 접근통제 이행하고 있는가?</td>
                <td>상</td>
              </tr>
              <tr>
                <td style="width:50px;">1.2</td>
                <td>접근권한</td>
                <td>1.2.2</td>
                <td>필수디지털자산별로 접근 및 사용가능한 사용자를 정의하고, 각 사용자별 접근권한 및 사용특권을 차등부여하고 있는가?</td>
                <td>중</td>
              </tr>
              <tr class="tall-tr">
                <td style="width:50px;">1.2</td>
                <td>접근권한</td>
                <td>1.2.3</td>
                <td>필수디지털자산에 대한 특정 기능들을 정의 및 문서화하고,<br> 동 기능들에 대한 접근 및 사용을 사용자 권한 및 특권에 따라 허가 혹은 제한하고 있는가?</td>
                <td>중</td>
              </tr>
              <tr class="tall-tr">
                <td style="width:50px;">1.2</td>
                <td>접근권한</td>
                <td>1.2.4</td>
                <td>시스템에 악영향을 미치는 기능을 정의 및 문서화하고,<br> 동 기능에 대한 접근은 두 명의 관리자에게 승인받도록 조치하고 있는가?</td>
                <td>중</td>
              </tr>
              <tr class="tall-tr">
                <td style="width:50px;">1.2</td>
                <td>접근권한</td>
                <td>1.2.5</td>
                <td>접근통제가 필수디지털자산 본래의 기능에 악영향을 미치지 않아야 하며, 악영향으로 인하여<br> 상기의 접근통제 요건을 수립하기 어려울 때에는 다른 대안 조치를 수행하고 있는가?</td>
                <td>하</td>
              </tr>
              <tr>
                <td style="width:50px;">2.1</td>
                <td>감사대상</td>
                <td>2.1.1</td>
                <td>감사가 필요한 비상사건들을 목록화하고 각 비상사건별 감사기간 및 방법 등을 정의하고 있는가?</td>
                <td>상</td>
              </tr>
              <tr class="tall-tr">
                <td style="width:50px;">2.1</td>
                <td>감사대상</td>
                <td>2.1.2</td>
                <td>필수디지털자산이 자동적으로 감사대상 로그를 생성하지 못하는 경우에는<br> 정당한 사유를 문서화하고 대안적인 보안조치를 이행하고 있는가?</td>
                <td>중</td>
              </tr>
              <tr>
                <td style="width:50px;">2.1</td>
                <td>감사대상</td>
                <td>2.1.3</td>
                <td>감사대상 비상사건 목록에 대해 최소 년 1회 이상 검토하고 갱신하여야 하며, 검토 시 최신 위협정보를 활용하고 있는가?</td>
                <td>중</td>
              </tr>
            </table>
              <div class="button_group" style="width:1100px; margin-top:-15px;">
                  <button type="button" id="modal_open_btn" style="width:110px;">점검항목 등록</button>
              </div>
                <div id="modal">
                  <div class="modal_layer">
                  <div class="small_modal_content">
                    <div class="modal_title">
                     	 통제항목 등록
                    </div>
                      <form class="" action="index.html" method="post">
                    <p>
                      <span>점검분야 번호</span>
                    </p>
                      <input type="text" placeholder="1.1"></input>
                    <p>
                      <span>점검분야</span>
                    </p>
                      <input type="text" placeholder="계정관리"></input>
                    <p>
                      <span>점검항목 번호</span>
                    </p>
                      <input type="text" placeholder="11.1"></input>
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
  </script>
</html>