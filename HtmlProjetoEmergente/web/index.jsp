
<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%
    request.setCharacterEncoding("UTF-8");
    session.setAttribute("Usuario", null);
    session.setAttribute("Passos", null);
    session.setAttribute("Ano", null);
    session.setAttribute("Propriedade_id", null);
    session.setAttribute("Link", null);
    session.setAttribute("Teste", null);

    String msg = "";
    String classe = "";
    if (request.getParameter("usuario") != null || request.getParameter("senha") != null) {

        if ((!request.getParameter("usuario").isEmpty()) && (!request.getParameter("senha").isEmpty())) {
            UsuarioDAO dao = new UsuarioDAO();
            Usuario u = new Usuario();

            u.setLogin(request.getParameter("usuario"));
            u.setSenha(request.getParameter("senha"));

            Usuario teste = dao.login(u);
            if (teste != null) {

                session.setAttribute("Usuario", teste);
                response.sendRedirect("propriedades/propriedades.jsp");
                return;

            } else {
                msg = "Nome de Usuário e/ou Senha Inválido(s)";
                classe = "alert alert-danger text-center";
            }

        } else {
            msg = "Nome de Usuário e/ou Senha Inválido(s)";
            classe = "alert alert-danger text-center";
        }

    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>S.I.S.A.F.E</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/landing-page.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="stylesheet" href="css/customizacao.css">
    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
            <div class="container topnav">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand topnav" href="#">S.I.S.A.F.E</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#about">Sobre</a>
                        </li>
                        <li>
                            <a href="#services">Serviços</a>
                        </li>
                        <li>
                            <a href="#developers">Desenvolvedores</a>
                        </li>
                        <li>
                            <a href="#contact">Contato</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>


        <!-- Header -->
        <a name="about"></a>
        <div class="intro-header">
            <div class="container">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="intro-message">
                            <h1>S.I.S.A.F.E</h1>
                            <h3>Software para análise financeira e emergética de propriedades rurais</h3>
                            <hr class="intro-divider">
                            <ul class="list-inline intro-social-buttons">
                                <li>
                                    <span>Não tem cadastro? </span><br>
                                    <a href="#cadastro" data-toggle="collapse" data-target="#cadastro" class="btn btn-lg btn-danger">Cadastre-se <span class="glyphicon glyphicon-alert"></span></a>
                                </li>

                            </ul>
                            <hr class="intro-divider">
                            <div class="row">

                                <div class="col-lg-6 col-lg-offset-3">
                                    <h4 class="<%=classe%>"><%=msg%></h4>
                                    <div class="form-group-lg">
                                        <form action="index.jsp" method="post">
                                            <a href="trocar-senha.jsp" ><span>Esqueceu sua senha? Clique aqui <span class="glyphicon glyphicon-check"></span></span></a><br><br>
                                            <label>Usuário</label>
                                            <input type="text" placeholder="Insira seu nome de usuário" class="form-control" name="usuario" required>
                                            <label>Senha</label>
                                            <input type="password" placeholder="Insira sua senha" class="form-control" name="senha" required><br>
                                            <button type="submit" class="btn btn-lg btn-success">Entrar <span class="glyphicon glyphicon-log-in"></span></button>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container -->

        </div>
        <!-- /.intro-header -->

        <!-- Page Content -->
        <div class="content-section-b collapse" id="cadastro" >
            <div class="container">

                <div class="row">
                    <h2 class="section-heading text-center">Cadastro</h2>
                    <div class="col-md-6 col-md-offset-3">
                        <div class="form-group-lg">
                            <form action="cadastro/cadastro-ok.jsp" method="post">
                                <label>Email</label>
                                <input type="email" class="form-control" placeholder="Insira seu email" name="email" required>
                                <label>Usuário</label>
                                <input type="text" class="form-control" placeholder="Insira seu nome de usuário" name="usuario" required="">
                                <label>Senha</label>
                                <input type="password" class="form-control" placeholder="Insira sua senha" name="senha" required>
                                <label>Confirmação de senha</label>
                                <input type="password" class="form-control" placeholder="Insira sua senha novamente" name="senhaconf" required><br>
                                <button type="submit" class="btn btn-lg btn-success center-block">Enviar <span class="glyphicon glyphicon-send"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a  name="services"></a>
    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Análise Financeira</h2>
                    <p class="lead">Esse softare oferece, através de uma Análise Financeira de sua propriedade, a possibilidade ao produtor rural de gerenciar seus recursos da melhor forma possível, bem como ver seus gastos e ganhos em cada área de sua propriedade.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive img-rounded" src="img/analise-financeira.jpg" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <div class="content-section-b" id="cadastro">


        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Analise Emergética</h2>
                    <p class="lead">We live inside a box, when we wake up we eat food from a box, there is no escape from the box, the box is all, and all is the box </p>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive img-rounded" src="img/analise-emergetica.jpg" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-b -->

    <div class="content-section-a" id="developers">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Desenvolvedores</h2>
                    <p class="lead">Esse software foi desenvolvido por alunos bolsistas do colégio IFSUL, Bagé, com ajuda dos orientadores e de um consultor da EMBRAPA. </p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive img-rounded" src="img/story1.jpg" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <a  name="contact"></a>
    <div class="content-section-b">

        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-lg-offset-3">


                    <h2 class="section-heading text-center">Contate-nos</h2>
                    <div class="form-group-lg">
                        <form action="#" method="post">
                            <label>Email</label>
                            <input type="email" placeholder="Insira seu email" class="form-control" name="email" required>
                            <label>Nome</label>
                            <input type="text" placeholder="Insira seu nome" class="form-control" name="nome" required>
                            <label>Mensagem</label>
                            <textarea class="form-control" rows="7" name="mensagem" required>
                                    
                            </textarea><br>
                            <button type="submit" class="btn btn-lg btn-success center-block">Enviar <span class="glyphicon glyphicon-send"></span></button>
                        </form>
                    </div>
                </div>

            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#about">Inicio</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services">Serviços</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#developers">Desenvolvedores</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#contact">Contato</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Marca &copy; IFSUL 2016. Todos Direitos Reservados</p>
                </div
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

</html>
