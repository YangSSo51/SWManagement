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
            	�����ڵ� ����(���ڵ� ���)
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
                <th>��ǥ�ڵ�</th>
                <th>��ǥ�ڵ��</th>
                <th>���ڵ�</th>
                <th>���ڵ��</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>A001</td>
                <td>�ڻ�</td>
                <td>A001_1</td>
                <td>�����������ġ</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>A001</td>
                <td>�ڻ�</td>
                <td>A001_2</td>
                <td>�ͺ����PLC</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>B001</td>
                <td>��� �����׸�</td>
                <td>B001_1</td>
                <td>��������</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>B001</td>
                <td>��� �����׸�</td>
                <td>B001_2</td>
                <td>��������</td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">���</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="small_modal_content">
                  <div class="modal_title">
                    ���ڵ� ���
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>��ǥ�ڵ�</span>
                  </p>
                  <div style="margin-left:20px;">
                    <select class="" name="">
                      <option value="">A001</option>
                    </select>
                  </div>
                  <p>
                    <span>��ǥ�ڵ��</span>
                  </p>
                    <input type="text" placeholder="�ڻ�"></input>
                  <p>
                    <span>���ڵ�</span>
                  </p>
                    <input type="text" placeholder=""></input>
                  <p>
                    <span>���ڵ��</span>
                  </p>
                    <input type="text" placeholder=""></input>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">���</button>
                      <button type="button" id="submit">���</button>
                    </div>
                  </form>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
        </section>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
  </script>
  
</html>