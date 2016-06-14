<%@page import="dao.Lv1ResultadoDAO"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>

<%@page import="dao.Passos"%>
<%@page import="dao.Lv2ResultadoDAO"%>
<%
    String classe = "";
    Lv2ResultadoDAO lv2resdao = new Lv2ResultadoDAO();
    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano= Integer.parseInt(session.getAttribute("Ano").toString());
    
    Lv1ResultadoDAO lv1resultadodao = new Lv1ResultadoDAO();
    
    if(lv1resultadodao.buscarPorPropriedade(id, ano) == null){
        response.sendRedirect("../index.jsp");
        return;
    
    }
    
    if (lv2resdao.buscarPorPropriedade(id,ano) == null) {
        classe = "disabled";
    }
    

    Passos passos = (Passos) session.getAttribute("Passos");
    
    passos.setLv2p1(passos.getLv2p1dao().buscarPorPropriedade(id, ano));
    passos.setLv2p2(passos.getLv2p2dao().buscarPorPropriedade(id, ano));
    passos.setLv2p3(passos.getLv2p3dao().buscarPorPropriedade(id, ano));
    passos.setLv2p4(passos.getLv2p4dao().buscarPorPropriedade(id, ano));
    
    passos.setLv2resultado(passos.getLv2resultadodao().buscarPorPropriedade(id,ano));
    session.setAttribute("Passos",passos);
    

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
                <a class="btn btn-lg btn-danger " href="../analisefinanceira/nivel-data.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
            </div>
        </div>
    </div>

</body>
</html>
