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
            	�ڻ� ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
<section>

          <div class="right-container">
            <table class="list" style="margin-top:180px;">
              <tr>
                <th style="width:30px;">Id</th>
                <th>�ڻ��</th>
                <th>��� ����</th>
                <th>�����׸����� ����</th>
                <th>����Ȯ��</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>ServerWin7_1</td>
                <td>2020-03-31</td>
                <td>YES</td>
                <td>YES</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>PcWinXP_1</td>
                <td>2020-03-25</td>
                <td><button type="button" onclick="openbtn()" class="detail-btn">�����׸� ����</button></td>
                <td>NO</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>PLC_3</td>
                <td>2020-03-11</td>
                <td><button type="button" onclick="openbtn()" class="detail-btn">�����׸� ����</button></td>
                <td>NO</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>ServerUnix_9</td>
                <td>2020-03-07</td>
                <td>YES</td>
                <td>YES</td>
              </tr>

            </table>

            <div class="button_group">
                <button type="button" style="width:100px;">�ű� �ڻ� ���</button>
            </div>
            <div id="modal1">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                  �ڻ� ���� �׸� ����-[����� ���� �׸�]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�о߹�ȣ</th>
                    <th>���˺о�</th>
                    <th>�׸� ��ȣ</th>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td>W1</td>
                    <td>���� ����</td>
                    <td>1.1</td>
                    <td class="long-td">Administrator ���� �̸��� �ٲپ��°�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td">������ �׷쿡 �ּ����� ����� �����Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                  <tr>
                    <td>W2</td>
                    <td>�α� ����</td>
                    <td>2.1</td>
                    <td class="long-td">�α��� ������ ���� �� ���� �Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td">�������� �׼����� �� �ִ� ������Ʈ�� ��� Ȯ���� �ߴ°�?</td>
                    <td><span>Y<input type="checkbox" ></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(1,2)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal2">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                  �ڻ� ���� �׸� ����-[���Ἲ ���� ��� ž�� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td class="long-td">���Ἲ ���� ����� ž���� �ڻ��ΰ�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button"class="continue" onclick="modal(2,3)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal3">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                  �ڻ� ���� �׸� ����-[Secure Coding ���� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�׸��ȣ</th>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td class="long-td">���α׷��� ��� ������ ���� ��ο� ���ؼ� ������� �˻����� �ʰų�,�ҿ����ϰ� �˻��Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td class="long-td">SW�� �߿��� ���� ���� �ڿ��� ���Ͽ� �б� �Ǵ� �����ϱ� ������ �ǵ����� �ʰ� �㰡�Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td class="long-td">����� ��ȣȭ �˰����� ����Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td class="long-td">�߿������� Plain Text�� �����Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td class="long-td">Hardcoding�� �н����带 ����ϰ� �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td class="long-td">�������� ���� ���� ���� ����ϰ� �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>7</td>
                    <td class="long-td">�߿� �������� �������� ��Ű�� ����ǰų� ��Ű ���� �ð��� �� ���ΰ�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>8</td>
                    <td class="long-td">��Ʈ ���� �ܹ��� �ؽ��Լ��� ����ϰ� �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>9</td>
                    <td class="long-td">�������� �ҽ��ڵ� �Ǵ� ���������� ���Ἲ �˻� ���� �ٿ�޴°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>10</td>
                    <td class="long-td">�ݺ��� ���� �õ� ���� ����� ���°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" id="no"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(3,4)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal4">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                  �ڻ� ���� �׸� ����-[�ű� ����� �� �Ǽ��ڵ� ���� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>���˺о�</th>
                    <th>�׸� ��ȣ</th>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td>�����</td>
                    <td>1.1</td>
                    <td class="long-td"><strong>�޸� �浹</strong> ������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td"><strong>SQL Injection</strong> ������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.3</td>
                    <td class="long-td"><strong>���� �ź� </strong>������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.4</td>
                    <td class="long-td"><strong>���� ��� </strong>������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.5</td>
                    <td class="long-td"><strong>���� ���� </strong>������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td>�Ǽ��ڵ�</td>
                    <td>2.1</td>
                    <td class="long-td"><strong>��(Worm) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td"><strong>��Ʈ ��(Rootkits) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.3</td>
                    <td class="long-td"><strong>Ʈ���̸�(Trojan horse) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.4</td>
                    <td class="long-td"><strong>��������(Ransomware)) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.5</td>
                    <td class="long-td"><strong>Ʈ������(Trapdoor) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(4,5)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal5">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                  �ڻ� ���� �׸� ����(��������)-[���� �Ѽ� ���� Ȯ��]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td class="long-td">���� ó�� �� �ڻ� �Ѽյ� ������ �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes2"></span><span>N<input type="checkbox"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(5,6)">����ϱ�</button>
                  <button type="button" onclick="closebtn(5)" style="width:80px;">���� ó��</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal6">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                  �ڻ� ���� �׸� ����(��������)-[���/���� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th style="width:30px;">�׸� ��ȣ</th>
                    <th>���� �о�</th>
                    <th>�����׸�</th>
                    <th style="width:70px;">���� ����</th>
                  </tr>
                  <tr>
                    <td style="width:30px;">1</td>
                    <td>��Ʈ��ũ �߰�</td>
                    <td class="long-td">���������̰ų� ������ ���� ��� �����Ͱ� ���ԵǴ� ��쿡�� ���,����,����͸� ���� �ʼ� ���񽺸� �����ϴ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">2</td>
                    <td>���� ���Ӽ�</td>
                    <td class="long-td">���� ���Ӽ� Ȯ���� ���� ����� ���������� �����ǰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">3</td>
                    <td>���ȱ��</td>
                    <td class="long-td">�ĺ�/����,��������,���� �� ���� ������ ��ȣ �� ���ȼ� Ȯ���� ���� ���ȱ���� �����ϰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">4</td>
                    <td>������ġ ����</td>
                    <td class="long-td">���� ����Ʈ����κ��� ����� �޾� ���� ��ġ�� �����ϴ� ������ ���������� �����ϰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">5</td>
                    <td>���� ����</td>
                    <td class="long-td">���� ����Ʈ����κ��� ����� �޾� ���� ��ġ�� �����ϴ� ������ ����� �����ϰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">6</td>
                    <td>� ����</td>
                    <td class="long-td">���� �ϵ����� ����ϸ� ���� ��ġ�� ���¸� ����͸��ϰ� ���� ����� ���������� ������ �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(5,6)">����ϱ�</button>
                  <button type="button" onclick="closebtn(6)" style="width:80px;">���� ó��</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
        </div>
        </section>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal1").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal5").attr("style", "display:none");
      });
    function openbtn(){
      $("#modal1").attr("style", "display:block");
    }
    function closebtn(x){
      $("#modal"+x).attr("style", "display:none");
    }

    function modal(x,y){
      $("#modal"+x).attr("style", "display:none");
      $("#modal"+y).attr("style", "display:block");
    }
     $("input[name=yes]").click(function(){
        alert(" *���� �׸� ������ ��� ������ �� �����ϴ�.\n������ �׸��� ���޻� ���� ������ �� ��� �����ϼ���.");
    });
    $("input[name=yes2]").click(function(){
       alert(" *������ �ý��� �����ҿ� ������ �� �����ϴ�.\n������ �ý��� ������ ���� ó�� ���ֽñ� �ٶ��ϴ�.");
   });
      $("input[name=no]").click(function(){
         alert(" *���� �׸� ������ ��� ������ �� �����ϴ�.\n������ �׸��� ���޻� ���� ������ �� ��� �����ϼ���.");
     });
     $("input[name=no2]").click(function(){
        alert(" *������ �ý��� �����ҿ� ������ �� �����ϴ�\n������ �ý��� ������ ���� ó�� ���ֽñ� �ٶ��ϴ�.");
    });
  </script>
  
</html>