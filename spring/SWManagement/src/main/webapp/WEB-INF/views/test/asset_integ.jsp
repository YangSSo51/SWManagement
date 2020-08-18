<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>형상관리</title>
</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	자산 무결성 관리
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
          <div class="right-container" style="margin-top:100px;">
            <table class="list">
              <tr>
                <th style="width:30px;">id</th>
                <th>대분류</th>
                <th>소분류</th>
                <th>무결성 점검</th>
                <th>하드웨어 접근</th>
                <th>사용 여부</th>
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
                <button type="button" id="modal_open_btn">등록</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="modal_content">
                  <div class="modal_title">
                    자산 무결성 등록
                  </div>
                  <table class="modal_table">
                    <tr>
                      <th>유형</th>
                      <th>상세유형</th>
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
                      <span>무결성 유지 기능을 검사하였습니까?</span>
                      <label><input type="checkbox"></label>
                    </p>
                    <p>
                      <span>운영/제어로직 해시 값 입력</span>
                    </p>
                      <input type="text" placeholder="mdU8Jndflcv7xh"></input>
                    <p>
                    <span>엔지니어링 S/W 해시 값 입력</span>
                  </p>
                    <input type="text" placeholder="5vL73jZz9e23pf"></input>
                    <p>
                      <span>하드웨어 접근 통제를 하였습니까?</span>
                      <label><input type="checkbox"></label>
                    </p>
                    <p>
                      <span>사용 여부</span>
                      <label><input type="checkbox"></label>
                    </p>
                  </form>
                  </div>
                  <div class="modal_button">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="button" id="submit">등록</button>
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

          //다른 브라우저
          }else if(document.defaultView && document.defaultView.getComputedStyle){
              return document.defaultView.getComputedStyle(elem, null).getPropertyValue(cssprop2);

          //대비책
          }else{
              return null;
          }
      }
      function rgbToHex ( rgbType ){

        // 컬러값과 쉼표만 남기고 삭제.
        var rgb = rgbType.replace( /[^%,.\d]/g, "" );

        // 쉼표(,)를 기준으로 분리해서, 배열에 담기.
        rgb = rgb.split( "," );

        // 컬러값이 "%"일 경우, 변환하기.
        for ( var x = 0; x < 3; x++ ) {
                if ( rgb[ x ].indexOf( "%" ) > -1 ) rgb[ x ] = Math.round( parseFloat( rgb[ x ] ) * 2.55 );
        }

        // 16진수 문자로 변환.
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