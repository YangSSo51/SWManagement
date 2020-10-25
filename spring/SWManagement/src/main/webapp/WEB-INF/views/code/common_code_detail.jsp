<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>상세코드 관리</title>
<script>
function getMastername(page){   
    var reprec = document.getElementById("reprec")
    //var category = document.getElementById("category_name");

    var reprec_value = reprec.options[reprec.selectedIndex].value;
   
    $.ajax({
          url: "./read.do",
          type: "GET",
          //data: "page="+page,
          data: {
                "reprec": reprec_value,
          },
          success: function(data){              
             var vo = data.vo;
             //alert(vo.reprec_n);       
             $("#reprec_n").val(vo.reprec_n);
            
          },
          error: function(){
              alert("simpleWithObject err");
          }
      });

 }
 function modify(){
      $(".checkbox").css("display", "inline");
 }
 // 여기서 받아왔어 체크 박스 이벤트 발생 함수라서
 function modify_detail(clicked_id, temp){
    //alert(temp);
   
       $.ajax({
             url: "./modify_detail.do", // 이 컨트롤러 함수에서
             type: "GET",
             //data: "page="+page,
             data: {
                   "id": clicked_id,
             },
             // 받아옴
             // WA!
             success: function(data){              
                var vo = data.vo;
                
                //alert(vo.reprec_n);
                //alert(vo.detail)      
                $("#modal").attr("style", "display:block");
                $("#id").val(vo.id);
                $("#detailc_n").val(vo.detailc_n);
                $("#detailc").val(vo.detailc);
                $("#reprec").val(vo.reprec).prop("selected", true); //값이 1인 option 선택
                //reprec_n
                //$("#detailc_n").val(vo.detailc_n);
               
             },
             error: function(){
                 alert("simpleWithObject err");
             }
         });
    
    //$("#modal").attr("style", "display:block");
    //alert(clicked_id);
 }

 $("#checkBoxId").change(function(){
     if($("#checkBoxId").is(":checked")){
         alert("체크박스 체크했음!");
     }else{
         alert("체크박스 체크 해제!");
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
               공통코드 관리(상세코드 등록)
          </div>
          <%@ include file="../topnav.jsp"%>
        </div>
      </header>
<%@ include file="../navbar.jsp"%>
            <div class="right-container">
            <form class="center_form" style="margin-top:10px;">
              <select class="select" name="">
                <option value="상세코드">상세코드</option>
              </select>
              <input type="search" name="" value="" placeholder="검색어 입력">
              <button type="button" name="button">검색</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/code/read"/>"><button type="button" name="button" class="white" >대표코드</button></a>
              <a href="<c:url value="/detail/read"/>"><button type="button" name="button" style="margin-left:-5px;">상세코드</button></a>
              <a><button type="button" name="button" style="float:right;" id="modal_open_btn">상세코드 등록</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th style="width:30px;">id</th>
                <th>상세코드</th>
                <th>상세코드명</th>
                <th>사용여부</th>
                <th>대표코드</th>
              </tr>
              
              <c:forEach var="code" items="${code}">
              <c:set var="title" value="${code.reprec}" />
              <tr>
                <td style="width:15px;"><input type="checkbox" id="${code.id}" class="checkbox" style="display:none" onclick="modify_detail(this.id)"></td>
                <td style="width:30px;"><c:out value = "${code.id }"/></td>
                <td><c:out value = "${code.detailc }"/></td>
                <td><c:out value = "${code.detailc_n }"/></td>
                <td><c:out value = "${code.use_value }"/></td>
                <td><c:out value = "${code.reprec }"/></td>
              </tr>
              </c:forEach>

            </table>
            <div class="button_group">
              <div class="center-page">
                <span><a href="<c:url value="/detail/read/1"/>">1</a></span>
                <span><a href="<c:url value="/detail/read/2"/>" style="color:#dbdbdb;">2</a></span>
              </div>
            </div>
              <!-- 등록 -->
              <div id="modal2">
                 <input type = "hidden">
                <div class="modal_layer">  
                <form class="code-form" name="codeform" action="<c:url value="/detail/add"/>" method="post">
                <div class="small_modal_content">
                  <div class="modal_title">
                          상세코드 등록
                  </div>                    
                  <p>
                    <span>대표코드</span>
                  </p>
                 <select class="" id="reprec" name="reprec" onchange="getMastername()" style="width:100px; margin-left:20px;">
                      <option value="none">==선택==</option>
                      <c:forEach var="master" items="${master}">                                
                        <option value="${master.reprec}" >${master.reprec}</option >
                       </c:forEach>
                  </select>
                  <p>
                    <span>대표코드명</span>
                  </p>
                  <input id="reprec_n" type="text" disabled></input>
                  <p>
                    <span>상세코드</span>
                  </p>
                    <input type="text" id="detailc" name = "detailc" placeholder="A1_1"></input>
                  <p>
                    <span>상세코드명</span>
                  </p>
                  <input type="text" id ="detailc_n" name = "detailc_n" placeholder="PLC/DCS"></input>
                  <p><span>사용여부</span></p>
                    <div class="modal_inner">
                      <span>예</span>
                      <label><input type="checkbox" name = "use_value" value = "O"></label>
                      <span>아니요</span>
                      <label><input type="checkbox" name = "use_value" value = "X"></label>
                    </div>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal2_close_btn">취소</button>
                      <button type="submit" id="submit">등록</button>
                    </div>                
                </div>
                </form>
              </div><!--modal layer-->
              </div><!--modal2-->
        </div>
  </body>
  <script>
        
      $("#modal_open_btn").click(function(){
          $("#modal2").attr("style", "display:block");
      });

      /*
      * 상세코드 수정 창 취소버튼
      */
      

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });

       /*
          * 상세코드 등록 창 취소버튼
          */
     

       $("#modal2_close_btn").click(function(){
           $("#modal2").attr("style", "display:none");
       });
  </script>
  
</html>