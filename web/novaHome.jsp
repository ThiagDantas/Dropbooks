<%@page import="modelDAO.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Dropbooks</title>  

  <link rel="stylesheet" href="res/css/bootstrap.css">
  <link rel="stylesheet" href="res/css/homescreen.css">
  <link href="res/css/modern-business.css" rel="stylesheet">


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
    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
     <li class="nav-item">
      <%
      
      if(session.getAttribute("email") != null) {

      String email = request.getSession().getAttribute("email").toString();

      Usuario user = new UsuarioDAO().getUsuario(email);
      
    out.print("</li>");
    out.print("<li class=nav-item>");
      out.print("<li class='nav-item dropdown'> "
        + "<a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>"+ user.getNomeRazao() +"</a>"
        + "<div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>"
          + "<a class='dropdown-item' href='alterarCadastro.jsp'>Alterar Dados</a>"
          + "<a class='dropdown-item' href='catalogoLivro.jsp'>Meu Catalogo</a>"
          + "<a class='dropdown-item' href='cadastroProduto.jsp'>Cadastra Catalogo</a>"
          + "<a class='dropdown-item' href=Senha.jsp>Alterar Senha</a>"
          + "<a class='dropdown-item' name=Sair href=SairServlet>Sair</a>"
        + "</div>"
      + "</li>");
      
    } else {
    out.print("<a class=nav-link href=login.jsp>Login ou Cadastrar</a>");
  }        
  %>   
</li>
</ul>
</nav> <!--fim do nav-->


<!-- Adicionar banner aqui -->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <!-- Slide One - Set the background image for this slide in the line below -->
    <div class="carousel-item active" style="background-image: url('res/img/cr-1.jpg')">
      <div class="carousel-caption d-none d-md-block">
        <h3> Anuncio</h3>
        <p>Livros Sobre Direito</p>
      </div>
    </div>
    <!-- Slide Two - Set the background image for this slide in the line below -->
    <div class="carousel-item" style="background-image: url('res/img/cr-2.jpg')">
      <div class="carousel-caption d-none d-md-block">
        <h3>Economia</h3>
        <p>Administração e Contabilidade</p>
      </div>
    </div>
    <!-- Slide Three - Set the background image for this slide in the line below -->
    <div class="carousel-item" style="background-image: url('res/img/cr-3.jpg')">
      <div class="carousel-caption d-none d-md-block">
        <h3>Dicas De Leitura</h3>
        <p>Esta Perdido ? Nossa Equipe Pode te Ajudar</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>





<div class="produtosHome col-lg-9 col-md-2 ">

  <ul>
    <li><h5>Novidades em</h5></li>
    <li><a href="#">Gênero</a></li>
    <li><a href="#">Gênero</a></li>
    <li><a href="#">Gênero</a></li>
    <li><a href="#">Gênero</a></li>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Buscar por livros" aria-label="Search">
      <button class="btn" type="submit">Buscar</button>
    </form>
  </ul>
</div>





        <!-- Bootstrap core JavaScript
          ================================================== -->
          <!-- Placed at the end of the document so the pages load faster -->


          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

          <script src="res/js/bootstrap.min.js"></script>

          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>


        </body>
        </html>