
package modelo;


public class Registro {
    String name;
    String tel;
    String email;
    String pwd;
    String address;
    String rol;
    
    public Registro() {
    }

    public Registro(String name, String tel, String email, String pwd, String address, String rol) {
        this.name = name;
        this.tel = tel;
        this.email = email;
        this.pwd = pwd;
        this.address = address;
        this.rol=rol;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getRol(){
    return rol;
    }
    
    public void setRol(String rol){
    this.rol=rol;
    }
}
