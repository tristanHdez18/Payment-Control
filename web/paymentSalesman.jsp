<%-- 
    Document   : paymentSalesman
    Created on : Dec 1, 2020, 10:00:56 PM
    Author     : tristan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="/WEB-INF/Habbo.png" width="30" height="30" class="d-inline-block align-top" alt="">  
                T&S</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/TS/mainRoot.jsp">Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="http://localhost:8080/TS/reportsRoot.jsp">Reports</a>
                    </li>      
                    <li class="nav-item">
                        <a class="nav-link " href="http://localhost:8080/TS/payments.jsp">Payments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="http://localhost:8080/TS/logIn.jsp">Log Out</a>
                    </li> 
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-primary" type="submit">Search</button>
                </form>
            </div>
        </nav>
    
    <table class="table table-sm table-dark">
         <thead>
    <tr>
      <th scope="col">User</th>
      <th scope="col">#</th>
      <th scope="col">Product</th>
      <th scope="col">Price $</th>
      <th scope="col">Date</th>
      <th scope="col">Pay $</th>
      <th scope="col">Status</th>
      <th scope="col">Time</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tr>
    <td class="bg-danger">Tristán</td>
    <td class="bg-primary">1</td>
    <td class="bg-success">Blusa Pato Donald</td>
    <td class="bg-warning">300</td>
    <td class="bg-danger">2020-04-02</td>
    <td class="bg-info">200</td>
    <td class="bg-success">Pending</td>
    <td class="bg-warning">14:30:30</td>
    </tr>
    <button type="submit" class="btn btn-primary">Print</button>
    </table>
    </body>
</html>
