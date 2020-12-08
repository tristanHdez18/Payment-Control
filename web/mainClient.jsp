

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Welcome!</title>
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
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<div class="main-header" id="main-header">
  <nav class="navbar mynav navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="#">T&S</a> </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="mainClient.jsp">Home</a></li>
          <li><a href="Controladorclient?accion=listar">Reports</a></li>
          <li><a href="Controladorclient?accion=pago">Payments</a></li>
          <li><a href="index.jsp">Log Out</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>
<div class="banner" id="banner">
  <div class="bg-overlay">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="banner-text">
            <h2>Welcome <span>Client!</span>!!</h2>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4"> <span class="copyright">Copyright &copy; T&S 2020</span> </div>
      <div class="col-md-4">
        <ul class="list-inline social-buttons">
          <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
          <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
          <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
        </ul>
      </div>
     
    </div>
  </div>
</footer>
</body>
</html>
