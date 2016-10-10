
<%@page import="dao.Lv1p2DAO"%>
<%@page import="dao.Lv1p1DAO"%>
<%@page import="dao.Lv1p3DAO"%>
<%@page import="dao.Lv1p4DAO"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>


<%@page import="dao.Passoslv1"%>
<%@page import="dao.Lv1resultadoDAO"%>
<%    String classe = "";
    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();
        Lv1resultadoDAO lv1resultadodao = new Lv1resultadoDAO();

    if (lv1resultadodao.buscarPorPropriedade(id, ano) == null) {
        classe = "disabled";
    }

    Lv1p1DAO lv1p1dao = new Lv1p1DAO();
    Lv1p2DAO lv1p2dao = new Lv1p2DAO();
    Lv1p3DAO lv1p3dao = new Lv1p3DAO();
    Lv1p4DAO lv1p4dao = new Lv1p4DAO();

    Passoslv1 passos = new Passoslv1();
    passos.setLv1p1(lv1p1dao.buscarPorPropriedade(id, ano));
    passos.setLv1p2(lv1p2dao.buscarPorPropriedade(id, ano));
    passos.setLv1p3(lv1p3dao.buscarPorPropriedade(id, ano));
    passos.setLv1p4(lv1p4dao.buscarPorPropriedade(id, ano));

    passos.setLv1resultado(lv1resultadodao.buscarPorPropriedade(id, ano));
    session.setAttribute("Passoslv1", passos);

    if (request.getParameter("identificador") != null && !request.getParameter("identificador").isEmpty()) {
        if (passos.getLv1p4() != null) {
            response.sendRedirect("lv1p1.jsp");
            return;
        }
        if (passos.getLv1p3() != null) {
            response.sendRedirect("lv1p4.jsp");
            return;
        }
        if (passos.getLv1p2() != null) {
            response.sendRedirect("lv1p3.jsp");
            return;
        }

        if (passos.getLv1p1() != null) {
            response.sendRedirect("lv1p2.jsp");
            return;
        } else {

            response.sendRedirect("lv1p1.jsp");
            return;
        }

    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp" %>

        <%@include  file="../importacoes/subcabecalholv1.jsp"%>


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
            <a class="btn btn-danger btn-block" href="lv1escolha.jsp?identificador=1">Fazer Análise</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv1resultados.jsp">Resultados</a>
            <button class="btn btn-primary btn-block <%=classe%>"  data-toggle="modal" data-target="#myModal">Comparar Resultados</button>
            <a class="btn btn-primary btn-block" href="../analisefinanceira-lv2/lv2escolha.jsp">Próximo Nível</a>
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
                        <a href="lv1comparacao.jsp?codigo=1" class="btn btn-sm btn-danger">Menor que 10.000 ha</a>
                        <a href="lv1comparacao.jsp?codigo=2" class="btn btn-sm btn-danger">Entre 10.000 e 50.000 ha</a>
                        <a href="lv1comparacao.jsp?codigo=3" class="btn btn-sm btn-danger">Maior que 50.000 ha</a>
                        <a href="lv1comparacao.jsp?codigo=0" class="btn btn-sm btn-danger">Todas as Áreas</a>

                        <!--<button type="button" class="btn btn-lg btn-default" data-dismiss="modal">Cancelar</button>-->
                    </div>
                </div>

            </div>
        </div>
    </div>
    <hr>

    <div class="row">
        <div class="col-md-12 text-center">
            <a class="btn btn-lg btn-danger " href="../niveis/escolha-niveis.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
        </div>
    </div>
</div>

</body>
</html>
