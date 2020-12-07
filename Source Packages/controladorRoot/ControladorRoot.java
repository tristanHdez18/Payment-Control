/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorRoot;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import reports.Reports;
import reports.ReportsDao;

/**
 *
 * @author andrestellesrivera
 */
public class ControladorRoot extends HttpServlet {
     String listar = "/reportsRoot.jsp";
String edit= "/userRoot.jsp";
String listarSeller = "/paymentSalesman.jsp";
String editStatus="/payments.jsp";
ReportsDao dao=new ReportsDao();
Reports r=new Reports();
int id;  
 int pre;
 int pag; 

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorRoot</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorRoot at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        }else if(action.equalsIgnoreCase("editar")){
        request.setAttribute("idper",request.getParameter("id"));
        acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
           
           id=Integer.parseInt(request.getParameter("txtid"));
           String pro = request.getParameter("txtPro");
           pre=Integer.parseInt(request.getParameter("txtPre"));
           String fec = request.getParameter("txtFe");
           pag=Integer.parseInt(request.getParameter("txtPag"));
           String est = request.getParameter("txtEst");
           String hor = request.getParameter("txtHor");
           r.setId(id);
           r.setProducto(pro);
           r.setPrecio(pre);
           r.setFecha(fec);
           r.setPago(pag);
           r.setEstatus(est);
           r.setHora(hor);
           dao.edit(r);
           acceso = listar;
        
        }else if(action.equalsIgnoreCase("Seller")){
        request.setAttribute("idper",request.getParameter("id"));
        acceso=editStatus;
        }
        else if(action.equalsIgnoreCase("Actualizar1")){
           
           
          id=Integer.parseInt(request.getParameter("txtid"));
           String pro = request.getParameter("txtPro");
           pre=Integer.parseInt(request.getParameter("txtPre"));
           String fec = request.getParameter("txtFe");
           pag=Integer.parseInt(request.getParameter("txtPag"));
           String est = request.getParameter("txtEst");
           String hor = request.getParameter("txtHor");
           
            r.setId(id);
           r.setProducto(pro);
           r.setPrecio(pre);
           r.setFecha(fec);
           r.setPago(pag);
           r.setEstatus(est);
           r.setHora(hor);
           
           dao.edit(r);
           acceso = listarSeller;
        
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
