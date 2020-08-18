<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ڻ깫�Ἲ ����</title>
</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>�������ý���</p>
            <p>SW���� ���α׷�</p>
          </div>
          <div class="menu">
            	�ڻ깫�Ἲ ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
	<%@ include file="navbar.jsp"%>
          <div class="right-container" style="margin-top:100px;">
          	<form action="">
              <table class="asset_table">
                <tr>
                  <th>�ڻ�</th>
                  <th>����</th>
                </tr>
                <tr>
                  <td onclick="clickBtn(this)">001<i class="fa fa-caret-right"></i></td>
                  <td onclick="clickBtn(this)">Ver_2020_1<i class="fa fa-caret-right"></i></td>
                </tr>
                <tr>
                  <td onclick="clickBtn(this)">002<i class="fa fa-caret-right"></i></td>
                  <td onclick="clickBtn(this)">Ver_2020_2<i class="fa fa-caret-right"></i></td>
                </tr>
                <tr>
                  <td onclick="clickBtn(this)">003<i class="fa fa-caret-right"></i></td>
                  <td onclick="clickBtn(this)">Ver_2020_3<i class="fa fa-caret-right"></i></td>
                </tr>
                <tr>
                  <td onclick="clickBtn(this)">004<i class="fa fa-caret-right"></i></td>
                  <td onclick="clickBtn(this)">Ver_2020_4<i class="fa fa-caret-right"></i></td>
                </tr>
                <tr>
                  <td style="background-color: #fff;"></td>
                  <td onclick="clickBtn(this)">Ver_2020_5<i class="fa fa-caret-right"></i></td>
                </tr>
                <tr>
                  <td style="background-color: #fff;"></td>
                  <td style="background-color: #fff;">
                  	<button type="button" id="modal_open_btn" style="float:right;">�߰�</button>
                  </td>
                </tr>
              </table>
              </form>
              <div class="asset_right">
                <div class="asset_title">
              	    �̸����� â
                </div>
                <img src="<c:url value="/resources/test.png"/>" alt="">
                <button type="button" style="width:80px; float:right;">�󼼺���</button>
              </div>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
            	       ���Ἲ ���� ����
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>���ϸ�</span>
                    <input type="text"></input>
                  </p>
                  <p>
                    <span>������</span>
                    <input type="text"></input>
                  </p>
                  <p>
                    <span>��������</span>
                    <input type="text" style="margin-left:5px;"></input>
                  </p>
                  <p></p>
                  <p><span>���˳���</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="4" cols="38"></textarea>
                  </div>
                  <p><span>���Ἲ ����</span></p>
                  <div class="soft-text">
               	  �/������� �ؽ�
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">Ȯ��</button>
                  <div class="soft-text">
                  	  �����Ͼ S/W �ؽ�
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">Ȯ��</button>
                  <p><span>H/W ���� ����</span></p>
                  <div style="margin:3px 0 6px 30%;">
                    <span>��<input type="checkbox"></span><span>�ƴϿ�<input type="checkbox" name="no2"></span>
                  </div>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">���</button>
                    <button type="button" id="submit" onclick="modal(1,2)">����</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
            </div><!--right-container-->
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal1").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal1").attr("style", "display:none");
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