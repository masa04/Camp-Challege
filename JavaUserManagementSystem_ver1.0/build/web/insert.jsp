<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans userdata = new UserDataBeans();
    userdata = (UserDataBeans)session.getAttribute("udb");
    
  //下のif文のために変数を定義してます。
   String a ="";
   String b ="";
   String c ="";
   String d ="";
   String e ="";
   String f ="";
   String g ="";
    
   //下のフォームのif文の変数
    if(userdata != null){
    a = userdata.getName();
    b = userdata.getYear();
    c = userdata.getMonth();
    d = userdata.getDay();
    e = userdata.getType();
    f = userdata.getTell();
    g = userdata.getComment();
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<% //insertconfirmからinsertへ再度入力する際のフォームの値を保持させる処理をvalueの中に書いています。
                  if(hs != null){ 
                      if(a != null){
                     out.print(a);
                    }
                }%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="">----</option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" <%                  //insertconfirmからinsertへ再度入力する際のフォームの値を
                    if(b != null){                     //保持させる処理をvalueの中に書いています。
                    if(b.equals(String.valueOf(i))){
                       out.print("selected");
                        }
                   }
                   %>
                    ><%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="">--</option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>" <%                 //insertconfirmからinsertへ再度入力する際のフォームの値を
                    if(c != null){                    //保持させる処理をvalueの中に書いています。
                    if(c.equals(String.valueOf(i))){
                       out.print("selected");
                        }
                   }
                   %>
                    ><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="" >--</option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>" <%                    //insertconfirmからinsertへ再度入力する際のフォームの値を
                    if(d != null){                       //保持させる処理をvalueの中書いています。
                    if(d.equals(String.valueOf(i))){
                       out.print("selected");
                        }
                   }
                   %>>
                <%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>   <%//insertconfirmからinsertへ再度入力する際のフォームの値を保持させる処理をvalueの中に書いています。%>
        <input type="radio" name="type" value="1"<%
                    if(e != null){
                    if(e.equals("1")){
                       out.print("checked");
                        }
                   }
                   %>>エンジニア<br>
        <input type="radio" name="type" value="2"<%
                    if(e != null){
                    if(e.equals("2")){
                       out.print("checked");
                        }
                   }
                   %>>営業<br>
        <input type="radio" name="type" value="3"<%
                    if(e != null){
                    if(e.equals("3")){
                       out.print("checked");
                        }
                   }
                   %>>その他<br>
        <br>
              <%//insertconfirmからinsertへ再度入力する際のフォームの値を保持させる処理をvalueの中に書いています。%>
        電話番号:   
        <input type="text" name="tell" value="<% 
                  if(hs != null){ 
                      if(f != null){
                     out.print(f);
                    }
                }
                 %>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%if(hs != null){ 
                       if(g != null) {
                    out.print(g);
                       }
                }
                %></textarea><br><br>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%//トップに戻るリンクが欲しいから作りました。%> 
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
