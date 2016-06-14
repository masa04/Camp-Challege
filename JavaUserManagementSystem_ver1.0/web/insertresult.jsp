<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
     UserDataBeans userdata = new UserDataBeans();
     userdata = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        名前:<%= userdata.getName()%><br>
        生年月日:<%= userdata.getYear()+"年"+userdata.getMonth()+"月"+userdata.getDay()+"日"%><br>
        種別:<%= userdata.getType()%><br>
        電話番号:<%= userdata.getTell()%><br>
        自己紹介:<%= userdata.getComment()%><br>
        以上の内容で登録しました。<br>
        
        <%//ここでセッションが必要なくなるので、セッションを切ります。%>
       <% hs .invalidate(); %><br>
    </body>
   <%//トップに戻るリンクが欲しいから作りました。%> 
     <%=JumsHelper.getInstance().home()%>
</html>