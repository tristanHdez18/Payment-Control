<%-- 
    Document   : payments
    Created on : Dec 1, 2020, 8:14:43 PM
    Author     : tristan
--%>

<%@page import="reports.Reports"%>
<%@page import="reports.ReportsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="Habbo.png" width="30" height="30" class="d-inline-block align-top" alt="">  
                T&S</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="mainSalesman.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="Controladorclient?accion=listarSeller">Reports</a>
      </li>     
      <li class="nav-item">
       <%-- <a class="nav-link " href="ControladorRoot?accion=editar&id=<%= %>">Edit</a> --%>
      </li>     
      <li class="nav-item">
        <a class="nav-link " href="logIn.jsp">Log Out</a>
      </li> 
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-primary" type="submit">Search</button>
    </form>
            </div>
        </nav>
    
    <div>
           <% 
           ReportsDao dao=new ReportsDao();
           int id=Integer.parseInt((String)request.getAttribute("idper"));
           Reports p=(Reports)dao.list(id);
 
           %>
            <h1>Actualizar Estatus</h1>
            <form action="ControladorRoot">
               
                 Estatus:<br>
                <input type="text" name="txtEst" value="<%= p.getEstatus() %>"><br>
                 
                
                <input type="submit" name="accion" class="form-control" value="Actualizar1"><br> 
                <a class="bg-danger" href="paymentSalesman.jsp">Regresar</a>
                
                <input type="hidden" name="txtPro" value="<%= p.getProducto() %>"><br>
                
                <input type="hidden" name="txtPre" value="<%= p.getPrecio() %>"><br>
                
                <input type="hidden" name="txtFe" value="<%= p.getFecha() %>"><br>
               
                <input type="hidden" name="txtPag" value="<%= p.getPago() %>"><br>
               
               
                <input type="hidden" name="txtHor" value="<%= p.getHora() %>"><br>
                
                <input type="hidden" name="txtid" value="<%= p.getId() %>">
               
               
            </form>
        </div>
</body>
</html>
