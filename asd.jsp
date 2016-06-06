<%-- 
    Document   : asd
    Created on : 2016/06/06, 11:17:12
    Author     : masa1
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>

<%
out.println("問題１,");
out.print("<br>");
Date past = new Date();
Calendar cal = Calendar.getInstance();
cal.set(2016,1,1,0,0,0);
Date calpast = cal.getTime();
out.print(calpast.getTime()+"<br><br>");

out.println("問題２,");
out.print("<br>");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
String sdate = sdf.format(past);
out.println(sdate+"<br><br>");

out.println("問題３,");
out.print("<br>");
SimpleDateFormat sdfd = new SimpleDateFormat("2016年11月4日10時00分00秒");
String sdfdpast = sdfd.format(past);
out.print(sdfdpast+"<br><br>");

out.println("問題４,");
out.print("<br>");
Calendar calf = Calendar.getInstance();
calf.set(2015,1,1,0,0,0);
Date calfpast = calf.getTime();
Calendar calh = Calendar.getInstance();
calh.set(2015,12,31,23,59,59);
Date calhpast = calh.getTime();
out.print(calhpast.getTime() - calfpast.getTime()+"<br><br>");

out.println("問題５,");
out.print("<br>");
String moji = "岡部";
out.println(moji.length()+"<br>");
out.println(moji.getBytes().length+"<br><br>");

out.println("問題６,");
out.print("<br>");
String bubun = "m.masadayo@gamil.com";
out.print(bubun.substring(10)+"<br><br>");

out.println("問題７,");
out.print("<br>");
String chikan = "「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」";
out.print(chikan.replace("I","い").replace("U","う")+"<br><br>");
    
File txt = new File("C:/Users/masa1/Desktop/sampleA/web/test.txt");
FileWriter fwa = new FileWriter(txt);
BufferedWriter bw = new BufferedWriter(fwa);

bw.write("問題８,");
bw.newLine();
bw.write("初めまして");
bw.newLine();
bw.write("岡部です");
bw.newLine();
bw.write("よろしくお願いします");
bw.close();

File txt2 = new File("C:/Users/masa1/Desktop/sampleA/web/test2.txt");
FileReader fr = new FileReader(txt2);
BufferedReader br = new BufferedReader(fr);
String str;
while((str = br.readLine()) != null){
   out.print(str);
}
out.print("<br><br>");

File txt3 = new File("C:/Users/masa1/Desktop/sampleA/web/test3.txt");
FileWriter a = new FileWriter(txt3);
BufferedWriter b = new BufferedWriter(a);
b.newLine();
b.write("問題１０,");
b.newLine();
Date date = new Date();
SimpleDateFormat now = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
String snow = now.format(date);
b.write("処理開始日時　"+snow);
b.newLine();
for(int i= 0; i<111111; i++){
b.write("Math.max(1686456,1684189) = " + Math.max(1686456,1684189));
b.newLine();
}
SimpleDateFormat fin = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
Date fini = new Date();
String finish = fin.format(fini);
b.write("処理終了日時　"+finish);
b.newLine();
b.close();
File txt4 = new File("C:/Users/masa1/Desktop/sampleA/web/test3.txt");
FileReader o = new FileReader(txt4);
BufferedReader f = new BufferedReader(o);
String st;
while((st = f.readLine()) != null){
   out.print(st);
}
f.close();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
</html>
