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
            	자산 무결성 관리
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
          <div class="right-container" >
            <form class="center_form">
              <input type="search" name="" value="" placeholder="자산명 입력">
              <button type="button" name="button">검색</button>
            </form>
              <div class="tab-group">
                <a href="<c:url value="/asset/integ/2"/>"><button type="button" name="button" >PLC</button></a>
                <a href="<c:url value="/asset/integ/1"/>"><button type="button" name="button" class="white" style="margin-left:-5px;">PC/Server</button></a>
              </div>
              <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th>자산명</th>
                <th>설비유형</th>
                <th>OS유형</th>
                <th>무결성<br> 점검 기능<br> 보유 여부</th>
                <th>하드웨어 <br>접근 통제 여부</th>
                <th>운영/제어로직 <br>해시 값 입력</th>
                <th>제어시스템 펌 웨어  <br>해시 값 입력</th>
                <th>운영매개변수  <br>해시값 입력</th>
                <th>설정정보  <br>해시값 입력</th>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(1)"></td>
                <td>주급수계통</td>
                <td>DCS</td>
                <td>Firmware</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="9d78bdf9bcf97" name="input[1][1]" disabled></td>
                <td><input type="text" placeholder="9d78bdf9bcf97" name="input[1][2]" disabled ></td>
                <td><input type="text" placeholder="9d78bdf9bcf97" name="input[1][3]" disabled></td>
                <td><input type="text" placeholder="9d78bdf9bcf97" name="input[1][4]" disabled></td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(2)" ></td>
                <td>발전소경보계통</td>
                <td>PLC</td>
                <td>Firmware</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="fd213a3cf099" name="input[2][1]" disabled></td>
                <td><input type="text" placeholder="fd213a3cf099" name="input[2][2]" disabled></td>
                <td><input type="text" placeholder="fd213a3cf099" name="input[2][3]" disabled></td>
                <td><input type="text" placeholder="fd213a3cf099" name="input[2][4]" disabled></td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(3)" ></td>
                <td>자동지진정지계통</td>
                <td>PLC</td>
                <td>Firmware</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="e5b3956b98a" name="input[3][1]" disabled></td>
                <td><input type="text" placeholder="e5b3956b98a" name="input[3][2]" disabled></td>
                <td><input type="text" placeholder="e5b3956b98a" name="input[3][3]" disabled></td>
                <td><input type="text" placeholder="e5b3956b98a" name="input[3][4]" disabled></td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(4)" ></td>
                <td>발전소제어계통</td>
                <td>PLC</td>
                <td>Firmware</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="b94a005a0c5" name="input[4][1]" disabled></td>
                <td><input type="text" placeholder="b94a005a0c5" name="input[4][2]" disabled></td>
                <td><input type="text" placeholder="b94a005a0c5" name="input[4][3]" disabled></td>
                <td><input type="text" placeholder="b94a005a0c5" name="input[4][4]" disabled></td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">수정</button>
            </div>
            </div><!--right-container-->
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
       function check(x){
     		if($("input[name=check]").is(":checked")){ 
       			document.getElementsByName('input['+x+'][1]')[0].removeAttribute("disabled");
       			document.getElementsByName('input['+x+'][2]')[0].removeAttribute("disabled");
       			document.getElementsByName('input['+x+'][3]')[0].removeAttribute("disabled");
       			document.getElementsByName('input['+x+'][4]')[0].removeAttribute("disabled");
      		}else {
      			document.getElementsByName('input['+x+'][1]')[0].setAttribute("disabled",true);
      			document.getElementsByName('input['+x+'][2]')[0].setAttribute("disabled",true);
      			document.getElementsByName('input['+x+'][3]')[0].setAttribute("disabled",true);
      			document.getElementsByName('input['+x+'][4]')[0].setAttribute("disabled",true);
      		}
      		
      	}
  </script>
  
</html>