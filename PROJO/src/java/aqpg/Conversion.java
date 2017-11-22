/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aqpg;
import java.util.*;
import java.lang.String;
/**
 *
 * @author Shivani Tiwary
 */
public class Conversion {
    
   public static int convert(String s) {
    int i,sz,num=0;
    sz=s.length();
    
    for(i=0;i<sz;i++)
    {
      num=num*10;
      switch(s.charAt(i)){
          case '0':num+=0;break;
          case '1':num+=1;break;
          case '2':num+=2;break;
          case '3':num+=3;break;
          case '4':num+=4;break;
          case '5':num+=5;break;
          case '6':num+=6;break;
          case '7':num+=7;break;
          case '8':num+=8;break;
          case '9':num+=9;break;        
      }
    }   return num; 
}    
}
