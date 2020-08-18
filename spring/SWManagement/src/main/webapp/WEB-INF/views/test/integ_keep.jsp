<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>자산무결성 관리</title>
</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	자산무결성 관리
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
	<%@ include file="navbar.jsp"%>
          <div class="right-container" style="margin-top:100px;">
          	<form action="">
              <table class="asset_table">
                <tr>
                  <th>자산</th>
                  <th>버전</th>
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
                  	<button type="button" id="modal_open_btn" style="float:right;">추가</button>
                  </td>
                </tr>
              </table>
              </form>
              <div class="asset_right">
                <div class="asset_title">
              	    미리보기 창
                </div>
                <img src="<c:url value="/resources/test.png"/>" alt="">
                <button type="button" style="width:80px; float:right;">상세보기</button>
              </div>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
            	       무결성 유지 점검
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>파일명</span>
                    <input type="text"></input>
                  </p>
                  <p>
                    <span>점검자</span>
                    <input type="text"></input>
                  </p>
                  <p>
                    <span>점검일자</span>
                    <input type="text" style="margin-left:5px;"></input>
                  </p>
                  <p></p>
                  <p><span>점검내용</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="4" cols="38"></textarea>
                  </div>
                  <p><span>무결성 매핑</span></p>
                  <div class="soft-text">
               	  운영/제어로직 해시
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">확인</button>
                  <div class="soft-text">
                  	  엔지니어링 S/W 해시
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">확인</button>
                  <p><span>H/W 점검 여부</span></p>
                  <div style="margin:3px 0 6px 30%;">
                    <span>예<input type="checkbox"></span><span>아니요<input type="checkbox" name="no2"></span>
                  </div>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">취소</button>
                    <button type="button" id="submit" onclick="modal(1,2)">저장</button>
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