<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,java.util.HashMap,java.util.regex.Pattern"%>
<! DOCTYPE HTML >
<% request.setCharacterEncoding("UTF-8"); %>
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
			<div id="name_area">レナ</div>
			<div class="arrow_question">
				<%
				String reply = request.getParameter("input");
				if(reply != null){

					String likeOrDislike = (String)session.getAttribute("input");
					if(likeOrDislike == null){
						likeOrDislike = "";
					}

					if(reply.matches(".*って.*回言って！")){

						int x = reply.indexOf("って",0);
						int y = reply.indexOf("回",0);

						String takeOut = reply.substring(0,x);
						String times = reply.substring(x+2,y);

                  		int number = Integer.parseInt(times);

                			for(int i = 1; i < number; i++){
                				out.print(takeOut);
                				if(number >= 10 && i == number-2){
                					break;
                				}
                			}

         					out.print("疲れた...");

                	} else {

						switch(reply){

						case "大好き":
							if(likeOrDislike.equals("好き！")){
								out.print("私も大好き");
								break;
							}

						case "好き！":
							out.print("ありがとう");
							break;

						case "嫌い":
							out.print("ひどい。。。");
							break;

						case "どうしても嫌い":
							if(likeOrDislike.matches("きらい！")){
								out.print("分かった。。。");
								break;
							} else {
								out.print(reply);
								break;
							}

						case "きらい！":
							out.print("どうして。。。");
							break;

						default:
							out.print(reply);
				   		}
                	}
					likeOrDislike = reply;
					session.setAttribute("input", likeOrDislike);
				}
				%>
			</div>
		</div>
	</div>
	<div>
		<form action="base.jsp" method="post">
			<textarea id="input" name="input"></textarea>
			<input type="submit" />
		</form>
	</div>
	<div>
		<form action="base.jsp" method="post">
			<input type="text" class="enz" name="enz1" /> <select name="enz_type">
				<option value="1">+</option>
				<option value="2">-</option>
				<option value="3">×</option>
				<option value="4">÷</option>
			</select> <input type="text" class="enz" name="enz2" /> <input type="submit" />
		</form>
	</div>
</body>
</html>
