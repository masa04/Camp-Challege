/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package intro;

/**
/ *
 * @author masa1
 */
public class Intro {

    public  static void methodA(String name, String birth, String address){
        
        System.out.println(name);
        System.out.println(birth);
        System.out.println(address);
    }   
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("問題１,");
        
        for(int i =0  ; i < 10 ; ++i){
        methodA("岡部 将宗", "1987 4 4", "住所　神奈川県");     
        }
        System.out.println("問題２,");
        methodB(2);
        System.out.println("問題３,");
        methodC(2);
        System.out.println("問題４,");  
        methodA("岡部 将宗", "1987 4 4", "住所　神奈川県",true);
        System.out.println("問題５,");
        methodD("1","岡部 将宗", "1987 4 4", "住所　神奈川県");
        System.out.println("問題６,");
        methodE(2);
        System.out.println("問題７,");
        methodF();
        System.out.println("問題８,");
        methodG();
    } 
    public static void methodB(int suji){
        if (suji%2 == 0){
            System.out.println("偶数です！");     
    } else{
            System.out.println("奇数です！");
    }
    }     
    public static void methodC(int x){
        methodC (x, 5, false);
    }
    public static void methodC(int x, int y, boolean type){ 
        int z = x*y;
         if(type==false){
             System.out.println(z);
         }else{
             System.out.println(z*z);
                 }      
        }
     public static void methodA( String name, String birth, String address, boolean type){
            if(type == true){
             System.out.println("この処理は正しく実行できました");
     } else{
           if(type == false){
             System.out.println("正しく実行できませんでした") ; 
         }
     }
}
     public static void methodD(String a, String b, String c, String d){
             System.out.println(b+c+d);
     }
     
    public static void methodE(int a){
          if(a == 1){
              System.out.println("織田、1534.6.23、住所 尾張");
    }else if(a == 2){
              System.out.println("武田、1521.12.1、住所 甲斐国");
    }else {        
              System.out.println("斎藤、1494.1.10、住所 美濃");
   }
    }
    
    public static void methodF(){
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
              System.out.println(aaa);
    }else if(a == 2){
              System.out.println(bbb);
    }else {        
              System.out.println(ccc);
       
    }
}
    }
    public static void methodG(){
        int limit= 2;
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
              System.out.println(aaa);
    }else if(a == 2){
              System.out.println(bbb);
    }else {        
              System.out.println(ccc);
       
    }
       if(limit == a){
           break;
       }
}  
    }
    }  