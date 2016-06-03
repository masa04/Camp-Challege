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
abstract class Human {
    abstract protected void open();
    abstract protected void setCard(ArrayList<Integer>tehuda);
    abstract protected void checkSum();
    ArrayList<Integer> mycards =new ArrayList<>();
    
}
