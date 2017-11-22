/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aqpg;

import java.io.*;
/**
 *
 * @author Shivani Tiwary
 */
public class FileCreation {
    public static int printQuestionsToFile(String s) throws IOException{
        FileWriter fWriter=null;
        BufferedWriter writer=null;
        try{
            fWriter=new FileWriter("E:\\text.txt");
            writer=new BufferedWriter(fWriter);
            writer.write(s);
            writer.newLine();
            writer.close();
        } catch(Exception e){
            System.out.println("Error!");
        }
        return 1;
    }
    
}
