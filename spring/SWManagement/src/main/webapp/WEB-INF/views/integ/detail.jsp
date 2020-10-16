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
                    <span>자산명</span>
                    <select class="" name="asset_id" style="margin-left:20px;">
                      <c:forEach items="${asset_vo}" var="vo">
                      	<option value="${vo.asset_id }" ><c:out value="${vo.asset_name}"/></option>
                      </c:forEach>
                    </select>
                  </p>
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
                    <textarea name="content" rows="4" cols="38">${vo.content}</textarea>
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
	                  <button type="button" class="bluebtn" onclick="check(1)">확인</button>
                  </div>
                  <div id="hash_firm">
	                  <div class="soft-text">
	                	  제어시스템 펌 웨어 해시값 입력
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_firm"></input>
	                  <button type="button" class="bluebtn" onclick="check(2)">확인</button>
                  </div>
                  <div id="hash_op">
	                  <div class="soft-text">
	                	  운영매개변수 해시값 입력
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_op"></input>
	                  <button type="button" class="bluebtn" onclick="check(3)">확인</button>
                  </div>
                  <div id="hash_step">                  
	                  <div class="soft-text">
	                  	설정정보 해시값 입력
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_step"></input>
	                  <button type="button" class="bluebtn" onclick="check(4)">확인</button>
                  </div>
                  <div id="hash_engine">                  
	                  <div class="soft-text">
	                   	 엔지니어링 S/W 해시
	                  </div>
	                  <input type="text" style="width:220px;" name="hash_engine"></input>
	                  <button type="button" class="bluebtn" onclick="check(5)">확인</button>
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
  var compare=0;
      $("#modal_open_btn").click(function(){
          $("#modal1").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal1").attr("style", "display:none");
      });

       $("input:checkbox").on('click', function() { 
           if ( $(this).prop('checked') ) {
			   $("input[name=hw_access]").val($(this).val());
		   }
       });
      function modal(x,y){
       	  var asset_id = $("select[name=asset_id]").val();
		  $.ajax({
				contentType : 'application/json',
				dataType : 'json',			     
  	       	    url: "/web/id_check.do",
	            type: "POST",
	            data:JSON.stringify({
					"asset_id":asset_id
	   		 	}),
	             success: function(data){              
	                if(data===1){
			            $("#hash_engine").attr("style", "display:none");
					}else{
			            $("#hash_firm").attr("style", "display:none");
			            $("#hash_op").attr("style", "display:none");
			            $("#hash_step").attr("style", "display:none");
					}
	             },
	             error: function(){
	                 alert("simpleWithObject err");
	             }
		  });
          $("#modal"+x).attr("style", "display:none");
          $("#modal"+y).attr("style", "display:block");
      }
      function check(x){
       	  var asset_id = $("select[name=asset_id]").val();
    	  var hash_logic = $("input[name=hash_logic]").val();
    	  var hash_firm = $("input[name=hash_firm]").val();
    	  var hash_op = $("input[name=hash_op]").val();
    	  var hash_step = $("input[name=hash_step]").val();
    	  var hash_engine = $("input[name=hash_engine]").val();
    	  
		  $.ajax({
				contentType : 'application/json',
  	       	    url: "/web/value_check.do",
	            type: "POST",
	            data:JSON.stringify({
					"asset_id":asset_id,
					"hash_logic":hash_logic,
					"hash_firm":hash_firm,
					"hash_op":hash_op,
					"hash_step":hash_step,
					"hash_engine":hash_engine,
					"integ_count":x
	   		 	}),
	             success: function(data){
		            var result = data.split("/");
		            if(result[0]==="OK"){
			            compare+=1;
		            	setResult(result[1],compare);               
						alert("올바른 해쉬값이 입력되었습니다.");
		            }else{
						alert("해쉬값을 확인해주세요");
				    }
	             },
	     		error:function(request, error) {
	    			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    		}
		  });
      }
      function setResult(x,compare){
          var result;
         if(x==="PLC" || x==="DCS"){
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