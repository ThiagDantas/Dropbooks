
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Dropbooks</title>  

  <link rel="stylesheet" href="res/css/bootstrap.css">
  <link rel="stylesheet" href="res/css/login.css">



</head>


<body>
  <!--inicio do nav-->
  <nav class="navbar navbar-expand-md navbar-dark bg-light">
    <a class="navbar-brand col-sm-3 col-md-2" href="#">DROPBOOKS</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse col-lg-5">
      <div class="navbar-nav-scroll">
        <ul class="navbar-nav bd-navbar-nav flex-row">
          <li class="nav-item">
            <a class="nav-link " href="novaHome.html" >Inicio</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link " href="novaHome.html" >Livros</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link " href="#" >F.A.Q</a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="Contato.jsp" >Contato</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav> <!--fim do nav-->
<!--
  <script type="text/javascript">
    $(document).ready(function(){
      $('#enviar').click(function(){

        alert("");
        var email = $("#email").val();
        var senha = $("#senha").val();
        $.ajax({
          type:'POST',
          url : "ServletLogin",
          data : {
            email : email,
            senha : senha
          },
          success : function(results){
            if (results === "1"){
              $("#email").css("color", "red");
            }else if(results === "2"){
              $("#senha").css("color", "red");
            }els e{
              $("#email").css("color", "green");
              $("#senha").css("color", "green");
            }
          }
        });
      });
    });
  </script>
-->


        <div class="container col-lg-4" >
            <div class="row ">
                <div class="formLogin col-lg-12" id="container">
                    <p class="h3 text-center">Login</p>
                    <form action="Login" method="post">
                        <div class="form-group col-xs-12">
                            <label for="labelLogin">Email</label>
                            <input type="text" class="form-control" name="email" aria-describedby="email"
                                  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  required="required"       
                                   placeholder="email@dominio.com"/>
                        </div>

                        <div class="form-group">
                            <label for="labelSenha">Senha</label>
                            <input type="password" class="form-control" name="senha" aria-describedby="senha" placeholder="*******">
                            <small class=""><a href="Senha.jsp">Esqueceu sua senha?</a></small>
                        </div>
                        <button type="submit" value="login" class="btn btnPrincipal text-center ">Entrar</button>
                    </form><hr class="col-10">

                  
                    <div class="goRegistro text-center">
                        <label for="labelNovoReg">Primeira vez por aqui?</label><br>
                         <a href="cadastro.html">
                        <button type="submit" class="col-lg-5 col-md-5 btn btnSecundario">
                           Cadastre-se</button></a>
                    </div>
                </div><br>
            </div>
        </div>  







  <script src="res/js/jquery.js"></script>
  <script type="text/javascript" src="res/jquery-3.3.1.js"></script>

  <script src="res/js/bootstrap.min.js"></script>



</body>
</html>