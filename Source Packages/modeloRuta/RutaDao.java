
package modeloRuta;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Conexion;

public class RutaDao {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    public int agregar(Ruta p){
    Conexion cn=new Conexion();
    String sql="insert into Recibos(Nombre, Ruta)values(?,?)";
    try{
     con=cn.getConnection();
     ps=con.prepareStatement(sql);
     ps.setString(1, p.getRec());
     ps.setString(2, p.getRuta());
     ps.executeUpdate();
    }catch(Exception e){
     
       
    
    }
    return r;
    }
}
