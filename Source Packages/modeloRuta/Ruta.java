
package modeloRuta;


public class Ruta {
 int id;
 String rec;
String ruta;

    public Ruta() {
    }

    public Ruta(int id, String rec, String ruta) {
        this.id = id;
        this.rec = rec;
        this.ruta = ruta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRec() {
        return rec;
    }

    public void setRec(String rec) {
        this.rec = rec;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

   

}
