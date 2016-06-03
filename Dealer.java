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
public class Dealer extends Human {
    ArrayList<Integer>cards = new ArrayList<>();
    
    public Integer open(ArrayList<Integer>tehuda){
          int num = 0 ;
        for(Integer card : tehuda){
            num = num+card;
            if(num<12){  
             if(card == 1){
                 num=num+10;
        }
    }
        }
        return num;
    }
    
    public void setCard(ArrayList<Integer>tehuda) {
       for(Integer card : tehuda){
           mycards.add(card);
       }
    }
     public boolean checkSum(ArrayList<Integer>Sdeal){
          int num = 0 ;
       for(Integer card : Sdeal ){
          num = num+card;
     if(num<12){  
             if(card == 1){
                 num=num+10;
         }
     }  
       }
     if(num <18){
        boolean type =true;
        return type;
     } else {
        boolean type =false;
        return type;
    }
     }
     
     public void makeCards(){
         for(int y = 0; y<4; y++){
            for(int i = 1; i<11; i++){
                this.cards.add(i);
            }
            for(int x = 0; x<3; x++){
                int t=10;
                this.cards.add(t);
            }
        }
}
     public ArrayList<Integer> Sdeal(){
         ArrayList<Integer> w= new ArrayList<>();
         for(int i = 0; i<2; i++){
         int r = new java.util.Random().nextInt(10);
         w.add(this.cards.get(r));
         cards.remove(r);
         }
        return w; 
     }
     public ArrayList<Integer> hit(){
         ArrayList<Integer> w = new ArrayList<>();
         int r = new java.util.Random().nextInt(10);
         w.add(this.cards.get(r));
          cards.remove(r);
        return w;
     }

    @Override
    protected void open() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void checkSum() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}


