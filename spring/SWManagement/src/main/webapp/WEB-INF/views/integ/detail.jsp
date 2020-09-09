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
                <td class="detail-title">버전명</td>
                <td>${vo.version }</td>
                <td class="detail-title">점검자</td>
                <td class="small-td">${vo.person }</td>
              </tr>
              <tr>
                <td class="detail-title">점검연도</td>
                <td>${vo.year }</td>
                <td class="detail-title">점검일자</td>
                <td class="small-td">${vo.date }</td>
              </tr>
              <tr>
                <td class="detail-title">점검분기</td>
                <td id="right">${vo.cycle }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검설비</td>
                <td id="right">${asset_name.asset_name }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검내용</td>
                <td id="right">${vo.content }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">점검결과</td>
                <td id="right">${vo.result }</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
            </table>
            <div class="button_group" style="width:1100px;">
                <a href="<c:url value="/integ/delete/${vo.integ_id}"/>"><button type="submit">삭제</button></a>
                <button type="submit" id="modal_open_btn">수정</button>
            </div>
            <form class="" action="<c:url value="/integ/update"/>" method="post">
              <input type="hidden" name="integ_id" value="${vo.integ_id}"/>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
                   	 무결성 유지 점검
                  </div>
                  <p>
                    <span>점검자</span>
                    <input type="text" style="margin-left:20px;" value="${vo.person}" name="person"></input>
                  </p>
                  <p>
                    <span>점검연도</span>
                    <input type="text" style="margin-left:5px;" value="${vo.year}" name="year"></input>
                  </p>
                  <p>
                    <span>점검일자</span>
                    <input type="text" style="margin-left:5px;" value="${vo.date}" name="date"></input>
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
                    <textarea name="content" rows="4" cols="38"><c:out value="${vo.content }"/></textarea>
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
                  <input type="text" name="compare" hidden/>
                  <input type="text" name="result" hidden/>
                  <p><span>H/W 점검 여부</span></p>
                  <div style="margin:3px 0 6px 30%;">
                    <span>예<input type="checkbox" name="checkbox" value="O"/></span><span>아니요<input type="checkbox" name="checkbox" value="X"/></span>
                  	<input type="text" name="hw_access" hidden></input>
                  </div>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="submit">저장</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
              </form>
            </div><!--right-container-->
  </body>
  <script>
  $("#modal_open_btn").click(function(){
      $("#modal1").attr("style", "display:block");
  });

   $("#modal_close_btn").click(function(){
      $("#modal1").attr("style", "display:none");
  });

   $("input:checkbox").on('click', function() { 
       if ( $(this).prop('checked') ) {
		   $("input[name=hw_access]").val($(this).val());
           alert($(this).val());
	   }
   });
  function modal(x,y){
   	  var asset_id = ${vo.asset_id };
	  var id;

	  var main_device;
	  
	  var hash_logic;
	  var hash_firm;
	  var hash_op;
	  var hash_step;
	  var hash_engine;
	  var compare = 0;
	  var result
	  <c:forEach items="${asset_vo}" var="vo">
		id = "${vo.asset_id}";
		if(id==asset_id){
			if("${vo.main_device}"==="PLC" || "${vo.main_device}"==="DCS"){
	            $("#hash_engine").attr("style", "display:none");
	            main_device="PLC";
			}else{
	            $("#hash_firm").attr("style", "display:none");
	            $("#hash_op").attr("style", "display:none");
	            $("#hash_step").attr("style", "display:none");
	            main_device="PC";
			}
		    $("#check1").click(function(){
		    	hash_logic = $("input[name=hash_logic]").val();
	            if(hash_logic=="${vo.hash_logic}"){
			    	alert("올바른 해쉬값");
			    	compare+=1;
	            }else{
					alert("해쉬값이 올바르지않습니다.")
			    }
			    check(main_device,compare);
		    });
		    $("#check2").click(function(){
		    	hash_firm = $("input[name=hash_firm]").val();
	            if(hash_firm=="${vo.hash_firm}"){
			    	alert("올바른 해쉬값");
			    	compare+=1;
	            }else{
					alert("해쉬값이 올바르지않습니다.")
			    }
			    check(main_device,compare);
		    });
		    $("#check3").click(function(){
		    	hash_op = $("input[name=hash_op]").val();
	            if(hash_op=="${vo.hash_op}"){
			    	alert("올바른 해쉬값");
			    	compare+=1;
	            }else{
					alert("해쉬값이 올바르지않습니다.")
			    }
			    check(main_device,compare);
		    });
		    $("#check4").click(function(){
			    hash_step = $("input[name=hash_step]").val();
	            if(hash_step=="${vo.hash_step}"){
			    	alert("올바른 해쉬값");
			    	compare+=1;
	            }else{
					alert("해쉬값이 올바르지않습니다.")
			    }
			    check(main_device,compare);
		    });
		    $("#check5").click(function(){
			    hash_engine = $("input[name=hash_engine]").val();
	            if(hash_engine=="${vo.hash_engine}"){
			    	alert("올바른 해쉬값");
			    	compare+=1;
	            }else{
					alert("해쉬값이 올바르지않습니다.")
			    }
			    check(main_device,compare);
		    });
		}
	  </c:forEach>
	  
        $("#modal"+x).attr("style", "display:none");
        $("#modal"+y).attr("style", "display:block");
  }
  function check(x,compare){
      var result;
		if(x==="PLC"){
			if(compare==4) result="O";
			else result="X";
		}else{
			if(compare==2) result="O";
			else result="X";
		}
	    $("input[name=result]").val(result);
	    $("input[name=compare]").val(result);
	    
  }
</script>
</html>