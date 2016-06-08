<%-- 
    Document   : kadai 1
    Created on : 2016/06/08, 10:29:31
    Author     : masa1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>   
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JAVAデータ操作</title>
    </head>
    <body>
        <form action="http://localhost:8080/sampleA/datakadai1" method="post">
         <h3>ID:</h3>
                 <input type="text" name="txtName">     
         <h3>SEX:</h3>
            <h3>
             Male
            <input type="radio" name="rdoSample" value="Male">  
             Female
                <input type="radio" name="rdoSample" value="Female">
            </h3>    
            <h3>Hobby:</h3>
            <textarea name="mulText"></textarea>
                  <input type="submit" name="btnSubmit">
        </form>
    </body>
</html>
