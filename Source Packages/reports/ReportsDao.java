/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reports;

import Interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Registro;


public class ReportsDao implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Reports r=new Reports();
    int re=0;

    @Override
    public boolean signUp(Registro n) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
   public List listar() {
      ArrayList<Reports> list = new ArrayList<>();
        String sql = "select * from Payments";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reports per = new Reports();
                per.setId(rs.getInt("ID_Users"));
                per.setProducto(rs.getString("NProduct"));
                per.setPrecio(rs.getInt("C_Price"));
                per.setFecha(rs.getString("Date"));
                per.setPago(rs.getInt("Pay"));
                per.setEstatus(rs.getString("Pay_Status"));
                per.setHora(rs.getString("Hour"));
                list.add(per);
            }

        } catch (Exception e) {
        }
        return list;
        
   }

    @Override
    public Reports list(int id) {
 ArrayList<Reports> list = new ArrayList<>();
        String sql = "select * from Payments where ID_Users="+id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reports per = new Reports();
                r.setId(rs.getInt("ID_Users"));
                r.setProducto(rs.getString("NProduct"));
                r.setPrecio(rs.getInt("C_Price"));
                r.setFecha(rs.getString("Date"));
                r.setPago(rs.getInt("Pay"));
                r.setEstatus(rs.getString("Pay_Status"));
                r.setHora(rs.getString("Hour"));
                
            }

        } catch (Exception e) {
        }
        return r;
    }

    @Override
    public boolean pago(Reports r) {
       String sql = "insert into Payments(NProduct, C_Price, Date, Pay, Pay_Status, Hour)values('" + r.getProducto() + "','" + r.getPrecio() + "','" + r.getFecha() + "','" + r.getPago() + "','" + r.getEstatus() + "','" + r.getHora() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }

        return false;
    }

    @Override
    public boolean edit(Reports r) {
     String sql = "update Payments set NProduct='" + r.getProducto() + "',C_Price='" + r.getPrecio() + "',Date='" + r.getFecha() + "',Pay='" + r.getPago() + "',Pay_Status='" + r.getEstatus() + "',Hour='" + r.getHora() + "'where ID_Users=" + r.getId();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }

        return false;
    }
    
   
    
}
