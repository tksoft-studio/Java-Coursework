package com.hospital;
import java.sql.*;
import javax.swing.JOptionPane;

public class Connections {
   protected Connection con;
   protected Statement qry;
   protected ResultSet rs;
   
   public void Connect(){
       //Making database connection Constructor
       try{ 
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opd","root","");
            qry = con.createStatement();
       }
       catch(Exception ex){
           JOptionPane.showMessageDialog(null, "There is an ERROR : " + ex);
       }
   }
   
}
