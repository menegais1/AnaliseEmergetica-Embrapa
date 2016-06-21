<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>


<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>
<%   
    
    Propriedade p = new Propriedade();

    PropriedadeDAO dao = new PropriedadeDAO();
    p = dao.buscarPorChavePrimaria(Integer.parseInt(session.getAttribute("Propriedade_id").toString()));
    if (request.getParameter("ano") != null && (!request.getParameter("ano").isEmpty())) {
        session.setAttribute("Ano", request.getParameter("ano"));
        response.sendRedirect("../niveis/escolha-niveis.jsp");
        return;
    }


%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

    <div class="container conteudo">
        <div class="col-md-12">
            <h1 class="text-center">Análise Financeira</h1>
        </div>
        <div class="row">
            <div class="col-md-4  well well-sm text-center">
                <h4 >Propriedade: <%=p.getNome()%></h4>
            </div>
        </div>
        <hr>
        <div class="row conteudo">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-5 col-md-offset-2">
                        <div class="form-group form-group-lg ">
                            <form action="nivel-data.jsp" method="post">
                                <label>Ano: </label>
                                <input type="number" max="2100" min="1900" placeholder="Insira o ano da análise" class="form-control" name="ano"><br>


                                <button type="submit" class="btn btn-success btn-lg center-block">Enviar</button>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>





        <hr>
        <div class="row">
            <div class="col-md-12 text-center">
                <a class="btn btn-lg btn-danger " href="../analise/analise-escolha.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
            </div>
        </div>


    </div>
</body>
</html>
