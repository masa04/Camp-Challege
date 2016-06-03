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
public class User extends Human {
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
      mycards .add (card); 
        }   
    }
    public boolean checkSum(ArrayList<Integer>Sdeal){
        int num =0;
        for (Integer card : Sdeal){
            num=num+card;
        if(num<12){  
             if(card == 1){
                 num=num+10;
        }
        }
        }
        if(num<18){
            boolean type = true;
            return type;
        }else{
            boolean type = false;
            return type;
        }
    }
     public ArrayList<Integer>hit(){
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
