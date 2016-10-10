<%@page import="dao.Lv2p1DAO"%>
<%@page import="dao.Lv2p2DAO"%>
<%@page import="dao.Lv2p3DAO"%>
<%@page import="dao.Lv2p4DAO"%>
<%@page import="dao.Passoslv2"%>
<%@page import="dao.Lv1resultadoDAO"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>

<%@page import="dao.Lv2resultadoDAO"%>
<%    String classe = "";
    Lv2resultadoDAO lv2resultadodao = new Lv2resultadoDAO();
    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv2p1DAO lv2p1dao = new Lv2p1DAO();
    Lv2p2DAO lv2p2dao = new Lv2p2DAO();
    Lv2p3DAO lv2p3dao = new Lv2p3DAO();
    Lv2p4DAO lv2p4dao = new Lv2p4DAO();
    
    if (lv2resultadodao.buscarPorPropriedade(id, ano) == null) {
        classe = "disabled";
    }

    Passoslv2 passos = new Passoslv2();

    passos.setLv2p1(lv2p1dao.buscarPorPropriedade(id, ano));
    passos.setLv2p2(lv2p2dao.buscarPorPropriedade(id, ano));
    passos.setLv2p3(lv2p3dao.buscarPorPropriedade(id, ano));
    passos.setLv2p4(lv2p4dao.buscarPorPropriedade(id, ano));

    passos.setLv2resultado(lv2resultadodao.buscarPorPropriedade(id, ano));
    session.setAttribute("Passoslv2", passos);

    if (request.getParameter("identificador") != null && !request.getParameter("identificador").isEmpty()) {
        if (passos.getLv2p4() != null) {
            response.sendRedirect("lv2p1.jsp");
            return;
        }

        if (passos.getLv2p3() != null) {
            response.sendRedirect("lv2p4.jsp");
            return;
        }
        if (passos.getLv2p2() != null) {
            response.sendRedirect("lv2p3.jsp");
            return;
        }
        if (passos.getLv2p1() != null) {
            response.sendRedirect("lv2p2.jsp");
            return;
        } else {
            response.sendRedirect("lv2p1.jsp");
            return;
        }

    }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

        <%@include file="../importacoes/subcabecalholv2.jsp"%>


    <hr>

    <div class="row">
        <div class="row">
            <div class="col-md-6 col-md-offset-6"> <h3 class="text-center">Selecione uma das opções</h3></div>
        </div>

        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    O que você encontrará nesse nível
                </div>
                <div class="panel-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et aliquam massa. Proin vitae massa augue. Proin condimentum quis magna vitae dapibus. Donec eu sem ipsum. Ut pretium congue imperdiet. Quisque a dictum mi. Praesent placerat a tellus ut porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <!--ADD .DISABLED-->
            <a class="btn btn-danger btn-block" href="lv2escolha.jsp?identificador=1">Fazer Análise</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv2resultados.jsp">Resultados</a>
            <button data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-block <%=classe%>" >Comparar Resultados</button>
            <a class="btn btn-primary btn-block " href="../analisefinanceira-lv1/lv1escolha.jsp">Nível Anterior</a>
        </div>
    </div>

    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Escolha a Faixa de Produtores para Realizar a Comparação </h4>
                </div>
                <div class="modal-body">
                    <p>Clique em uma das faixas de área desejada</p>
                </div>
                <div class="modal-footer">
                    <a href="lv2comparacao.jsp?codigo=1" class="btn btn-sm btn-danger">Menor que 10.000 ha</a>
                    <a href="lv2comparacao.jsp?codigo=2" class="btn btn-sm btn-danger">Entre 10.000 e 50.000 ha</a>
                    <a href="lv2comparacao.jsp?codigo=3" class="btn btn-sm btn-danger">Maior que 50.000 ha</a>
                    <a href="lv2comparacao.jsp?codigo=0" class="btn btn-sm btn-danger">Todas as Áreas</a>

                    <!--<button type="button" class="btn btn-lg btn-default" data-dismiss="modal">Cancelar</button>-->
                </div>
            </div>

        </div>
    </div>
    <hr>

    <div class="row">
        <div class="col-md-12 text-center">
            <a class="btn btn-lg btn-danger "  href="../niveis/escolha-niveis.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
        </div>
    </div>
</div>

</body>
</html>
