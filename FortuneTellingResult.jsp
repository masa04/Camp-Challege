<%-- 
    Document   : FortuneTellingResult
    Created on : 2016/05/24, 17:59:21
    Author     : masa1
--%>

<%@page import="org.camp.servlet.ResultDat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
           ResultDat data = (ResultDat)request.getAttribute("DATA");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          if (data != null) {
              out.print("<h1>あなたの"+data.getD() +"の運勢は、"+data.getLuck()+"です！<h1>");
          }
      %>
    </body>
</html>
