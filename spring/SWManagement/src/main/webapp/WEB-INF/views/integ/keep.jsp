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
    	color:green;
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
                <th>무결성점검보고서</th>
                <th>점검연도</th>
                <th>점검일자</th>
                <th>점검설비</th>
                <th>점검주기</th>
                <th>점검자</th>
                <th>점검결과</th>
              </tr>
                <c:set var="i" value="0"/>
              <c:forEach items="${vo}" var="vo">
              <tr>
                <td style="width:30px;">1</td>
                <td><a href="<c:url value="/integ/keep/detail"/>"><c:out value="${vo.version}"/></a></td>
                <td><c:out value="${vo.year}"/></td>
                <td><c:out value="${vo.date}"/></td>
                <td>${asset_name[i].asset_name }</td>
                <td><c:out value="${vo.cycle}"/></td>
                <td><c:out value="${vo.person}"/></td>
                <td><c:out value="${vo.result}"/></td>
              </tr>
              <c:set var="i" value="${i+1 }"/>
              </c:forEach>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">추가</button>
            </div>
            <div>
             <form class="" action="/integ/add" method="post">
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
                   	 무결성 유지 점검
                  </div>
                  <p>
                    <span>자산명</span>
                    <select class="" name="asset_id" style="margin-left:20px;">
                      <c:forEach items="${asset_vo}" var="vo">
                      	<option value="${vo.asset_id }" ><c:out value="${vo.asset_name}"/></option>
                      </c:forEach>
                    </select>
                  </p>
                  <p>
                    <span>점검자</span>
                    <input type="text" style="margin-left:20px;" placeholder="양소영" name="person"></input>
                  </p>
                  <p>
                    <span>점검연도</span>
                    <input type="text" style="margin-left:5px;" placeholder="2020" name="year"></input>
                  </p>
                  <p>
                    <span>점검일자</span>
                    <input type="text" style="margin-left:5px;" placeholder="08-28" name="date"></input>
                  </p>
                  <p>
                    <span>점검분기</span>
                    <select class="" name="cycle" style="margin-left:5px;">
                      <option value="1분기">1분기</option>
                      <option value="2분기">2분기</option>
                      <option value="3분기">3분기</option>                      
                      <option value="4분기">4분기</option>
                    </select>
                  </p>
                  <p><span>점검내용</span></p>
                  <div class="textarea">
                    <textarea name="content" rows="4" cols="38"></textarea>
                  </div>
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
                  <div id="hash_logic">
	                  <div class="soft-text">
	                  	운영/제어로직 해시
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_logic"></input>
	                  <button type="button" class="bluebtn" id="check1">확인</button>
                  </div>
                  <div id="hash_firm">
	                  <div class="soft-text">
	                	  제어시스템 펌 웨어 해시값 입력
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_firm"></input>
	                  <button type="button" class="bluebtn" id="check2">확인</button>
                  </div>
                  <div id="hash_op">
	                  <div class="soft-text">
	                	  운영매개변수 해시값 입력
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_op"></input>
	                  <button type="button" class="bluebtn" id="check3">확인</button>
                  </div>
                  <div id="hash_step">                  
	                  <div class="soft-text">
	                  	설정정보 해시값 입력
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_step"></input>
	                  <button type="button" class="bluebtn" id="check4">확인</button>
                  </div>
                  <div id="hash_engine">                  
	                  <div class="soft-text">
	                   	 엔지니어링 S/W 해시
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_engine"></input>
	                  <button type="button" class="bluebtn" id="check5">확인</button>
                  </div>
                  <input type="text" name="compare"/>
                  <input type="text" name="result"/>
                  <p><span>H/W 점검 여부</span></p>
                  <div style="margin:3px 0 6px 30%;">
                    <span>예<input type="checkbox"/></span><span>아니요<input type="checkbox" name="no2"/></span>
                  	<input type="text" name="hw_access"></input>
                  </div>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="submit" >저장</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
              </form>
              </div>
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
       	  var asset_id = $("select[name=asset_id]").val();
		  var id;
		  var hash_logic;
		  var hash_firm;
		  var hash_op;
		  var hash_step;
		  var hash_engine;
		  var result = "true";
		  <c:forEach items="${asset_vo}" var="vo">
			id = "${vo.asset_id}";
			if(id==asset_id){
				if("${vo.main_device}"==="PLC" || "${vo.main_device}"==="DCS"){
		            $("#hash_engine").attr("style", "display:none");
				}else{
		            $("#hash_firm").attr("style", "display:none");
		            $("#hash_op").attr("style", "display:none");
		            $("#hash_step").attr("style", "display:none");
				}
			    $("#check1").click(function(){
			    	hash_logic = $("input[name=hash_logic]").val();
		            if(hash_logic=="${vo.hash_logic}"){
				    	alert("올바른 해쉬값");
		            }else{
			            result="false";
						alert("해쉬값이 올바르지않습니다.")
				    }
				    $("input[name=result]").val(result);
			    });
			    $("#check2").click(function(){
			    	hash_firm = $("input[name=hash_firm]").val();
		            if(hash_engine=="${vo.hash_firm}"){
				    	alert("올바른 해쉬값");
		            }else{
			            result="false";
						alert("해쉬값이 올바르지않습니다.")
				    }
				    $("input[name=result]").val(result);
			    });
			    $("#check3").click(function(){
			    	hash_op = $("input[name=hash_op]").val();
		            if(hash_engine=="${vo.hash_op}"){
				    	alert("올바른 해쉬값");
		            }else{
			            result="false";
						alert("해쉬값이 올바르지않습니다.")
				    }
				    $("input[name=result]").val(result);
			    });
			    $("#check4").click(function(){
				    hash_step = $("input[name=hash_step]").val();
		            if(hash_engine=="${vo.hash_step}"){
				    	alert("올바른 해쉬값");
		            }else{
			            result="false";
						alert("해쉬값이 올바르지않습니다.")
				    }
				    $("input[name=result]").val(result);
			    });
			    $("#check5").click(function(){
				    hash_engine = $("input[name=hash_engine]").val();
		            if(hash_engine=="${vo.hash_engine}"){
				    	alert("올바른 해쉬값");
		            }else{
			            result="false";
						alert("해쉬값이 올바르지않습니다.")
				    }
				    $("input[name=result]").val(result);
			    });
			}
		  </c:forEach>
		  
            $("#modal"+x).attr("style", "display:none");
            $("#modal"+y).attr("style", "display:block");
      }
      function check(x){
    	  var asset_id = $("select[name=asset_id]").val();
		  var id;
		  var hash_logic;
		  var hash_firm;
		  var hash_op;
		  var hash_step;
		  var hash_engine;
		  <c:forEach items="${asset_vo}" var="vo">
			id = "${vo.asset_id}";
			if(id==asset_id){
				if("${vo.main_device}"==="PLC" || "${vo.main_device}"==="DCS"){
		            $("#hash_engine").attr("style", "display:none");
				}else{
		            $("#hash_firm").attr("style", "display:none");
		            $("#hash_op").attr("style", "display:none");
		            $("#hash_step").attr("style", "display:none");
				}
			    $("#modal_close_btn").click(function(){
		            hash_engine="${vo.hash_engine}";
			    	alert(hash_engine);
			    });
			}
		  </c:forEach>
      }
  </script>

</html>