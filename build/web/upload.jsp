<%-- 
    Document   : upload
    Created on : 06-dic-2020, 15:25:18
    Author     : andrestellesrivera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subir recibo</title>
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
       
        <form action="ControladorImagen?accion=Guardar" method="POST" enctype="multipart/form-data">
            <div class="card-header">
                        <h3>Subir recibo</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>¿De que es el recibo?</label>
                    <input type="text" name="txtnombre" class="form-control">
                </div>
                <div class="form-group">
                    <label>imagen</label>
                    <input type="file" name="fileImagen">
                </div>
            </div>
            <div class="card-footer">
                <button class="btn btn-outline-primary" name="accion" value="Guardar">Guardar</button>
            </div>
            
            
            
        </form>
        
    </body>
</html>
