
<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>

<%

    Propriedade p = new Propriedade();

    PropriedadeDAO dao = new PropriedadeDAO();
    p = dao.buscarPorChavePrimaria(Integer.parseInt(session.getAttribute("Propriedade_id").toString()));


%> 

<%@include file="../importacoes/cabecalho.jsp"%>

<div class="container conteudo">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center">Análise Financeira</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 well well-sm text-center">
            <h4>Propriedade: <%=p.getNome()%></h4>
        </div>
        <div class="col-md-3  well well-sm text-center">
            <h4>Cidade: <%=p.getCidade()%></h4>
        </div>
        <div class="col-md-3  well well-sm text-center">
            <h4>UF: <%=p.getUf()%></h4>
        </div>
        <div class="col-md-3 well well-sm text-center">
            <h4>Ano: <%=session.getAttribute("Ano").toString()%></h4>
        </div>
    </div>

    <hr>
    <br>
    <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
            <h1>Escolha um nível para começar</h1>
        </div>
    </div>
    <br>
    <div class="row">

        <div class="navegacao">
            <a  href="../analisefinanceira-lv1/lv1escolha.jsp">
                <div class="col-md-2 col-md-offset-4 text-center lv1">

                    
                    <span>Nível 1</span>

                </div>
            </a>
        </div>

        <div class="navegacao">
            <a  href="../analisefinanceira-lv2/lv2escolha.jsp">
                <div class="col-md-2 text-center lv2">

                   
                    <span>Nível 2</span>

                </div>
            </a>
        </div>
       <!-- <div class="navegacao">
            <a href="lv1p3.jsp">
                <div class="col-md-2  text-center">


                    <span class="glyphicon glyphicon-briefcase"></span><br>
                    <span>Passo 3</span>

                </div>
            </a>
        </div>
        <div class="navegacao">
            <a  href="lv1p4.jsp">
                <div class="col-md-2  text-center ">

                    <span class="glyphicon glyphicon-euro"></span><br>
                    <span>Passo 4</span>

                </div>
            </a>
        </div>
        <div class="navegacao">
            <a  href="lv1resultados.jsp">
                <div class="col-md-2 text-center">

                    <span class="glyphicon glyphicon-barcode"></span><br>
                    <span>Resultados</span>

                </div>
            </a>
        </div>
       
       -->
    </div>
    <br>
    <hr>

</div>