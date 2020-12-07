<%-- 
    Document   : reportsRoot
    Created on : Dec 1, 2020, 8:56:40 PM
    Author     : tristan
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
        <title>Reports</title>
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
        <a class="nav-link" href="mainRoot.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="reportsRoot.jsp">Reports</a>
      </li>     
      <li class="nav-item">
      <%--  <a class="nav-link " href="userRoot.jsp">Edit</a> --%>
      </li>
    <li class="nav-item">
        <a class="nav-link " href="index.jsp">Log Out</a>
      </li> 
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-primary" type="submit">Search</button>
    </form>
  </div>
</nav>
      
      <div class="card-body">
                    <table class="table table-sm table-dark">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">PRODUCTO</th>
                                <th scope="col">PRECIO</th>
                                <th scope="col">FECHA</th>
                                <th scope="col">PAGO</th>
                                <th scope="col">ESTATUS</th>
                                <th scope="col">HORA</th>
                                <th scope="col">Actualizar</th>
                            </tr>
                        </thead>
                        <% 
                ReportsDao dao=new ReportsDao();
                List<Reports>list=dao.listar();
                Iterator<Reports>iter=list.iterator();
                Reports per=null;
                while(iter.hasNext()){
                per=iter.next();
                
                %>
                        <tbody>
                              <tr>
                                    <td class="bg-danger"><%= per.getId() %></td>
                                    <td class="bg-primary"><%= per.getProducto()%></td>
                                    <td class="bg-success"><%= per.getPrecio() %></td>
                                    <td class="bg-warning"><%= per.getFecha() %></td>
                                    <td class="bg-danger"><%= per.getPago() %></td>
                                    <td class="bg-info"><%= per.getEstatus() %></td>
                                    <td class="bg-success"><%= per.getHora() %></td>
                                    <td>
                            <a class="btn btn-primary" href="ControladorRoot?accion=editar&id=<%= per.getId() %>">Editar</a>
                           
                        </td>
                                </tr>
                              <% } %>
                        </tbody>
                    </table>

                </div>
        
    </body>
</html>
