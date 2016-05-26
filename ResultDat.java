/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.Serializable;
import java.util.Date;
import java.util.Random;

/**
 *
 * @author masa1
 */
public class ResultDat implements Serializable{ 
   private Date d;
   private String luck;
   
   public ResultDat(){}
    /**
     * @return the d
     */
   public Date getD() {
       return d;
   }
   
   /**
     * param d the d to set
     */
   
   public void setD(Date d) {
       this.d = d;
   }
   
   public void setLuck(String g) {
       this.luck = g ;
   }
   
     /**
     * @return the luck
     */
   
   public String getLuck() {
       return luck;
   } 
}
