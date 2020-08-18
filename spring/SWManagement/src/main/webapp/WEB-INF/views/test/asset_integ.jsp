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
            	�ڻ� ���Ἲ ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
          <div class="right-container" style="margin-top:100px;">
            <table class="list">
              <tr>
                <th style="width:30px;">id</th>
                <th>��з�</th>
                <th>�Һз�</th>
                <th>���Ἲ ����</th>
                <th>�ϵ���� ����</th>
                <th>��� ����</th>
              </tr>
              <tr>
                <td>1</td>
                <td>PLC</td>
                <td>-</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td>2</td>
                <td>DCS</td>
                <td>-</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Server</td>
                <td>Win 7</td>
                <td>O (PsFCIV)</td>
                <td>O</td>
                <td>X</td>
              </tr>
              <tr>
                <td>4</td>
                <td>PC</td>
                <td>Linux</td>
                <td>O (MdSsum)</td>
                <td>O</td>
                <td>O</td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">���</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="modal_content">
                  <div class="modal_title">
                    �ڻ� ���Ἲ ���
                  </div>
                  <table class="modal_table">
                    <tr>
                      <th>����</th>
                      <th>������</th>
                    </tr>
                    <tr>
                      <td onclick="clickBtn(this)">PLC/DCS<i class="fa fa-caret-right"></i></td>
                      <td onclick="clickBtn(this)">Window XP<i class="fa fa-caret-right"></i></td>
                    </tr>
                    <tr>
                      <td onclick="clickBtn(this)">PC/Server<i class="fa fa-caret-right"></i></td>
                      <td onclick="clickBtn(this)">Window 2000<i class="fa fa-caret-right"></i></td>
                    </tr>
                    <tr>
                      <td style="background-color: #fff;"></td>
                      <td onclick="clickBtn(this)">Window 2003<i class="fa fa-caret-right"></i></td>
                    </tr>
                    <tr>
                      <td style="background-color: #fff;"></td>
                      <td onclick="clickBtn(this)">Window Vista<i class="fa fa-caret-right"></i></td>
                    </tr>
                    <tr>
                      <td style="background-color: #fff;"></td>
                      <td onclick="clickBtn(this)">Window 7<i class="fa fa-caret-right"></i></td>
                    </tr>
                    <tr>
                      <td style="background-color: #fff;"></td>
                      <td onclick="clickBtn(this)">Window 8<i class="fa fa-caret-right"></i></td>
                    </tr>
                  </table>
                  <div class="modal_right">
                    <form class="" action="index.html" method="post">
                    <p>
                      <span>���Ἲ ���� ����� �˻��Ͽ����ϱ�?</span>
                      <label><input type="checkbox"></label>
                    </p>
                    <p>
                      <span>�/������� �ؽ� �� �Է�</span>
                    </p>
                      <input type="text" placeholder="mdU8Jndflcv7xh"></input>
                    <p>
                    <span>�����Ͼ S/W �ؽ� �� �Է�</span>
                  </p>
                    <input type="text" placeholder="5vL73jZz9e23pf"></input>
                    <p>
                      <span>�ϵ���� ���� ������ �Ͽ����ϱ�?</span>
                      <label><input type="checkbox"></label>
                    </p>
                    <p>
                      <span>��� ����</span>
                      <label><input type="checkbox"></label>
                    </p>
                  </form>
                  </div>
                  <div class="modal_button">
                    <button type="button" id="modal_close_btn">���</button>
                    <button type="button" id="submit">���</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
              
            </div><!--right-container-->
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
      function getStyle(elem, cssprop, cssprop2){
          //IE
          if(elem.currentStyle){
              return elem.currentStyle[cssprop];

          //�ٸ� ������
          }else if(document.defaultView && document.defaultView.getComputedStyle){
              return document.defaultView.getComputedStyle(elem, null).getPropertyValue(cssprop2);

          //���å
          }else{
              return null;
          }
      }
      function rgbToHex ( rgbType ){

        // �÷����� ��ǥ�� ����� ����.
        var rgb = rgbType.replace( /[^%,.\d]/g, "" );

        // ��ǥ(,)�� �������� �и��ؼ�, �迭�� ���.
        rgb = rgb.split( "," );

        // �÷����� "%"�� ���, ��ȯ�ϱ�.
        for ( var x = 0; x < 3; x++ ) {
                if ( rgb[ x ].indexOf( "%" ) > -1 ) rgb[ x ] = Math.round( parseFloat( rgb[ x ] ) * 2.55 );
        }

        // 16���� ���ڷ� ��ȯ.
        var toHex = function( string ){
                string = parseInt( string, 10 ).toString( 16 );
                string = ( string.length === 1 ) ? "0" + string : string;

                return string;
        };

        var r = toHex( rgb[ 0 ] );
        var g = toHex( rgb[ 1 ] );
        var b = toHex( rgb[ 2 ] );

        var hexType = "#" + r + g + b;

        return hexType;
      }
      var clickTimes = 0;
      function clickBtn(x){
        var currentColor = getStyle(x, "backgroundColor", "background-color");
        currentColor = rgbToHex(currentColor).toUpperCase();
        if(currentColor=="#FFFFFF") x.style.backgroundColor="#E1E1E1";
        if(currentColor=="#E1E1E1") x.style.backgroundColor="#fff";
      }
  </script>
  
</html>