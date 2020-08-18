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
            	자산 구매
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
<section>

          <div class="right-container">
            <table class="list" style="margin-top:180px;">
              <tr>
                <th style="width:30px;">Id</th>
                <th>자산명</th>
                <th>등록 일자</th>
                <th>보안항목점검 여부</th>
                <th>구매확정</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>ServerWin7_1</td>
                <td>2020-03-31</td>
                <td>YES</td>
                <td>YES</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>PcWinXP_1</td>
                <td>2020-03-25</td>
                <td><button type="button" onclick="openbtn()" class="detail-btn">보안항목 점검</button></td>
                <td>NO</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>PLC_3</td>
                <td>2020-03-11</td>
                <td><button type="button" onclick="openbtn()" class="detail-btn">보안항목 점검</button></td>
                <td>NO</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>ServerUnix_9</td>
                <td>2020-03-07</td>
                <td>YES</td>
                <td>YES</td>
              </tr>

            </table>

            <div class="button_group">
                <button type="button" style="width:100px;">신규 자산 등록</button>
            </div>
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
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td">관리자 그룹에 최소한의 사용자 포함하였는가?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                  <tr>
                    <td>W2</td>
                    <td>로그 관리</td>
                    <td>2.1</td>
                    <td class="long-td">로그의 정기적 검토 및 보고를 하였는가?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td">원격으로 액세스할 수 있는 레지스트리 경로 확인을 했는가?</td>
                    <td><span>Y<input type="checkbox" ></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(1,2)">계속하기</button>
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
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button"class="continue" onclick="modal(2,3)">계속하기</button>
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
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td class="long-td">SW가 중요한 보안 관련 자원에 대하여 읽기 또는 수정하기 권한을 의도하지 않게 허가하였는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td class="long-td">취약한 암호화 알고리즘을 사용하였는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td class="long-td">중요정보를 Plain Text로 저장하였는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td class="long-td">Hardcoding한 패스워드를 사용하고 있는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td class="long-td">적절하지 않은 난수 값을 사용하고 있는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>7</td>
                    <td class="long-td">중요 정보들이 영속적인 쿠키에 저장되거나 쿠키 만료 시간이 긴 편인가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>8</td>
                    <td class="long-td">솔트 없이 단방향 해시함수를 사용하고 있는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>9</td>
                    <td class="long-td">원격으로 소스코드 또는 실행파일을 무결성 검사 없이 다운받는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>10</td>
                    <td class="long-td">반복된 인증 시도 제한 기능이 없는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" id="no"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(3,4)">계속하기</button>
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
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td"><strong>SQL Injection</strong> 취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.3</td>
                    <td class="long-td"><strong>서비스 거부 </strong>취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.4</td>
                    <td class="long-td"><strong>권한 상승 </strong>취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.5</td>
                    <td class="long-td"><strong>정보 노출 </strong>취약점이 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>악성코드</td>
                    <td>2.1</td>
                    <td class="long-td"><strong>웜(Worm) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td"><strong>루트 컷(Rootkits) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.3</td>
                    <td class="long-td"><strong>트로이목마(Trojan horse) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.4</td>
                    <td class="long-td"><strong>랜섬웨어(Ransomware)) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.5</td>
                    <td class="long-td"><strong>트랩도어(Trapdoor) </strong>악성코드가 존재하는가?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(4,5)">계속하기</button>
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
                    <td><span>Y<input type="checkbox" name="yes2"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(5,6)">계속하기</button>
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
                    <td>네트워크 견고성</td>
                    <td class="long-td">비정상적이거나 과도한 양의 통신 데이터가 유입되는 경우에도 명령,제어,모니터링 등의 필수 서비스를 제공하는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">2</td>
                    <td>서비스 지속성</td>
                    <td class="long-td">업무 연속성 확보를 위한 기능이 정상적으로 제공되고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">3</td>
                    <td>보안기능</td>
                    <td class="long-td">식별/인증,접근통제,전송 및 저장 데이터 보호 등 보안성 확보를 위한 보안기능을 제공하고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">4</td>
                    <td>현장장치 계층</td>
                    <td class="long-td">제어 소프트웨어로부터 명령을 받아 현장 장치를 제어하는 역할을 정상적으로 수행하고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">5</td>
                    <td>제어 계층</td>
                    <td class="long-td">제어 소프트웨어로부터 명령을 받아 현장 장치를 제어하는 역할을 제대로 수행하고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">6</td>
                    <td>운영 계층</td>
                    <td class="long-td">제어 하드웨어와 통신하며 현장 장치의 상태를 모니터링하고 제어 명령을 정상적으로 내리고 있는가?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(5,6)">계속하기</button>
                  <button type="button" onclick="closebtn(6)" style="width:80px;">반출 처리</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
        </div>
        </section>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal1").attr("style", "display:block");
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

    function modal(x,y){
      $("#modal"+x).attr("style", "display:none");
      $("#modal"+y).attr("style", "display:block");
    }
     $("input[name=yes]").click(function(){
        alert(" *보안 항목 점검을 계속 진행할 수 없습니다.\n부적합 항목을 공급사 측에 전달한 후 계속 진행하세요.");
    });
    $("input[name=yes2]").click(function(){
       alert(" *디지털 시스템 발전소에 반입할 수 없습니다.\n디지털 시스템 발전소 반출 처리 해주시기 바랍니다.");
   });
      $("input[name=no]").click(function(){
         alert(" *보안 항목 점검을 계속 진행할 수 없습니다.\n부적합 항목을 공급사 측에 전달한 후 계속 진행하세요.");
     });
     $("input[name=no2]").click(function(){
        alert(" *디지털 시스템 발전소에 반입할 수 없습니다\n디지털 시스템 발전소 반출 처리 해주시기 바랍니다.");
    });
  </script>
  
</html>