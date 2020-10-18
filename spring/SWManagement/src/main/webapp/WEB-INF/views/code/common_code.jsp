<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>대표코드 관리</title>
<script>

function modify(){
    $(".checkbox").css("display", "inline");
}
//히얼
function modify_detail(clicked_id, temp) {
	$.ajax({
		url: "./modify_master.do", //컨트롤러 함수
		type: "GET" ,
		data: {
			"id": clicked_id,
		},//받아옴
		success: function(data) {
			var vo = data.vo;

			$("#modal").attr("style", "display:block");
			$("#id").val(vo.id);
			$("#reprec").val(vo.reprec); //코드번호
			$("#reprec_n").val(vo.reprec_n); //코드명

			},

			error: function() {
				alert ("error");
			}

	});
} //function

$("#checkBoxId").change(function() {
	if($("#checkBoxId").is(":checked")) {
		alert("체크했음");
		}else{
		alert("체크해제");
			}
});

</script>

</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	공통코드 관리
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
                <option value="상세코드">상세코드</option>
              </select>
              <input type="search" name="" value="" placeholder="검색어 입력">
              <button type="button" name="button">검색</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/code/read"/>"><button type="button" name="button">대표코드</button></a>
              <a href="<c:url value="/detail/read/1"/>"><button type="button" name="button" class="white" style="margin-left:-5px;">상세코드</button></a>
              <a><button type="button" name="button" style="float:right;" id="modal_open_btn">대표코드 등록</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th style="width:30px;">id</th>
                <th>대표코드</th>
                <th>대표코드명</th>            
              </tr>
              
              <c:forEach var="code" items="${code }">
              <c:set var="title" value="${code.reprec }"/>
              <tr>
                <td style="width:15px;"><input type="checkbox" id="${code.id}" class="checkbox" style="display:none" onclick="modify_detail(this.id)" ></td>
                <td style="width:30px;"><c:out value = "${code.id }"/></td>
                <td><c:out value = "${code.reprec }"/></td>
                <td><c:out value = "${code.reprec_n }"/></td>
                
              </tr>
              </c:forEach>
             
            
            </table>
          
            <div class="button_group">
                <button type="button" id="modal_modify_btn" onclick="modify()">수정</button>
            </div>
         	  <!-- 등록 -->    	
              <div id="modal2">
              	
                <div class="modal_layer">
                <form class="code-form" name=codeform action="<c:url value="/code/add"/>" method="post">
                <div class="small_modal_content">
                  <div class="modal_title">
                   	 대표코드 등록
                  </div>                   
                  <p>
                    <span>코드번호</span>
                  </p>
                    <input type="text" name="reprec" placeholder=""></input>
                  <p>
                    <span>코드명</span>
                  </p>
                    <input type="text" name="reprec_n" placeholder=""></input>
                    <!-- 이 자리는 사용여부가 들어갈 수 있는 자리입니다. -->                 
                  	
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close2_btn">취소</button>
                    <button type="submit" id="submit">등록</button>
                  </div>
                </div>
                </form>
              </div><!--modal layer-->
              </div><!--modal-->
              
              <!-- 수정 -->    	
              <div id="modal">
              	
                <div class="modal_layer">
                <form class="code-form" name=codeform action="<c:url value="/code/update"/>" method="post">
                <div class="small_modal_content">
                  <div class="modal_title">
                   	 대표코드 등록
                  </div>
                  <input id="id" name="id" type="hidden"  ></input>                   
                  <p>
                  
                    <span>코드번호</span>
                  </p>
                    <input type="text" id="reprec" name="reprec" placeholder=""></input>
                  <p>
                    <span>코드명</span>
                  </p>
                    <input type="text" id="reprec_n" name="reprec_n" placeholder=""></input>
                    <!-- 이 자리는 사용여부가 들어갈 수 있는 자리입니다. -->                 
                  	
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="submit" id="submit">등록</button>
                  </div>
                </div>
                </form>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
  </body>
  <script>
  
  //$("#modal_modify_btn").click(function(){
   //   alert("hi");
  //});
 

   $("#modal_close_btn").click(function(){
      $("#modal").attr("style", "display:none");
  });
      $("#modal_open_btn").click(function(){
          $("#modal2").attr("style", "display:block");
      });

      $("#modal_close2_btn").click(function(){
          $("#modal2").attr("style", "display:none");
      });
     
  </script>
</html>