

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <a class="navbar-brand" href="index.jsp">T&S</a> </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a href="logIn.jsp">Log In</a></li>
          <li><a href="signUp.jsp">Sign Up</a></li>
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
          <form action="Controlador" role="form">
            <div class="col-md-8">
                <label>Email</label>
              <input type="email" class="form-control" name="txtCorreo" id="name" placeholder="example@gmail.com" required>
              <br><br>
              <label>Password</label>
              <input type="password" name="txtPass" class="form-control" id="email" placeholder="Password" required>
              <label>Rol</label>
              <input type="text" name="txtVendedor" class="form-control" id="email" placeholder="Vendedor/Cliente" required>
              <a href="forgetAccount.jsp"><small id="emailHelp" class="form-text text-muted">Forget account?</small></a>
              </div>
            <div class="col-md-8 text-center">
                <br><br>
              <button type="submit" name="accion" value="Ingresar" class="contact-button">Log In</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>

