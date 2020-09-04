<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                <option value="터빈계통PLC">자동지진정지계</option>
              </select>
              <button type="button" name="button">선택</button>
            </div>
            <table class="danger-list1">
              <tr>
                <td style="border-right:none;">  (자동지진정지계)의 위험 관리 내역서</td>
                <td style="border-left:none;" ></td>
              </tr>
              <tr>
                <td class="small-td">점검일자</td>
                <td><input type="text" name="" value="점검일자 입력"></td>
              </tr>
              <tr>
                <td class="small-td">버전</td>
                <td>
                <select class="" name="">
                  <option value="">터빈제어설비_2020_1</option>
                  <option value="">터빈제어설비_2020_2</option>
                  <option value="">새 버전 추가</option>
                </select>
              </td>
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
            <div class="big_button_group">
              <a href="#"><button class="button">완료</button></a>
            </div>
        </div>
  </body>

</html>