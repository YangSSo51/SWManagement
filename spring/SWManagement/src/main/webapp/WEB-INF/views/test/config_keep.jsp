<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������</title>
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
                <option value="���ڵ�">���ڵ�</option>
              </select>
              <input type="search" name="" value="" placeholder="�˻��� �Է�">
              <button type="button" name="button">�˻�</button>
            </form>
            <table class="list">
              <tr>
                <th style="width:30px;">id</th>
                <th>�ڻ��</th>
                <th>�۾� ��û��</th>
                <th>�������</th>
                <th>��������</th>
                <th>���ο���</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>ServerWin7_1</td>
                <td><button type="button" class="detail-btn">�󼼺���</button></td>
                <td>2019-03-14</td>
                <td>2019-04-02</td>
                <td><i class="fa fa-check"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>PcWinXP_1</td>
                <td><button type="button" class="detail-btn">�󼼺���</button></td>
                <td>2019-09-26</td>
                <td>2019-07-07</td>
                <td><i class="fa fa-close"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>PLC_3</td>
                <td><button type="button" class="detail-btn">�󼼺���</button></td>
                <td>2019-11-15</td>
                <td>-</td>
                <td><i class="fa fa-check"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>ServerUnix_9</td>
                <td><button type="button" class="detail-btn">�󼼺���</button></td>
                <td>2020-01-04</td>
                <td>2020-03-31</td>
                <td><i class="fa fa-close" ></i></td>
              </tr>
              <tr>

            </table>

            <div class="button_group">
                <button type="button" id="modal_open_btn" style="width:80px;">�۾� ���</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
                    �۾� ��û��
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>�ڻ��</span>
                    <input type="text" placeholder="ServerWin7_1"></input>
                  </p>
                  <p>
                    <span>��û��</span>
                    <input type="text" placeholder="Hanium(�����)"></input>
                  </p>
                  <p>
                    <span>��û����</span>
                    <input type="text" placeholder="2020-03-31" style="width:165px;"></input>
                  </p>
                  <p>
                    <span>�۾�����</span>
                    <input type="text" placeholder="2020-04-02" style="width:165px;"></input>
                  </p>
                  <p>
                    <span style="margin-right:15px;">�۾� ����</span>
                    <select class="" name="">
                      <option value="">���α׷� ������Ʈ</option>
                    </select>
                  </p>
                  <p></p>
                  <p><span>�۾� ����</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="4" cols="35" placeholder="ServerWin7_1 ���� ����Ʈ���� ������Ʈ �۾�"></textarea>
                  </div>
                  <p><span>�ʿ� ������</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="2" cols="35" placeholder="�ڻ� ������Ʈ ����"></textarea>
                  </div>
                  <p><span>�޸�</span></p>
                    <textarea name="name" rows="2" cols="35" placeholder="."></textarea>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">���</button>
                    <button type="button" id="submit">����</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
</body>
<script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
       $("#submit").click(function(){
           $("#modal").attr("style", "display:none");
       });
  </script>
</html>