<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<%@ include file="navbar.jsp"%>
        <div class="right-container">
            <form class="center_form" action="<c:url value="/asset/read/"/>" method="GET" >
              <input type="search" name="name" value="" placeholder="자산명 입력">
              <button type="submit" name="button">검색</button>
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
              <c:forEach items="${vo}" var="vo">
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(${vo.asset_id})"></td>
                <form name="form">
	                <input type="text" name="vo[${vo.asset_id}][asset_id]" value="${vo.asset_id}" hidden disabled>
	                <td><c:out value="${vo.asset_name }"/></td>
	                <td><c:out value="${vo.main_device}"/></td>
	                <td><c:out value="${vo.sub_device}"/></td>
	                <td><input type="text" name="vo[${vo.asset_id}][integ_check]" value="${vo.integ_check}" disabled></td>
	                <td><input type="text" name="vo[${vo.asset_id}][hw_access]" value="${vo.hw_access}" disabled></td>
	                <td><input type="text" name="vo[${vo.asset_id}][hash_logic]" value="${vo.hash_logic}" disabled></td>
	                <td><input type="text" name="vo[${vo.asset_id}][hash_engine]" value="${vo.hash_engine}" disabled></td>
              	</form>
              </tr>
              </c:forEach>
            </table>
            <div class="button_group">
                <button type="button" id="updateBtn">수정</button>
            </div>
            </div><!--right-container-->
  </body>
  <script>
  !function(e,i){if("function"==typeof define&&define.amd)define(["exports","jquery"],function(e,r){return i(e,r)});else if("undefined"!=typeof exports){var r=require("jquery");i(exports,r)}else i(e,e.jQuery||e.Zepto||e.ender||e.$)}(this,function(e,i){function r(e,r){function n(e,i,r){return e[i]=r,e}function a(e,i){for(var r,a=e.match(t.key);void 0!==(r=a.pop());)if(t.push.test(r)){var u=s(e.replace(/\[\]$/,""));i=n([],u,i)}else t.fixed.test(r)?i=n([],r,i):t.named.test(r)&&(i=n({},r,i));return i}function s(e){return void 0===h[e]&&(h[e]=0),h[e]++}function u(e){switch(i('[name="'+e.name+'"]',r).attr("type")){case"checkbox":return"on"===e.value?!0:e.value;default:return e.value}}function f(i){if(!t.validate.test(i.name))return this;var r=a(i.name,u(i));return l=e.extend(!0,l,r),this}function d(i){if(!e.isArray(i))throw new Error("formSerializer.addPairs expects an Array");for(var r=0,t=i.length;t>r;r++)this.addPair(i[r]);return this}function o(){return l}function c(){return JSON.stringify(o())}var l={},h={};this.addPair=f,this.addPairs=d,this.serialize=o,this.serializeJSON=c}var t={validate:/^[a-z_][a-z0-9_]*(?:\[(?:\d*|[a-z0-9_]+)\])*$/i,key:/[a-z0-9_]+|(?=\[\])/gi,push:/^$/,fixed:/^\d+$/,named:/^[a-z0-9_]+$/i};return r.patterns=t,r.serializeObject=function(){return new r(i,this).addPairs(this.serializeArray()).serialize()},r.serializeJSON=function(){return new r(i,this).addPairs(this.serializeArray()).serializeJSON()},"undefined"!=typeof i.fn&&(i.fn.serializeObject=r.serializeObject,i.fn.serializeJSON=r.serializeJSON),e.FormSerializer=r,r});
   
      function check(x){
  		if($("input[name=check]").is(":checked")){ 
				document.getElementsByName('vo['+x+'][asset_id]')[0].removeAttribute("disabled");
    			document.getElementsByName('vo['+x+'][integ_check]')[0].removeAttribute("disabled");
    			document.getElementsByName('vo['+x+'][hw_access]')[0].removeAttribute("disabled");
    			document.getElementsByName('vo['+x+'][hash_logic]')[0].removeAttribute("disabled");
    			document.getElementsByName('vo['+x+'][hash_engine]')[0].removeAttribute("disabled");
    			
   		}else {
   			document.getElementsByName('vo['+x+'][asset_id]')[0].setAttribute("disabled",true);
   			document.getElementsByName('vo['+x+'][integ_check]')[0].setAttribute("disabled",true);
   			document.getElementsByName('vo['+x+'][hw_access]')[0].setAttribute("disabled",true);
   			document.getElementsByName('vo['+x+'][hash_logic]')[0].setAttribute("disabled",true);
   			document.getElementsByName('vo['+x+'][hash_engine]')[0].setAttribute("disabled",true);
   		}
   		
   	}
      $('#updateBtn').on('click', function(){
    		var form = {}
    		form = $('form').serializeObject();
    	    $.ajax({
    	        url: "/web/asset/update",
    	        type: "POST",
    	        data: JSON.stringify(form),
    	        contentType: "application/json; charset=utf-8;",
    	        dataType: "json",
    	        success: function(data){
    	            for(var i=0; i<data.length; i++){
    	                $('#result').append(data[i]);
    	            }
    	        }
    	    });
    	    location.reload();
    	})
  </script>
  
</html>