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
        <title>JUMS登録確認画面</title>
    </head>
    <body>　　
        <% if(userdata.getName().equals("")){
        out.print("名前が未入力です。");
        }%>
        
        <% if(userdata.getYear().equals("")){
        out.print("年が未入力です。");
        }%>
        
        <% if(userdata.getMonth().equals("")){
        out.print("月が未入力です。");
        }%>
        
        <% if(userdata.getDay().equals("")){
        out.print("日が未入力です。");
        }%>
        
        <% if(userdata.getType() == null){
        out.print("種別が未入力です。");
        }%>
        
        <% if(userdata.getTell().equals("")){
        out.print("電話番号が未入力です。");
        }%>
        
         <% if(userdata.getComment().equals("")){
        out.print("自己紹介が未入力です。");
        }%>
        
    <% if(!userdata.getName().equals("")&&!userdata.getYear().equals("")&&
         !userdata.getMonth().equals("")&&!userdata.getDay().equals("")&&
         userdata.getType() != null&&!userdata.getTell().equals("")&&
         !userdata.getComment().equals(""))
        {%>  
        <h1>登録確認</h1>
        名前:<%= userdata.getName()%><br>
        生年月日:<%= userdata.getYear()+"年"+userdata.getMonth()+"月"+userdata.getDay()+"日"%><br>
        種別:<%= userdata.getType()%><br>
        電話番号:<%= userdata.getTell()%><br>
        自己紹介:<%= userdata.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
          <%}%>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <br>
        <%//トップに戻るリンクが欲しいから作りました。%> 
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
