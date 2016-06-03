/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

import java.util.ArrayList;

/**
 *
 * @author masa1
 */
public class BlackJack {

    /*
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      Dealer D= new Dealer();
      User U= new User();
      D.makeCards();
      D.setCard(D.Sdeal());
      U.setCard(D.Sdeal());  
       if(D.open(D.mycards)==21){
           System.out.print("[ ");
           for(Integer v : D.mycards){
             System.out.print(v+" ");
           }
          System.out.print("]"); 
          System.out.println(""); 
          System.out.println("ＢｌａｃｋＪａｃｋ ディーラーの勝ち");
           
      }else if(U.open(U.mycards)==21){
          System.out.print("[ ");
           for(Integer g : U.mycards){
       System.out.print(g+" ");
           }
          System.out.print("]"); 
          System.out.println("");
          System.out.println("ＢｌａｃｋＪａｃｋ ユーザーの勝ち");
           
      }else {
      while(D.checkSum(D.mycards)==true){
          D.setCard(D.hit());
      }
        System.out.print(" ディーラー [ ");
      for(Integer v : D.mycards){
        System.out.print(v+" ");
    }
       System.out.print("]");
      while(U.checkSum(U.mycards)==true){
          U.setCard(D.hit());
      }
       System.out.print(" ユーザー [ ");
      for(Integer g : U.mycards){
       System.out.print(g+" ");
      }   
      System.out.println("]");
        System.out.println("結果判定");
       if(U.open(U.mycards)>21){
          System.out.println("ディーラーの勝ち");
      }else if (D.open(D.mycards)>21){
          System.out.println("ユーザーの勝ち");
      }else if(D.open(D.mycards)<21){
          System.out.println("ユーザーの勝ち"); 
      }else if(U.open(U.mycards)<21){
          System.out.println("ディーラーの勝ち");    
      }else if (D.open(D.mycards)<U.open(U.mycards)){
          System.out.println("ユーザーの勝ち");
      }else if (D.open(D.mycards)>U.open(U.mycards)){
          System.out.println("ディーラーの勝ち");
      }else{
          System.out.println("引き分けです。");
      }
      }
}
}

