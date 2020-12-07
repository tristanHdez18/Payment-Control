
package Interfaces;

import java.util.List;
import modelo.Registro;
import reports.Reports;


public interface CRUD {
    public boolean signUp(Registro n);
    public List listar();
    public Reports list(int id);
    public boolean pago( Reports r);
    public boolean edit(Reports r);
   // public boolean eliminar(int id);
}
