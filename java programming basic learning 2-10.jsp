<%--
    Document   : java
    Created on : 2016/05/25, 10:53:00
    Author     : masa1
--%>

<%
    out.print("課題10,<br><br>"); 
    String one = request.getParameter("a");   
    int num = Integer.parseInt( one ); 
     out.print(num+",");
    while(num % 2 == 0 || num % 3 == 0 || num % 5 == 0 ||num % 7 == 0){
     if (num % 2 == 0){
     num = num / 2;
     out.print(2+",");
     } else if (num % 3 == 0){
     num= num / 3 ;
     out.print(3+",");
     } else if (num % 5 == 0){
     num= num / 5 ;
     out.print(5+",");
     } else if (num % 7 == 0){
     num= num / 7 ;
     out.print(7+",");
     } 
    }
     if (num > 1){
         out.print("その他");
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
        <h1></h1>
    </body>
</html>
