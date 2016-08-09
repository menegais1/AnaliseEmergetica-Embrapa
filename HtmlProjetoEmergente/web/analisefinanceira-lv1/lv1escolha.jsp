
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>


<%@page import="dao.Passoslv1"%>
<%@page import="dao.Lv1resultadoDAO"%>
<%    String classe = "";
    Lv1resultadoDAO lv1resdao = new Lv1resultadoDAO();
    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();
    if (lv1resdao.buscarPorPropriedade(id, ano) == null) {
        classe = "disabled";
    }

    Passoslv1 passos = new Passoslv1();
    passos.setLv1p1(passos.getLv1p1dao().buscarPorPropriedade(id, ano));
    passos.setLv1p2(passos.getLv1p2dao().buscarPorPropriedade(id, ano));
    passos.setLv1p3(passos.getLv1p3dao().buscarPorPropriedade(id, ano));
    passos.setLv1p4(passos.getLv1p4dao().buscarPorPropriedade(id, ano));

    passos.setLv1resultado(passos.getLv1resultadodao().buscarPorPropriedade(id, ano));
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
        <div class="col-md-6 col-md-offset-3">
            <h3>Selecione uma das opções</h3>
            <!--ADD .DISABLED-->
            <a class="btn btn-danger btn-block" href="lv1escolha.jsp?identificador=1">Fazer Análise</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv1resultados.jsp">Resultados</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv1comparacao.jsp">Comparar Resultados</a>
            <a class="btn btn-primary btn-block" href="../analisefinanceira-lv2/lv2escolha.jsp">Próximo Nível</a>
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
