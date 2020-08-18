<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<%@ include file="navbar.jsp"%>

          <div class="right-container">
            <div class="danger-select">
              <h3>위험 관리 내역을 확인할 자산을 선택하세요</h3>
              <select class="select" name="">
                <option value="터빈계통PLC">터빈계통PLC</option>
              </select>
              <button type="button" name="button">선택</button>
            </div>
            <table class="danger-list1">
              <tr>
                <td style="border-right:none;">  (터빈계통PLC)의 위험 관리 내역서</td>
                <td style="border-left:none;" ></td>
              </tr>
              <tr>
                <td class="small-td">점검일자</td>
                <td><input type="text" name="" value="점검일자 입력"></td>
              </tr>
              <tr>
                <td class="small-td">버전</td>
                <td><input type="text" name="" value="버전 입력"></td>
              </tr>
              <tr>
                <td class="small-td">점검주기</td>
                <td><input type="text" name="" value="점검주기 입력"></td>
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
                <td class="small-td">1</td>
                <td>인적보안 정책 및 절차</td>
                <td class="small-td">1.1</td>
                <td>개인 보안 정책을 수립하고 있는가?</td>
                <td class="small-td">상</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1</td>
                <td>인적반환</td>
                <td class="small-td">1.2</td>
                <td><p>접근 허가 프로그램은 개인 업무 종료시의</p><p>규정을 준수하고 있는가?</p></td>
                <td class="small-td">상</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1</td>
                <td>결함 고정</td>
                <td class="small-td">1.1</td>
                <td><p>자산 평가를 실시하여 결함이 제거되었는지</p><p>검증하고 있는가?</p></td>
                <td class="small-td">중</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1</td>
                <td>인적반환</td>
                <td class="small-td">1.2</td>
                <td><p>보안 경고 및 취약성 평가 프로세스를</p><p>식별하고 자산의 정확한 보안 결함을</p><p>알아내고 있는가?</p></td>
                <td class="small-td">상</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
            </table>
            <div class="big_button_group">
              <a href="#"><button class="button">완료</button></a>
            </div>
        </div>
</body>

</html>