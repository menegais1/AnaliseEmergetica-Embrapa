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
        <div class="col-md-3  well well-sm text-center">
            <h4>Propriedade: <%=p.getNome()%></h4>
        </div>
        <div class="col-md-2  well well-sm text-center">
            <h4>Cidade: <%=p.getCidade()%></h4>
        </div>
        <div class="col-md-2  well well-sm text-center">
            <h4>UF: <%=p.getUf()%></h4>
        </div>
        <div class="col-md-2 well well-sm text-center">
            <h4>Ano: <%=session.getAttribute("Ano").toString()%></h4>
        </div>

        <div class="col-md-3 well well-sm text-center">
            <h4>Nivel: 1</h4>
        </div>
    </div>