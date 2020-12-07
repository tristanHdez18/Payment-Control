/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

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
      ps.setString(2, user.getPass());
     // ps.setString(3, user.getRoll());
      rs=ps.executeQuery();
      while(rs.next()){
          r=r+1;
      user.setMail(rs.getString("Mail"));
      user.setPass(rs.getString("Passwd"));
     // user.setRoll(rs.getString("Rol"));
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
    
}
