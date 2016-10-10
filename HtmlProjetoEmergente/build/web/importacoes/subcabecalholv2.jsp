<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>
<%

    Propriedade p = new Propriedade();

    PropriedadeDAO dao = new PropriedadeDAO();
    p = dao.buscarPorChavePrimaria(Integer.parseInt(session.getAttribute("Propriedade_id").toString()));


%> 




<div class="container conteudo">


    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center">Análise Financeira</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 nivel">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Propriedade
                </div>
                <div class="panel-body text-center">
                    <h4 > <%=p.getNome()%></h4>
                </div>
            </div>
        </div>

        <div class="col-md-2 nivel">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Município
                </div>
                <div class="panel-body text-center">
                    <h4 > <%=p.getCidade()%></h4>
                </div>
            </div>
        </div>

        <div class="col-md-2 nivel">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Uf
                </div>
                <div class="panel-body text-center">
                    <h4 > <%=p.getUf()%></h4>
                </div>
            </div>
        </div>

        <div class="col-md-2 nivel">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    Ano
                </div>
                <div class="panel-body text-center">
                    <h4 > <%=session.getAttribute("Ano").toString()%></h4>
                </div>
            </div>
        </div>

        <div class="col-md-3 nivel">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    Nivel
                </div>
                <div class="panel-body text-center">
                    <h4 >1</h4>
                </div>
            </div>
        </div>
    </div>

