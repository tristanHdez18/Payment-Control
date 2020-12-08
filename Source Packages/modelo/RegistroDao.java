
package modelo;

import Interfaces.CRUD;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import reports.Reports;


public class RegistroDao implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro r=new Registro();
    
    @Override
    public boolean signUp(Registro n) {
   String pss=getMD5(n.getPwd());
    String sql = "insert into Users (Name,Passwd,Address,Tel,Mail,Rol) values('" + n.getName() + "','" +  pss + "','" + n.getAddress() + "','" + n.getTel() + "','" + n.getEmail() + "','" + n.getRol() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }

        return false;
    
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

    @Override
    public List listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Reports list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean pago(Reports r) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Reports r) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
