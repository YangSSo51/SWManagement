<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ���� �׸�</title>
</head>
<body>
<header>
        <div class="top">
          <div class="home">
            <p>�������ý���</p>
            <p>SW���� ���α׷�</p>
          </div>
          <div class="menu">
            	����� ���� �׸�
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>

          <div class="right-container" style="margin-top:100px;">
            <table class="list" style="width:1100px;">
              <tr>
                <th style="width:50px;">�о� ��ȣ</th>
                <th>���� �о�</th>
                <th>�׸��ȣ</th>
                <th>�����׸�</th>
                <th>�߿䵵</th>
              </tr>
              <tr>
                <td style="width:50px;">1</td>
                <td>�������� ��å �� ����</td>
                <td>1.1</td>
                <td>���� ���� ��å�� �����ϰ� �ִ°�?</td>
                <td>��</td>
              </tr>
              <tr>
                <td style="width:50px;"></td>
                <td>���� ��ȯ</td>
                <td>1.2</td>
                <td>���� �㰡 ���α׷��� ���� ���� ���� ���� ������ �ؼ��ϰ� �ִ°�?</td>
                <td>��</td>
              </tr>
              <tr>
                <td style="width:50px;">2</td>
                <td>���� ����</td>
                <td>2.1</td>
                <td>�ڻ� �򰡸� �ǽ��Ͽ� ������ ���ŵǾ����� �����ϰ� �ִ°�?</td>
                <td>��</td>
              </tr>
              <tr>
                <td style="width:50px;"></td>
                <td></td>
                <td>2.2</td>
                <td>���� ��� �� ��༺ �� ���μ����� �ĺ��ϰ� �ڻ��� ��Ȯ�� ���� ������ �˾Ƴ��� �ִ°�?</td>
                <td>��</td>
              </tr>
            </table>
              <div class="button_group" style="width:1100px;">
                  <button type="button" id="modal_open_btn" style="width:110px;">�����׸� ���</button>
              </div>
                <div id="modal">
                  <div class="modal_layer">
                  <div class="small_modal_content">
                    <div class="modal_title">
                      �����׸� ���
                    </div>
                      <form class="" action="index.html" method="post">
                    <p>
                      <span>�����о� ��ȣ</span>
                    </p>
                      <input type="text" placeholder=""></input>
                    <p>
                      <span>�����׸� ��ȣ</span>
                    </p>
                      <input type="text" placeholder=""></input>
                      <p>
                        <span>�����׸� �߿䵵</span>
                      <select class="" name="">
                        <option value="">��</option>
                      </select>
                    </p>
                      <p>
                        <span>�����׸� ����</span>
                      </p>
                      <textarea name="name" rows="8" cols="35"></textarea>
                    </form>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">���</button>
                      <button type="button" id="submit">���</button>
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