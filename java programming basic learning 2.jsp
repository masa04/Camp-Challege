<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap" %>
<%
    out.print("課題１,");
    out.print("<br>");
    int num = 2; String message = "  ";
    switch(num) {
        case 1:
            message = "oneです。";
            break;
        case 2:
            message = "twoです。";
            break;
        default:
            message = "想定外の値です。";
            break;
    }
    out.println(message);
    out.print("<br><br>");
    out.print("課題2,");
    out.print("<br>");
    char moji = 'あ';
    String message1 = "  ";
    switch(moji) {
        case 'A':
            message = "英語です。";
            break;
        case 'あ':
            message = "日本語です。";
            break;
        default:
            message ="それ以外は何も表示しない処理。";
            break;
    }
 out.println(message);
out.print("<br><br>");
    out.print("課題3,<br>");
long answer=1;
    for( int i=0; i<20; i++ ){ 
           answer = answer * 8; 
          out.print(answer+"<br>");     
          }   
    out.print("<br>");
 out.print("課題4,<br>");
 String answer1="";
for( int i=0; i<30; i++ ){ 
           answer1 = answer1 + "A"; 
          out.print(answer1+"<br>");     
          }   
  out.print("<br>");
 out.print("課題5,<br>");
 int answer3=0;
    for( int i=1; i<101; i++ ){ 
           answer3 = answer3 + i;
          out.print(answer3+"<br>");   
          }
    out.print("<br>");
 out.print("課題6,<br>");
 int num5 = 1000;
 while (num5 > 100){ 
     num5 = num5 / 2;
     out.print(num5+"<br>");
 }
 out .print("終了です。"+"<br><br>");
 out.print("課題7&8,"+ ",<br>");

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    ArrayList<String> al = new ArrayList<String>();
    al.add("10");
    al.add("100");
    al.add("soeda");
    al.add("hayashi");
    al.add("-20");
    al.add("118");
    al.add("END");
    al.set(2, "30");
    out.print(al.toString()+ "<br><br>");
    out.print("課題9,"+ "<br>"); 
    HashMap<String, String> hMap = 
new HashMap<String, String>();

    hMap.put("1", "AAA");
    hMap.put("hello", "world");
    hMap.put("soeda", "33");
    hMap.put("20", "20");
    out.print(hMap.toString());



%>
    </body>
</html>
