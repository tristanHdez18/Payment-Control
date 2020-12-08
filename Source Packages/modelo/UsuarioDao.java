/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author andrestellesrivera
 */
public class UsuarioDao implements Validar{
Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
   
    
    
    @Override
    public int val(Usuario user) {
        int r=0;
        
      String sql="Select * from Users where Mail=? and Passwd=?";
      
      try{
      con=cn.getConnection();
      ps=con.prepareStatement(sql);
      ps.setString(1, user.getMail());
      ps.setString(2, getMD5(user.getPass()));
    
      rs=ps.executeQuery();
      while(rs.next()){
          r=r+1;
      user.setMail(rs.getString("Mail"));
      
     user.setPass(getMD5(rs.getString("Passwd")));
     
      
      }
      if(r==1){
      return 1;
      }
      else {
      return 0;
      }
      }catch(Exception e){
      return 0;
      }
      
    }
    
     public String getMD5(String input) {
         try {

             MessageDigest md = MessageDigest.getInstance("MD5");
             byte[] encBytes = md.digest(input.getBytes());
             BigInteger numero = new BigInteger(1, encBytes);
             String encString = numero.toString(16);
             while (encString.length() < 32) {
                 encString = "0" + encString;
             }
             return encString;
         } catch (Exception e) {
             throw new RuntimeException(e);
         }

     }
    
}
