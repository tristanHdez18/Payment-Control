
package controladorclient;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reports.Reports;
import reports.ReportsDao;


public class Controladorclient extends HttpServlet {
String listar = "/reportsClient.jsp";
String listarSeller = "/paymentSalesman.jsp";
String pago= "/paymentsClient.jsp";
ReportsDao dao=new ReportsDao();
Reports r=new Reports();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
        
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        }else if (action.equalsIgnoreCase("pago")) {
            acceso=pago;
        }else if (action.equalsIgnoreCase("listarSeller")) {
            acceso=listarSeller;
        }  
        else if (action.equalsIgnoreCase("Agregar")) {
            String pro = request.getParameter("producto");
            int pre = Integer.parseInt(request.getParameter("precio"));
            String fec = request.getParameter("fecha");
            int pa = Integer.parseInt(request.getParameter("pago"));
            String es = request.getParameter("estatus");
            String ho = request.getParameter("hora");
            r.setProducto(pro);
            r.setPrecio(pre);
            r.setFecha(fec);
            r.setPago(pa);
            r.setEstatus(es);
            r.setHora(ho);
            dao.pago(r);
            
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
