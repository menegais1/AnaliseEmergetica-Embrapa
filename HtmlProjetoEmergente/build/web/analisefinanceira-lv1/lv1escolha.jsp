<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>


<%@page import="dao.Passos"%>
<%@page import="dao.Lv1ResultadoDAO"%>
<%
    
    String classe = "";
    Lv1ResultadoDAO lv1resdao = new Lv1ResultadoDAO();
    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano= Integer.parseInt(session.getAttribute("Ano").toString());
    if (lv1resdao.buscarPorPropriedade(id,ano) == null) {
        classe = "disabled";
    }
    

    Passos passos = new Passos();
    passos.setLv1p1(passos.getLv1p1dao().buscarPorPropriedade(id, ano));
    passos.setLv1p2(passos.getLv1p2dao().buscarPorPropriedade(id, ano));
    passos.setLv1p3(passos.getLv1p3dao().buscarPorPropriedade(id, ano));
    passos.setLv1p4(passos.getLv1p4dao().buscarPorPropriedade(id, ano));
    
   
    passos.setLv1resultado(passos.getLv1resultadodao().buscarPorPropriedade(id, ano));
    session.setAttribute("Passos",passos);


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
            <a class="btn btn-danger btn-block" href="lv1p1.jsp">Fazer Análise</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv1resultados.jsp">Resultados</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="lv1comparacao.jsp">Comparar Resultados</a>
            <a class="btn btn-primary btn-block <%=classe%>" href="../analisefinanceira-lv2/lv2escolha.jsp">Próximo Nível</a>
        </div>
    </div>
    <hr>

    <div class="row">
        <div class="col-md-12 text-center">
            <a class="btn btn-lg btn-danger " href="../analisefinanceira/nivel-data.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
        </div>
    </div>
</div>

</body>
</html>
