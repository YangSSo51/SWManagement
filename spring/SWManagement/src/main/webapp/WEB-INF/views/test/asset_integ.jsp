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
        <div class="right-container">
            <form class="center_form" >
              <input type="search" name="" value="" placeholder="자산명 입력">
              <button type="button" name="button">검색</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/asset/integ/2"/>"><button type="button" name="button" class="white">PLC</button></a>
              <a href="<c:url value="/asset/integ/1"/>"><button type="button" name="button" style="margin-left:-5px;">PC/Server</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th>자산명</th>
                <th>설비유형</th>
                <th>OS유형</th>
                <th>무결성 <br>점검 기능 <br>보유 여부</th>
                <th>하드웨어<br> 접근 통제 여부</th>
                <th>운영/제어로직<br> 해시 값 입력</th>
                <th>엔지니어링 S/W<br>해시 값 입력</th>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(1)"></td>
                <td>발전소경보계통/MCR OIS</td>
                <td>PC</td>
                <td>Win 7</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="8ab2630ada4" name="input[1][1]" disabled></td>
                <td><input type="text" placeholder="8ab2630ada4"  name="input[1][2]" disabled></td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(2)"></td>
                <td>주급수계통/제어서버</td>
                <td>Server</td>
                <td>LINUX</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="b94a005a0c5"  name="input[2][1]" disabled></td>
                <td><input type="text" placeholder="b94a005a0c5"  name="input[2][2]" disabled></td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(3)"></td>
                <td>지진감시계통/제어PC</td>
                <td>PC</td>
                <td>Win 2003</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="970320c68c4" name="input[3][1]" disabled></td>
                <td><input type="text" placeholder="970320c68c4" name="input[3][2]" disabled></td>
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
   		}else {
   			document.getElementsByName('input['+x+'][1]')[0].setAttribute("disabled",true);
   			document.getElementsByName('input['+x+'][2]')[0].setAttribute("disabled",true);
   		}
   		
   	}
  </script>
  
</html>