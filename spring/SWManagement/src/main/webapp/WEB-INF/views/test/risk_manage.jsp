<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            <div class="danger-select">
              <h3>���� ���� ������ Ȯ���� �ڻ��� �����ϼ���</h3>
              <select class="select" name="">
                <option value="�ͺ����PLC">�ͺ����PLC</option>
              </select>
              <button type="button" name="button">����</button>
            </div>
            <table class="danger-list1">
              <tr>
                <td style="border-right:none;">  (�ͺ����PLC)�� ���� ���� ������</td>
                <td style="border-left:none;" ></td>
              </tr>
              <tr>
                <td class="small-td">��������</td>
                <td><input type="text" name="" value="�������� �Է�"></td>
              </tr>
              <tr>
                <td class="small-td">����</td>
                <td><input type="text" name="" value="���� �Է�"></td>
              </tr>
              <tr>
                <td class="small-td">�����ֱ�</td>
                <td><input type="text" name="" value="�����ֱ� �Է�"></td>
              </tr>
            </table>
            <table class="danger-list1" style="border-top:none;">
              <tr>
                <td style="border-top:none; border-bottom:none; text-align: center;">����� ���� �׸� ���� ���� �˻�</td>
              </tr>
              </table>
              <table class="danger-list2">
              <tr>
                <th class="small-td">�о߹�ȣ</th>
                <th>���˺о�</th>
                <th class="small-td">�׸��ȣ</th>
                <th>�����׸�</th>
                <th class="small-td">�߿䵵</th>
                <th>���࿩��</th>
              </tr>
              <tr>
                <td class="small-td">1</td>
                <td>�������� ��å �� ����</td>
                <td class="small-td">1.1</td>
                <td>���� ���� ��å�� �����ϰ� �ִ°�?</td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1</td>
                <td>������ȯ</td>
                <td class="small-td">1.2</td>
                <td><p>���� �㰡 ���α׷��� ���� ���� �������</p><p>������ �ؼ��ϰ� �ִ°�?</p></td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1</td>
                <td>���� ����</td>
                <td class="small-td">1.1</td>
                <td><p>�ڻ� �򰡸� �ǽ��Ͽ� ������ ���ŵǾ�����</p><p>�����ϰ� �ִ°�?</p></td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1</td>
                <td>������ȯ</td>
                <td class="small-td">1.2</td>
                <td><p>���� ��� �� ��༺ �� ���μ�����</p><p>�ĺ��ϰ� �ڻ��� ��Ȯ�� ���� ������</p><p>�˾Ƴ��� �ִ°�?</p></td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
            </table>
            <div class="big_button_group">
              <a href="#"><button class="button">�Ϸ�</button></a>
            </div>
        </div>
</body>

</html>