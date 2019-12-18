<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<! DOCTYPE HTML >

<% request.setCharacterEncoding("UTF-8"); %>
<%
	String answer = (String) request.getAttribute("answer");
%>
<html>
  <head>
    <meta title="プログラム学習TOPページ">
    <meta charset="utf-8">
    <link href="style.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    <div id="block1">
      <div id="img_area">
        <img src="f001.png" alt="main_img" id="main_img" />
      </div>
      <div id="side_area">
        <div id="name_area">
          レナ
        </div>
        <div  class="arrow_question">
          <%=answer %>
        </div>
      </div>
    </div>
    <div>
      <form action="hello" method="post">
        <textarea id="input" name="input"></textarea>
        <input type="submit" />
      </form>
    </div>
    <div>
      <form action="calc" method="post">
        <input type="text" class="enz" name="enz1"/>
        <select name="enz_type">
          <option value="1">+</option>
          <option value="2">-</option>
          <option value="3">×</option>
          <option value="4">÷</option>
        </select>
        <input type="text" class="enz" name="enz2"/>
        <input type="submit" />
      </form>
    </div>
  </body>
</html>
