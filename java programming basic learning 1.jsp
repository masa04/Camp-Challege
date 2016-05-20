<%
out.print("課題1,");
out.print("「Hello world」<br>");
out.print("<br>");
out.print("課題2,");
final String MSG = "groove";
String message = "gear";
out.print(MSG+"-"+message);
out.print("<br>");
out.print("<br>");
out.print("課題3,");
out.print("私の名前は岡部　将宗です。<br>");
out.print("　年は29歳です。<br>");
out.print("　趣味は筋トレとバイクです。<br>");
out.print("　住所は神奈川県綾瀬市で、出身地は群馬県の山奥のド田舎で、お隣さんが山を一つ越えた先で自然に囲まれた素晴らしい場所です。<br>");
out.print("  　仕事は今は辞めて、プログラマーになるために日々精進しています。<br>");
out.print("<br>");
out.print("課題4と5,<br>");
int num1 = 5;
final int num2 = 2;
int tasi = num1 + num2;
    out.print(num1+"+"+num2+"は、"+tasi+"です。");
    out.print("<br>");
int hiki = num1 - num2;
    out.print(num1+"-"+num2+"は、"+hiki+"です。");
    out.print("<br>");
int kake = num1 * num2;
    out.print(num1+"×"+num2+"は、"+kake+"です。");
    out.print("<br>");
int wari = num1 / num2;
    out.print(num1+"÷"+num2+"は、"+wari+"です。");
    out.print("<br>");
int amari = num1 % num2;
    out.print(num1+"/"+num2+"の余りは、"+amari+"です。<br>");
    out.print("<br>");
    out.print("課題6,");
    out.print("<br>");
    int num3 = 2;
     if (num3 == 1) {
        out.print("1です！<br>");
    } else {
        if (num3== 2) {
            out.print("プログラミングキャンプです！<br>");
        } else {
            out.print("その他です！<br>");
        }
    }
    out.print("<br>"); 
    out.print("課題7,");
    out.print("<br>");
    String sougaku = request.getParameter("sougaku");   
    String kosu = request.getParameter("kosu");    
    String syubetu = request.getParameter("syubetu");
    int num10 = Integer.parseInt( sougaku );
    int num11 = Integer.parseInt( kosu ); 
    int num12 = Integer.parseInt( syubetu );
    if  (num12 == 1){
        out.print("1:雑貨です！<br>");
    } else if (num12== 2) {
            out.print("2:生鮮食品です！<br>");
        } else {
            out.print("3:その他！<br>");
        }
    int wari1 = num10 / num11;
    out.print(num10+"円÷"+num11+"は、"+wari1+"円です。");
    out.print("<br>");
    int kake1 = wari1 * num11;
    out.print("<br>");
    if  (num10 >=5000){
        out.print("5000円以上購入でポイント5%です！<br>");
    out.print((wari1*num11)+"円は、"+kake1+"円購入したので4％のポイントが付く。");
    } else if (num10 >=3000) {
            out.print("3000円以上購入でポイント4%です！<br>");
        } else  {
            out.print("3000円以下購入なのでポイントは付きません！<br>"); 
    }
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
