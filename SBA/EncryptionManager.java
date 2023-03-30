/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;


/**
 *
 * @author dell
 */
public class EncryptionManager {
    
    public String encryptData(String plainText)
    {
        String EncryptText="";
        for(int i=0;i<plainText.length();i++)
        {
            char ch=plainText.charAt(i);
            char newChar;
            int n=ch;    //Get ASCII Value
            if(n>=65&&n<=90)
            {
             n=65-n+122;
            
            }
            else if(n>=97&& n<=122)
            {
            n=97-n+90;
            }
            else if(n>=48&&n<=57)
            {
            n=48-n+57;    
            }
            newChar=(char)n;
            EncryptText=EncryptText+newChar;
            }
        return EncryptText;
        }
    }
    

