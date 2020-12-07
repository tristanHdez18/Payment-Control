
package modelo;

public class Usuario {
    String mail;
    String pass;
    String roll;
    int id;

    public Usuario() {
    }

    public Usuario(String mail, String pass, int id, String roll) {
        this.mail = mail;
        this.pass = pass;
        this.id = id;
        this.roll=roll;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getRoll(){
    return roll;
    }
    
    public void setRoll(String roll){
    this.roll=roll;
    }
    
}
