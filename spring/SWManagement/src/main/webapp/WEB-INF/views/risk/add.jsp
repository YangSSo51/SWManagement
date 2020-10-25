<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<c:url value="/resources/serializeObject.js"/>"></script>

<meta charset="utf-8">
<title>위험 관리</title>
   <style>
   	nav{
   		height:200%;
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
            	위험 관리
          </div>
          <%@ include file="../topnav.jsp"%>>
        </div>
      </header>
<%@ include file="../navbar.jsp"%>
          <div class="right-container">
             <form class="" action="<c:url value="/risk/add"/>" method="post">
            <table class="danger-list1">
              <tr>
                <td style="border-right:none;">(주급수계통/DCS)의 위험 관리 내역서</td>
                <td style="border-left:none;" ></td>
              </tr>
              <tr>
                <td class="small-td">점검일자</td>
                <td><input type="text" name="date"></td>
              </tr>
              <tr>
                <td class="small-td">자산명</td>
                <td>
	              <select class="" name="asset_id">
	                <c:forEach items="${asset_vo}" var="vo">
	                	<option value="${vo.asset_id }" ><c:out value="${vo.asset_name}"/></option>
	                </c:forEach>
	              </select>
              </td>
              </tr>
              <tr>
                <td class="small-td">점검주기</td>
                <td><input type="text" name="cycle" placeholder="점검주기 입력"></td>
              </tr>
            </table>
            <table class="danger-list1" style="border-top:none;">
              <tr>
                <td style="border-top:none; border-bottom:none; text-align: center;">취약점 점검 항목 이행 여부 검사</td>
              </tr>
              </table>
              <table class="danger-list2">
              <tr>
                <th class="small-td">분야번호</th>
                <th>점검분야</th>
                <th class="small-td">항목번호</th>
                <th>점검항목</th>
                <th class="small-td">중요도</th>
                <th>이행여부</th>
              </tr>
              <c:set var="i" value="0"/>
              <c:forEach items="${list}" var="list">
              <tr>
              <form name="form">
              <input type="hidden" name="item_num" value="${list.item_num}"/>
                <td class="small-td">${list.field_num }</td>
                <td>${list.field }</td>
                <td class="small-td">${list.item_num }</td>
                <td>${list.item}</td>
                <td class="small-td">${list.importance}</td>
                <td><select class="yn-select" name="result">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
                </form>
              </tr>
              <c:set var="i" value="${i+1 }"/>
              </c:forEach>
            </table>
            <div class="big_button_group">
              <button class="button" type="submit" onclick="send()">완료</button>
            </div>
            </form>
        </div>
  </body>
<script>
/*
function select(){
 	  var risk_id = $("select[name=risk_id]").val();
	  $.ajax({
	 contentType : 'application/json',
       	  url: "/web/risk_select.do",
          type: "POST",
          data:JSON.stringify({
				"risk_id":risk_id
 		 	}),
           success: function(data){              
   			alert("성공"+data);
   			window.location.href="/web/"+data;
           },
    		error:function(request, error) {
    			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    		}
	  });
}
*/
function send(){
	var totData = new Object();

	var dataList = new Array();

    <c:set var="i" value="0"/>
    <c:forEach items="${list}" var="list">
		var data = new Object();
		  i = "${i}";
		    	
		data["item_num"] = document.getElementsByName('item_num')[i].value;

		data["result"] = document.getElementsByName('result')[i].value;
		
	
		//data["result"] = $("select[name=result[i+1]]").val();
	
		dataList.push(data);
     <c:set var="i" value="${i+1 }"/>
	 </c:forEach>

	totData["list"] = dataList;
	  
	  $.ajax({
	 contentType : 'application/json',
     	  url: "/web/risk_storage.do",
        type: "POST",
        data:JSON.stringify(totData),
         success: function(data){              
 			alert("성공"+data);
 			window.location.href="/web/"+data;
         },
  		error:function(request, error) {
  			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
  		}
	  });
}
</script>

</html>