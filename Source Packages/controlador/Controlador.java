/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;


import java.io.IOException;
import java.io.PrintWriter;
import static java.sql.JDBCType.NULL;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Registro;
import modelo.RegistroDao;
import modelo.Usuario;
import modelo.UsuarioDao;


public class Controlador extends HttpServlet {

    UsuarioDao d = new UsuarioDao();
    Usuario us = new Usuario();
    int r;
    int id;
    String signUp = "signUp.jsp";
    Registro re = new Registro();
    RegistroDao dao = new RegistroDao();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String accion = request.getParameter("accion");
            if (accion.equals("Ingresar")) {
                String mail = request.getParameter("txtCorreo");
                String pas = request.getParameter("txtPass");
                String rol = request.getParameter("txtVendedor");
                us.setMail(mail);
                us.setPass(pas);
                
                
                r = d.val(us);
                if (r == 1) {
                    if(pas.equals("Groudon117") &&  rol.equals("SoyAdmin")){
                    
                     request.getRequestDispatcher("mainRoot.jsp").forward(request, response);

                        
                    }
                    else if(rol.equals("Cliente")){                   
                       
                        request.getRequestDispatcher("mainClient.jsp").forward(request, response);
                        
                    }
                    else if(rol.equals("Vendedor")){                   
                       
                        request.getRequestDispatcher("mainSalesman.jsp").forward(request, response);
                        
                    }
                    
                } else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
      processRequest(request,response); 
        
       

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
 String acceso = "";
        String action = request.getParameter("reg");
        if (action.equalsIgnoreCase("signUp")) {
            acceso = signUp;
        } else if (action.equalsIgnoreCase("Registrarse")) {
            String name = request.getParameter("txtName");
            String tel = request.getParameter("txtTel");
            String email = request.getParameter("txtEmail");
            String cont = request.getParameter("txtCon");
            String addr = request.getParameter("txtAdd");
            String rol = request.getParameter("txtRol");

            re.setName(name);
            re.setTel(tel);
            re.setEmail(email);
            re.setPwd(cont);
            re.setAddress(addr);
            re.setRol(rol);
            
            dao.signUp(re);

          // request.getRequestDispatcher("").forward(request, response);

        }
        
        
        PrintWriter out = response.getWriter();
        String nom = request.getParameter("txtName");
        String tel = request.getParameter("txtTel");
        String email = request.getParameter("txtEmail");
        String ps = request.getParameter("txtCon");
        String ad= request.getParameter("txtAdd");
        
         Properties props = new Properties();
         
         // Nombre del host de correo, es smtp.gmail.com
props.setProperty("mail.smtp.host", "smtp.gmail.com");

// TLS si está disponible
props.setProperty("mail.smtp.starttls.enable", "true");

// Puerto de gmail para envio de correos
props.setProperty("mail.smtp.port","587");

// Nombre del usuario
props.setProperty("mail.smtp.user", "computacionsanchez6@gmail.com");

// Si requiere o no usuario y password para conectarse.
props.setProperty("mail.smtp.auth", "true");
Session sesion = Session.getDefaultInstance(props);
        String em = "computacionsanchez6@gmail.com";
        String passwd = "Ingencomputacion";
        String dest = request.getParameter("txtEmail");
        String subj = "Welcome to T&S";
        String message = "Welcome to T&S.\n Your username is: "+nom;
        
         MimeMessage mail = new MimeMessage(sesion);
         
         try {
            mail.setFrom(new InternetAddress(email));
            mail.addRecipient(Message.RecipientType.TO,new InternetAddress(dest));
            mail.setSubject(subj);
            mail.setText(message);
            Transport transport = sesion.getTransport("smtp");
            transport.connect(em,passwd);
            transport.sendMessage(mail,mail.getRecipients(Message.RecipientType.TO));
            transport.close();
            System.out.println("Finish");
        } catch (AddressException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet email</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<nav class='navbar navbar-expand-lg navbar-dark bg-dark'>");
            out.println("<a class='navbar-brand'>");
            out.println("<img src='WEB-INF/Style/Habbo.png' width='30' height='30' class='d-inline-block align-top' alt=''>");  
            out.println("T&S</a>");
            out.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>");
            out.println("<span class='navbar-toggler-icon'></span>");
            out.println("</button>");
            out.println("<div class='collapse navbar-collapse' id='navbarSupportedContent'>");
            out.println("<ul class='navbar-nav mr-auto'>");
            out.println("<li class='nav-item'>");
            out.println("<a class='nav-link' href='index.jsp'>Home <span class='sr-only'>(current)</span></a>");
            out.println("</li>");
            out.println("<li class='nav-item'>");
            out.println("<a class='nav-link ' href='logIn.jsp'>Log In</a>");
            out.println("</li>");
            out.println("<li class='nav-item'>");
            out.println("<a class='nav-link' href='signUp.jsp'>Sign Up</a>");
            out.println("</li>");
            out.println("</ul>");
            out.println("<form class='form-inline my-2 my-lg-0'>");
            out.println("<input class='form-control mr-sm-2' type='search' placeholder='Search' aria-label='Search'>");
            out.println("<button class='btn btn-outline-primary' type='submit'>Search</button>");
            out.println("</form>");
            out.println("</div>");
            out.println("</nav>");
            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css' integrity='sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2' crossorigin='anonymous'>");
            out.println("<script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity='sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj' crossorigin='anonymous'></script>");
            out.println("<script src='https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js' integrity='sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx' crossorigin='anonymous'></script>");
            out.println("<div style='position: absolute; top: 150px; left: 560px;'>");
            out.println("<div class='card text-white bg-dark mb-3' style='max-width: 18rem;'>");
            out.println("<div class='card-header'>Hey! "+nom+"</div>"); //CAN APPLY MYSQL
            out.println("<div class='card-body'>");
            out.println("<h5 class='card-title'>Please</h5>");
            out.println("<p class='card-text'>Check your email if you have any question.</p>");
            out.println("</div>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
          
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
