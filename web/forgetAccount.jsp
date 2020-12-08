<%-- 
    Document   : forgetAccount
    Created on : Dec 2, 2020, 3:17:30 PM
    Author     : tristan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
      
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Account?</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">
      <img src="    WEB-INF/Style/Habbo.png" width="30" height="30" class="d-inline-block align-top" alt="">  
    T&S</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/TS/index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="http://localhost:8080/TS/logIn.jsp">Log In</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/TS/signUp.jsp">Sign Up</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-primary" type="submit">Search</button>
    </form>
  </div>
</nav>
        <form name="f1" action="http://localhost:8080/TS/emailRecovery" method="POST">
  <div class="abs-center">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <button type="submit" class="btn btn-primary">Send</button>
</form>
    </body>
</html>-->

<%-- 
    Document   : logIn
    Created on : Dec 1, 2020, 3:22:54 PM
    Author     : tristan
--%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="css/simple-line-icons.css"/>
<link rel="stylesheet" type="text/css" href="css/animate.css"/>
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css"/>
<link rel="stylesheet" type="text/css" href="css/owl.theme.css"/>
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,100,200,300,500,600,800,900' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oleo+Script+Swash+Caps:400,700' rel='stylesheet' type='text/css'>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<div class="main-header" id="main-header">
  <nav class="navbar mynav navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="http://localhost:8080/TS/index.jsp">T&S</a> </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="http://localhost:8080/TS/index.jsp">Home</a></li>
          <li><a href="http://localhost:8080/TS/logIn.jsp">Log In</a></li>
          <li><a href="http://localhost:8080/TS/signUp.jsp">Sign Up</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>
<div class="contact" id="contact">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="text-center">
            <br>
          <h3>Log In!</h3>
        </div>
      </div>
      <div class="col-md-offset-4 col-sm-offset-0 col-sm-6 col-xs-offset-1 col-xs-10">
        <div class="contact-form">
          <form role="form">
            <div class="col-md-8">
                <label>Email</label>
              <input type="email" class="form-control" id="name" placeholder="example@gmail.com" required>
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
           </div>
            <div class="col-md-8 text-center">
                <br><br>
              <button type="submit" class="contact-button">Send Email</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
