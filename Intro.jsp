<%-- 
    Document   : aa
    Created on : 2016/05/30, 14:53:27
    Author     : masa1
--%>

<%@page import="java.io.IOException"%>
<%
     out.println("問題１,<br>");
      methodA(out,"岡部 将宗", "1987 4 4", "住所　神奈川県");
     out.println("<br>"); 
     out.println("問題２,<br>"); 
        methodB(out);
     out.println("<br>"); 
     out.println("問題３,<br>"); 
        methodC(out, 2);
        out.println("<br>");
       out.println("問題４,<br>"); 
        methodD(out,"岡部 将宗", "1987 4 4", "住所　神奈川県");
        for(int i=0; i<10; i++){
        if(methodD(out,"岡部 将宗", "1987 4 4", "住所　神奈川県")==true){
            out.print("この処理は正しく実行されました。<br><br>");
        }else{
            out.println("正しく実行できませんでした。");
        }
        }
        out.println("<br>");
       out.println("問題５,<br>");
          methodE(out,"岡部 将宗", "1987 4 4", "住所　神奈川県");
        out.println("<br>");
       out.println("問題６,<br>");  
        methodF(out,2);
         out.println("<br>");
       out.println("問題７,<br>");
        methodG(out);
          out.println("<br>");
       out.println("問題８,<br>");
         methodH(out);
%>
<%!
     void methodA(JspWriter out, String a, String b, String c){
    try{
     for(int i =0  ; i < 10 ; ++i){
        out.println(a+"<br>"+b+"<br>"+c+"<br><br>");
     }
    }catch(IOException e) {
        System.out.printf(e.getMessage());
        }
}
     void methodB(JspWriter out){
     try{
     int a = 2;
        if (a%2 == 0){
            out.println("偶数です！<br>");     
    } else{
            out.println("奇数です！<br>");
        }
    }catch(IOException e) {
        System.out.printf(e.getMessage());
        }
}
         public void methodC(JspWriter out, int x){
        methodC (out,x, 5, false);
    }
    public static void methodC(JspWriter out,int x, int y, boolean type){ 
  try{
        int z = x*y;
         if(type==false){
             out.println(z+"<br>");
         }else{
             System.out.println(z*z);
                 }
         }catch(IOException e) {
        System.out.printf(e.getMessage());
        }      
        }
   boolean methodD(JspWriter out, String a, String b, String c){
    try{
        out.println(a+"<br>"+b+"<br>"+c+"<br>");
    }catch(IOException e) {
        System.out.printf(e.getMessage());
        }
      return (true);
         }
       int methodE(JspWriter out, String a, String b, String c){
     try{
             out.println(a+"<br>"+b+"<br>"+c+"<br>");
         }catch(IOException e) {
        System.out.printf(e.getMessage());
        }
       return(1);
}
       void methodF(JspWriter out, int a){
     try{
          if(a == 1){
              out.println("織田、1534.6.23、住所 尾張");
    }else if(a == 2){
              out.println("武田、1521.12.1、住所 甲斐国");
    }else {        
              out.println("斎藤、1494.1.10、住所 美濃");
   }
         }catch(IOException e) {
        System.out.printf(e.getMessage());
        }
    }
          void methodG(JspWriter out){
    try{
    for (int a = 1;a<4; a++){
        String aa = "織田";
        String bb = "1534.6.23";
        String cc = "住所 尾張";
        String dd ="武田";
        String ee ="1521.12.1";
        String ff ="住所 甲斐国";
        String gg ="斎藤";
        String hh ="1494.1.10";
        String ii ="";
        String aaa = aa+bb+cc;
        String bbb = dd+ee+ff;
        String ccc = gg+hh+ii;       
    if(ii== null){
        continue;
    }
       if(a == 1){
              out.println(aaa+"<br>");
    }else if(a == 2){
              out.println(bbb+"<br>");
    }else {        
              out.println(ccc+"<br>");
       
    }
    }
    }catch(IOException e) {
        System.out.printf(e.getMessage());
        }
    }
     
          void methodH(JspWriter out){
    try{
     int limit = 2;
    for (int a = 1;a<4; a++){
        String aa = "織田";
        String bb = "1534.6.23";
        String cc = "住所 尾張";
        String dd ="武田";
        String ee ="1521.12.1";
        String ff ="住所 甲斐国";
        String gg ="斎藤";
        String hh ="1494.1.10";
        String ii ="";
        String aaa = aa+bb+cc;
        String bbb = dd+ee+ff;
        String ccc = gg+hh+ii;       
    if(ii== null){
        continue;
    }
       if(a == 1){
              out.println(aaa+"<br>");
    }else if(a == 2){
              out.println(bbb+"<br>");
    }else {        
              out.println(ccc+"<br>");
       
    }
        if(limit == a){
           break;
       }
    }
    }catch(IOException e) {
        System.out.printf(e.getMessage());
        }
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
