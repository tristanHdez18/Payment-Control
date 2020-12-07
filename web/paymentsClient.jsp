<%-- 
    Document   : paymentsClient
    Created on : Dec 1, 2020, 9:17:02 PM
    Author     : tristan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payments</title>
    </head>
    <body> <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="Habbo.png" width="30" height="30" class="d-inline-block align-top" alt="">  
                T&S</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="mainClient.jsp">Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="reportsClient.jsp">Reports</a>
                    </li>      
                    <li class="nav-item">
                        <a class="nav-link " href="paymentsClient.jsp">Payments</a>
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
       
          <div class="container mt-5 col-lg-5">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Hacer Nuevo Pago</h4>
                </div>
                <div class="card-body">
                    <form method="Controladorclient">
                        <label >Nombre del Producto</label>
                        <input type="text" name="producto" class="form-control">
                        <label>Precio</label>
                        <input type="text" name="precio" class="form-control">
                        <label>Fecha</label>
                        <input type="text" name="fecha" class="form-control">
                        <label>Cantidad a Pagar</label>
                        <input type="text" name="pago" class="form-control">
                        <label>Estatus</label>
                        <input type="text" name="estatus" class="form-control">
                        <label>Hora</label>
                        <input type="text" name="hora" class="form-control">
                       
                        <a class="nav-link " href="upload.jsp">Subir recibo</a>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                        
                        <a href="reportsClient.jsp">Cancelar</a>
                    </form>
                </div>                
            </div>
        </div>
           
    </body>
</html>
