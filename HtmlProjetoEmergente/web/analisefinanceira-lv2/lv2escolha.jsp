<%@page import="dao.Passoslv2"%>
<%@page import="dao.Lv1resultadoDAO"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>

<%@page import="dao.Lv2resultadoDAO"%>
<%    String classe = "";
    Lv2resultadoDAO lv2resdao = new Lv2resultadoDAO();
    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    if (lv2resdao.buscarPorPropriedade(id, ano) == null) {
        classe = "disabled";
    }

    Passoslv2 passos = new Passoslv2();

    passos.setLv2p1(passos.getLv2p1dao().buscarPorPropriedade(id, ano));
    passos.setLv2p2(passos.getLv2p2dao().buscarPorPropriedade(id, ano));
    passos.setLv2p3(passos.getLv2p3dao().buscarPorPropriedade(id, ano));
    passos.setLv2p4(passos.getLv2p4dao().buscarPorPropriedade(id, ano));

    passos.setLv2resultado(passos.getLv2resultadodao().buscarPorPropriedade(id, ano));
    session.setAttribute("Passoslv2", passos);


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

        <%@include file="../importacoes/subcabecalholv2.jsp"%>


    <hr>

    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <h3>Selecione uma das opções</h3>
            <!--ADD .DISABLED-->
            <a class="btn btn-danger btn-block" href="lv2p1.jsp">Fazer Análise</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv2resultados.jsp">Resultados</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv2comparacao.jsp">Comparar Resultados</a>
            <a class="btn btn-primary btn-block " href="../analisefinanceira-lv1/lv1escolha.jsp">Nível Anterior</a>
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
