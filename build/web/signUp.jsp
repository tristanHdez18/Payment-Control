

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
          <h3>Sign Up!</h3>
        
        </div>
      <div class="col-md-offset-4 col-sm-offset-0 col-sm-6 col-xs-offset-1 col-xs-10">
        <div class="contact-form">
            
            <!--LOGIN-->
            <form name="f1" action="Controlador" method="POST">
            <div class="col-md-8">
                <label>Name</label>
                <input type="text" name="txtName" class="form-control" id="name" placeholder="Tristán Pérez" required >
                <br>
                <label>Email</label>
                <input type="email" name="txtEmail" class="form-control" id="name" placeholder="example@gmail.com" required >
                <br>
                <label>Rol</label>
                <input type="text" name="txtRol" class="form-control" id="lastName" placeholder="Rol: Salesman/Client" required >
                <br>
                <label for="validationTooltip03">Tel</label>
                    <input type="tel" name="txtTel" class="form-control" id="validationTooltip04" placeholder="Tel" required> 
                <br>
                <label>Password</label>
                <input type="password" class="form-control" id="password" placeholder="Password" minlength="8" maxlength="50" 
                       required name="txtCon">
                <br>
                <label>Address</label>
                <input type="text" name="txtAdd" class="form-control" id="name" placeholder="#1718, Oblatos, GDL" required >
              </div>
            <div class="col-md-8 text-center">
                <br><br>
                          <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Agree to terms and conditions
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
      </div>
              <button type="submit" name="reg" value="Registrarse" class="contact-button">Sign Up!</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
   
</body>