<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
</head>
<body>
<header>
        <div class="top">
          <div class="home">
            <p>�������ý���</p>
            <p>SW���� ���α׷�</p>
          </div>
          <div class="menu">
            	���� ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
        <div class="right-container">
            <form class="center_form">
              <select class="select" name="">
                <option value="�ڻ��">�ڻ��</option>
                <option value="����">����</option>
              </select>
              <input type="search" name="" value="" placeholder="">
              <button type="button" name="button">�˻�</button>
            </form>
              <table class="list" style="margin-top:50px;">
                <tr>
                  <th style="width:30px;">id</th>
                  <th>�ڻ��</th>
                  <th>�����������</th>
                  <th>��������</th>
                  <th>�����ֱ�</th>
                </tr>
                <tr>
                  <td style="width:30px;">1</td>
                  <td>�����Ұ溸����/MCR OIS</td>
                  <td>�����Ұ溸����/MCR OIS_2020_1</td>
                  <td>2020.09.30</td>
                  <td>3�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">2</td>
                  <td>�ֱ޼�����/DCS</td>
                  <td>�ֱ޼�����/DCS_2020_1</td>
                  <td>2020.08.28</td>
                  <td>2�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">3</td>
                  <td>�ֱ޼�����/�����</td>
                  <td>�ֱ޼�����/�����_2020_2</td>
                  <td>2020.07.15</td>
                  <td>2�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">4</td>
                  <td>�����Ұ溸����/PLC</td>
                  <td>�����Ұ溸����/PLC_2020_2</td>
                  <td>2020.06.01</td>
                  <td>1�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">5</td>
                  <td>������������/PLC</td>
                  <td>������������/PLC_2020_1</td>
                  <td>2020.03.02</td>
                  <td>1�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">6</td>
                  <td>�������ð���/����PC</td>
                  <td>�������ð���/����PC_2020_1</td>
                  <td>2020.03.01</td>
                  <td>2�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">7</td>
                  <td>�ڵ�������������/PLC</td>
                  <td>�ڵ�������������/PLC_2020_1</td>
                  <td>2020.01.15</td>
                  <td>2�б�</td>
                </tr>
              </table>
        </div>
        <div class="button_group" style="width:1350px;">
          <a href="<c:url value="/risk/manage"/>"><button class="button" style="width:80px;">�������</button></a>
        </div>
  </body>

</html>