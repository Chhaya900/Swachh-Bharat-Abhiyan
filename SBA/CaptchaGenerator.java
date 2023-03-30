/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.util.Random;

/**
 *
 * @author dell 
 */
public class CaptchaGenerator {
 public  int getRange(int min,int max)
 {
     int n=max-min+10;
     return n;
 }
 public String getCaptchaCode()
 {
     String code="";
     Random rm=new Random();
     int n1=rm.nextInt(getRange(30,70));
      char ch1=(char)n1;  
      int n2=rm.nextInt(getRange(20,80));
      char ch2=(char)n2;
      int n3=rm.nextInt(getRange(40,100));
      char ch3=(char)n3;  
      int n4=rm.nextInt(getRange(25,97));
      char ch4=(char)n4;  
      int n5=rm.nextInt(getRange(30,120));
      char ch5=(char)n5; 
      code=code+ch1+ch2+ch3+ch4+ch5;
      return code;
}
 
}
