<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>위험 관리</title>
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
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="../navbar.jsp"%>
          <div class="right-container">
            <div class="danger-select">
              <h3>위험 관리 내역을 확인할 버전을 선택하세요</h3>
              <h3>*위험관리보고서를 추가하려면 '새 버전 추가'를 선택하세요</h3>
              <select class="" name="risk_id" style="margin-left:20px;">
                <c:forEach items="${list}" var="vo">
                	<option value="${vo.risk_id }" ><c:out value="${vo.version}"/></option>
                </c:forEach>
                     <option value="0" >새 버전 추가</option>
              </select>
              <button type="button" name="button" onclick="select()">선택</button>
            </div>
            <table class="danger-list1">
              <tr>
                <td style="border-right:none;">(${asset_name.asset_name })의 위험 관리 내역서</td>
                <td style="border-left:none;" ></td>
              </tr>
              <tr>
                <td class="small-td">점검일자</td>
                <td>${vo.date }</td>
              </tr>
              <tr>
                <td class="small-td">자산명</td>
                <td>${asset_name.asset_name }</td>
              </tr>
              <tr>
                <td class="small-td">점검주기</td>
                <td>${vo.cycle }</td>
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
              <tr>
                <td class="small-td">1.1</td>
                <td>계정관리</td>
                <td class="small-td">1.1</td>
                <td>필수디지털자산 계정 관리(승인, 사용, 변경, 불용 및 삭제 절차) 및 문서화를 하고 있는가?</td>
                <td class="small-td">상</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1.1</td>
                <td>계정관리</td>
                <td class="small-td">1.2</td>
                <td>검토절차의 수립 및 이에 따른 필수디지털자산 계정의 <br>불법적인 사용 및 변경 여부에 대해 주기적 검토를 하고 있는가?(최소 분기 1회)</td>
                <td class="small-td">중</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1.1</td>
                <td>계정관리</td>
                <td class="small-td">1.3</td>
                <td>주어진 업무를 수행하는데 필요한 만큼의 제한된 접근권한을 각 계정에 부여하고 있는가?</td>
                <td class="small-td">상</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1.1</td>
                <td>계정관리</td>
                <td class="small-td">1.4</td>
                <td>업무의 변경 시 계정에 대한 접근권한 검토를 통해 <br>업무에 기반한 제한된 접근권한이 부여되고 있음을 보장하고 있는가?</td>
                <td class="small-td">상</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
            </table>
        </div>
  </body>
<script>
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
</script>
</html>