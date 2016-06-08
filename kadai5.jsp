<%-- 
    Document   : kadai5
    Created on : 2016/06/08, 13:10:35
    Author     : masa1
--%>

<%@page import="java.util.Date"%>
<%
     Date time = new Date();
    HttpSession hs = request.getSession(true);
    
   String a = (String)hs.getAttribute("n");
    
    String b =(String)hs.getAttribute("m");
    
    String c =(String)hs.getAttribute("r");
    
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>   
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JAVAデータ操作 応用編</title>
    </head>
    <body>
        <form action="http://localhost:8080/sampleA/detakadai5" method="post">
        <font size = 5, color = "green">名前:<br><br></font>
                 <input type="text" name="txtName" value="<% 
                  if(hs != null){ 
                      if(a != null){
                     out.print(a);
                    }
                }
                 %>"
                 >
            <h3><u>性別:</u></h3>
            <h3>
            <font color = "blue">
             男性
             </font>
            <input type="radio" name="rdoSample" value="Male" 
                   <%
                    if(c != null){
                    if(c.equals("Male")){
                       out.print("checked");
                        }
                   }
                   %>
                   >
             <font color = "red">女性</font>
                <input type="radio" name="rdoSample" value="Female"
                   <%
                    if(c != null){   
                   if(c.equals("Female")){
                       out.print("checked");
                        }
                    }
                   %>
                       >
            </h3>    
            <h3>＜趣味＞</h3>
            <textarea name="mulText"><%if(hs != null){ 
                       if(b != null) {
                    out.print(b);
                       }
                }
                %></textarea>
                  <input type="submit" name="btnSubmit">
        </form>   　
    </body>
</html>
