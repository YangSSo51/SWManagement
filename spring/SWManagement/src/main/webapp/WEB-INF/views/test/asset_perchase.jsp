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
            	자산 구매
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
	<div class="right-container">
            <form class="center_form" style="margin-top:60px;">
              <input type="search" name="" value="" placeholder="자산명 입력">
              <button type="button" name="button">검색</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/asset/perchase/desc"/>"><button type="button" name="button" class="white" >최신순</button></a>
              <a href="<c:url value="/asset/perchase/asc"/>"><button type="button" name="button" style="margin-left:-5px;">오래된 순</button></a>
            </div>
            <hr>
            <table class="list" style="margin-top:30px;">
              <tr>
                <th style="width:30px;">Id</th>
                <th>자산명</th>
                <th>등록 일자</th>
                <th>기술적 보안<br>항목 점검여부</th>
                <th>Secure coding <br>적용여부</th>
                <th>취약점 <br>체크 여부</th>
                <th>무결성 검증<br> 기능 탑재</th>
                <th>봉인 훼손</th>
                <th>기능/성능 시험</th>
                <th>구매확정</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>주급수계통</td>
                <td>2020-03-28</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>발전소경보계통</td>
                <td>2020-03-30</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>제어봉제어계통</td>
                <td>2020-03-31</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>X</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>지진감시계통</td>
                <td>2020-04-15</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">5</td>
                <td>자동지진정지계통</td>
                <td>2020-04-30</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">6</td>
                <td>터빈제어설비유지보수PC</td>
                <td>2020-05-05</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">7</td>
                <td>발전소제어계통</td>
                <td>2020-05-31</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
            </table>

            <div class="button_group">
                <button type="button" style="width:100px;" id="modal_open_btn">신규 자산 등록</button>
            </div>
            <div id="modal0">
              <div class="modal_layer">
              <div class="small_modal_content">
                <div class="modal_title">
       	           자산명
                </div>
                  <form class="" action="index.html" method="post">
                    <p>
                      <span>자산명</span>
                    </p>
                      <input type="text" placeholder="주급수계통"></input>
                <p>
                  <span>설비유형</span>
                </p>
                  <select class="" name="" style="margin-left:20px;">
                    <option value="">PLC/DCS</option>
                    <option value="">PC/Server</option>
                  </select>
                <p>
                  <span>OS유형</span>
                </p>
                <select class="" name="" style="margin-left:20px;">
                  <option value="">WinXP</option>
                  <option value="">Win 2000</option>
                  <option value="">Win 2003</option>
                  <option value="">Win Vista</option>
                  <option value="">Win7</option>
                </select>
                <p>
                  <span>구매자</span>
                </p>
                <input type="text" placeholder="김은지"></input>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="button" onclick="modal(0,1,0)">등록</button>
                  </div>
                </form>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal1">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
            	     자산 보안 항목 점검-[기술적 보안 항목]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>분야번호</th>
                    <th>점검분야</th>
                    <th>항목 번호</th>
                    <th>점검항목</th>
                    <th>적합 여부</th>
                  </tr>
                  <tr>
                    <td>W1</td>
                    <td>계정 관리</td>
                    <td>1.1</td>
                    <td class="long-td">Administrator 계정 이름을 바꾸었는가?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td">관리자 그룹에 최소한의 사용자 포함하였는가?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                  <tr>
                    <td>W2</td>
                    <td>로그 관리</td>
                    <td>2.1</td>
                    <td class="long-td">로그의 정기적 검토 및 보고를 하였는가?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td">원격으로 액세스할 수 있는 레지스트리 경로 확인을 했는가?</td>
                    <td><span>Y<input type="checkbox" ></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                </table>
                <!--적합 여부 중 N이 있으면 넘어가면 안됨-->
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(1,2,0)">계속하기</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal2">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                 	 자산 보안 항목 점검-[무결성 점검 기능 탑재 여부]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>점검항목</th>
                    <th>적합 여부</th>
                  </tr>
                  <tr>
                    <td class="long-td">무결성 점검 기능을 탑재한 자산인가?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button"class="continue" onclick="modal(2,3,0)">계속하기</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal3">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
              	    자산 보안 항목 점검-[Secure Coding 적용 여부]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>항목번호</th>
                    <th>점검항목</th>
                    <th>적용 여부</th>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td class="long-td">프로그램이 모든 가능한 실행 경로에 대해서 접근제어를 검사하지 않거나,불완전하게 검사하였는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td class="long-td">SW가 중요한 보안 관련 자원에 대하여 읽기 또는 수정하기 권한을 의도하지 않게 허가하였는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td class="long-td">취약한 암호화 알고리즘을 사용하였는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td class="long-td">중요정보를 Plain Text로 저장하였는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td class="long-td">Hardcoding한 패스워드를 사용하고 있는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td class="long-td">적절하지 않은 난수 값을 사용하고 있는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>7</td>
                    <td class="long-td">중요 정보들이 영속적인 쿠키에 저장되거나 쿠키 만료 시간이 긴 편인가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>8</td>
                    <td class="long-td">솔트 없이 단방향 해시함수를 사용하고 있는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>9</td>
                    <td class="long-td">원격으로 소스코드 또는 실행파일을 무결성 검사 없이 다운받는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>10</td>
                    <td class="long-td">반복된 인증 시도 제한 기능이 없는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(3,4,10)">계속하기</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal4">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
          	       자산 보안 항목 점검-[신규 취약점 및 악성코드 존재 여부]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>점검분야</th>
                    <th>항목 번호</th>
                    <th>점검항목</th>
                    <th>적합 여부</th>
                  </tr>
                  <tr>
                    <td>취약점</td>
                    <td>1.1</td>
                    <td class="long-td"><strong>메모리 충돌</strong> 취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td"><strong>SQL Injection</strong> 취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.3</td>
                    <td class="long-td"><strong>서비스 거부 </strong>취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.4</td>
                    <td class="long-td"><strong>권한 상승 </strong>취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.5</td>
                    <td class="long-td"><strong>정보 노출 </strong>취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td>악성코드</td>
                    <td>2.1</td>
                    <td class="long-td"><strong>웜(Worm) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td"><strong>루트 컷(Rootkits) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.3</td>
                    <td class="long-td"><strong>트로이목마(Trojan horse) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.4</td>
                    <td class="long-td"><strong>랜섬웨어(Ransomware)) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.5</td>
                    <td class="long-td"><strong>트랩도어(Trapdoor) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(4,5,10)">계속하기</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal5">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
           		       자산 보안 항목 점검(내부점검)-[봉인 훼손 여부 확인]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>점검항목</th>
                    <th>적합 여부</th>
                  </tr>
                  <tr>
                    <td class="long-td">봉인 처리 후 자산 훼손된 흔적이 있는가?</td>
                    <td><span>Y<input type="checkbox" name="yes2"></span><span>N<input type="checkbox" name="no5"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(5,6,1)">계속하기</button>
                  <button type="button" onclick="closebtn(5)" style="width:80px;">반출 처리</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal6">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
               	   자산 보안 항목 점검(내부점검)-[기능/성능 시험]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th style="width:30px;">항목 번호</th>
                    <th>점검 분야</th>
                    <th>점검항목</th>
                    <th style="width:70px;">적합 여부</th>
                  </tr>
                  <tr>
                    <td style="width:30px;">1</td>
                    <td>네트워크 <br>견고성</td>
                    <td class="long-td">비정상적이거나 과도한 양의 통신 데이터가 유입되는 경우에도 명령,제어,모니터링 등의  <br>필수 서비스를 제공하는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">2</td>
                    <td>서비스  <br>지속성</td>
                    <td class="long-td">업무 연속성 확보를 위한 기능이 정상적으로 제공되고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">3</td>
                    <td>보안기능</td>
                    <td class="long-td">식별/인증,접근통제,전송 및 저장 데이터 보호 등 보안성 확보를 위한  <br>보안기능을 제공하고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">4</td>
                    <td>현장장치 <br> 계층</td>
                    <td class="long-td">제어 소프트웨어로부터 명령을 받아 현장 장치를 제어하는 역할을 정상적으로 수행하고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">5</td>
                    <td>제어 계층</td>
                    <td class="long-td">제어 소프트웨어로부터 명령을 받아 현장 장치를 제어하는 역할을 제대로 수행하고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">6</td>
                    <td>운영 계층</td>
                    <td class="long-td">제어 하드웨어와 통신하며 현장 장치의 상태를 모니터링하고 <br> 제어 명령을 정상적으로 내리고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(6,0,0)">완료하기</button>
                  <button type="button" onclick="closebtn(6)" style="width:80px;">반출 처리</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
        </div>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal0").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal5").attr("style", "display:none");
      });
    function openbtn(){
      $("#modal1").attr("style", "display:block");
    }
    function closebtn(x){
      $("#modal"+x).attr("style", "display:none");
    }

    function modal(x,y,z){
      //if($("input[name=no"+x+"]:checked").length==z){
        if(x==6){
          $("#modal"+x).attr("style", "display:none");
        }else{
          $("#modal"+x).attr("style", "display:none");
          $("#modal"+y).attr("style", "display:block");
        }
      /*}else{
        if(x==1 || x==3 || x==4){
          alert(" *보안 항목 점검을 계속 진행할 수 없습니다.\n부적합 항목을 공급사 측에 전달한 후 계속 진행하세요.");
        }else if(x==2){
          alert(" *구매 확정을 진행할 수 없습니다.\n 무결성 유지 요건을 전달한 후 구매 확정할 수 있습니다.");
        }else if(x==5 || x==6){
          alert(" *디지털 시스템 발전소에 반입할 수 없습니다\n디지털 시스템 발전소 반출 처리 해주시기 바랍니다.");
        }
      }*/
    }
    $("input[name=no1]").click(function(){
       alert(" *보안 항목 점검을 계속 진행할 수 없습니다.\n부적합 항목을 공급사 측에 전달한 후 계속 진행하세요.");
   });
   $("input[name=no2]").click(function(){
     alert(" *구매 확정을 진행할 수 없습니다.\n 무결성 유지 요건을 전달한 후 구매 확정할 수 있습니다.");
  });
     $("input[name=yes]").click(function(){
        alert(" *보안 항목 점검을 계속 진행할 수 없습니다.\n부적합 항목을 공급사 측에 전달한 후 계속 진행하세요.");
    });

    $("input[name=yes2]").click(function(){
       alert(" *디지털 시스템 발전소에 반입할 수 없습니다.\n디지털 시스템 발전소 반출 처리 해주시기 바랍니다.");
   });

     $("input[name=no6]").click(function(){
        alert(" *디지털 시스템 발전소에 반입할 수 없습니다\n디지털 시스템 발전소 반출 처리 해주시기 바랍니다.");
    });
  </script>
  
</html>