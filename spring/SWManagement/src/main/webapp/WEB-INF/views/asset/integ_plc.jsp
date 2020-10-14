<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>-->
<script src="<c:url value="/resources/serializeObject.js"/>"></script>

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
<%@ include file="../navbar.jsp"%>
        <div class="right-container">
            <form class="center_form" action="<c:url value="/asset/read/"/>" method="GET" >
              <input type="search" name="name" value="" placeholder="자산명 입력">
              <button type="submit" name="button">검색</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/asset/read/list/1"/>"><button type="button" name="button">PLC</button></a>
              <a href="<c:url value="/asset/read/list/2"/>"><button type="button" name="button" style="margin-left:-5px;" class="white">PC/Server</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th>자산명</th>
                <th>설비유형</th>
                <th>OS유형</th>
                <th>무결성 <br>점검 기능 <br>보유 여부</th>
                <th>하드웨어<br> 접근 통제 여부</th>
                <th>운영/제어로직<br> 해시 값 입력</th>
                <th style="width:120px;">제어시스템 펌웨어<br>해시 값 입력</th>
                <th>운영매개변수<br>해시 값 입력</th>
                <th>설정정보<br>해시 값 입력</th>
              </tr>
              <c:set var="i" value="0"/>
              <c:forEach items="${vo}" var="vo">
              <tr>
	                <td><c:out value="${vo.asset_name }"/></td>
	                <td><c:out value="${vo.main_device}"/></td>
	                <td><c:out value="${vo.sub_device}"/></td>
	                <td>${vo.integ_check}</td>
	                <td>${vo.hw_access}</td>
	                <c:choose>
	                	<c:when test ="${check[i] eq 'true'}">
	                		<td colspan="4">이미 해쉬값이 등록되었습니다.</td>
		           		</c:when>
		           		<c:otherwise>
		           			<td colspan="4"><button type="button" style="width:100px; margin:3px 0;" id="modal_open_btn">해시값 등록</button></td>
		           		</c:otherwise>
		           </c:choose>
		           <div id="modal1">
	                <div class="modal_layer">
	                <div class="middle_modal_content">
	                  <div class="modal_title">
	                    	무결성 매핑
	                  </div>
	                  <input type="text" name="asset_id" value="${vo.asset_id}" hidden></input>
	                  <div id="hash_logic">
		                  <div class="soft-text">
		                  	운영/제어로직 해시
		                  </div>
		                  <form method="POST" enctype="multipart/form-data" name="fileUploadForm">
		                  	<input type="file" name="file" style="margin: 5px 20px;"></input>
		                  </form>
		                  <input type="text" style="width:220px;" name="hash_logic"></input>
		                  <button type="button" style="margin-top:-10px; margin-left:0;" class="bluebtn" onclick="send(0)">변경</button>
	                  </div>
	                  <div id="hash_firm">
		                  <div class="soft-text">
		                	  제어시스템 펌 웨어 해시값 입력
		                  </div>
		                  <form method="POST" enctype="multipart/form-data" name="fileUploadForm">
		                  <input type="file" name="file" style="margin: 5px 20px;"></input>
		                  </form>
		                  <input type="text" style="width:220px;" name="hash_firm"></input>
		                  <button type="button" style="margin-top:-10px; margin-left:0;"  class="bluebtn" onclick="send(1)">변경</button>
	                  </div>
	                  <div id="hash_firm">
		                  <div class="soft-text">
		                	 운영매개변수 해시값 입력
		                  </div>
		                  <form method="POST" enctype="multipart/form-data" name="fileUploadForm">
		                  <input type="file" name="file" style="margin: 5px 20px;"></input>
		                  </form>
		                  <input type="text" style="width:220px;" name="hash_op"></input>
		                  <button type="button" style="margin-top:-10px; margin-left:0;"  class="bluebtn" onclick="send(2)">변경</button>
	                  </div>
	                  <div id="hash_firm">
		                  <div class="soft-text">
		                	  설정정보 해시값 입력
		                  </div>
		                  <form method="POST" enctype="multipart/form-data" name="fileUploadForm">
		                  <input type="file" name="file" style="margin: 5px 20px;"></input>
		                  </form>
		                  <input type="text" style="width:220px;" name="hash_step"></input>
		                  <button type="button" style="margin-top:-10px; margin-left:0;"  class="bluebtn" onclick="send(3)">변경</button>
	                  </div>
	                  
	                  <div class="modal_button" style="width:300px;">
	                    <button type="button" id="modal_close_btn">취소</button>
	                    <button type="submit" onclick="update()" >저장</button>
	                  </div>
	                </div>
	              </div><!--modal layer-->
	              </div><!--modal-->
              </tr>
              <c:set var="i" value="${i+1 }"/>
              </c:forEach>
            </table>
            </div><!--right-container-->
  </body>
  <script>
  $("#modal_open_btn").click(function(){
      $("#modal1").attr("style", "display:block");
  });
  function send(x){
	  var data = new FormData();
	  data.append("file",$("input[name=file]")[x].files[0]);

	  $.ajax({
			contentType : 'application/json',
			enctype: 'multipart/form-data',
			//dataType : 'json',	
		    contentType : false,
		    processData : false,
	       	url: "/web/file.do",
            type: "POST",
            data:data,
             success: function(data){              
	      	    if(x==0) $("input[name=hash_logic]").attr('value',data);
	      	    if(x==1) $("input[name=hash_firm]").attr('value',data);
	      	    if(x==2) $("input[name=hash_op]").attr('value',data);
	      	    if(x==3) $("input[name=hash_step]").attr('value',data);
             },
     		error:function(request, error) {
    			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    		}
	  });
  }
  function update(){
	  var hash_logic = $("input[name=hash_logic]").val();
	  var hash_firm = $("input[name=hash_firm]").val();
	  var hash_op = $("input[name=hash_op]").val();
	  var hash_step = $("input[name=hash_step]").val();
	  var asset_id = $("input[name=asset_id]").val();

	  $.ajax({
			contentType : 'application/json',
	        contentType: "application/json; charset=utf-8;",
	       	url: "/web/asset_update.do",
            type: "POST",
            data:JSON.stringify({
				"asset_id":asset_id,
				"hash_logic":hash_logic,
				"hash_firm":hash_firm,
				"hash_op":hash_op,
				"hash_step":hash_step,
				"main_device":1,
   		 	}),
             success: function(data){              
	   			window.location.href="/web/"+data;
             },
     		error:function(request, error) {
    			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    		}
	  });

  }
  </script>
  
</html>