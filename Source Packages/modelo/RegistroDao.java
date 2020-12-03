
package modelo;

import Interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class RegistroDao implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro r=new Registro();
    
    @Override
    public boolean signUp(Registro n) {
    
    String sql = "insert into Users (Name,Passwd,Address,Tel,Mail) values('" + n.getName() + "','" + n.getPwd() + "','" + n.getAddress() + "','" + n.getTel() + "','" + n.getEmail() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }

        return false;
    
}
    
    
    
}
