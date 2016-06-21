<%@include file="../jsp/testelogin.jsp"%>


<%@page import="dao.Lv2p1DAO"%>
<%@page import="dao.Lv2p2DAO"%>
<%@page import="dao.Lv2p3DAO"%>
<%@page import="dao.Lv2p4DAO"%>
<%@page import="dao.Lv2resultadoDAO"%>
<%@page import="dao.Lv1resultadoDAO"%>
<%@page import="dao.Lv1p3DAO"%>
<%@page import="dao.Lv1p4DAO"%>
<%@page import="dao.Lv1p2DAO"%>
<%@page import="dao.Lv1p1DAO"%>
<%@page import="dao.PropriedadeDAO"%>
<%    PropriedadeDAO pdao = new PropriedadeDAO();
    Lv1p1DAO lv1p1dao = new Lv1p1DAO();
    Lv1p2DAO lv1p2dao = new Lv1p2DAO();
    Lv1p3DAO lv1p3dao = new Lv1p3DAO();
    Lv1p4DAO lv1p4dao = new Lv1p4DAO();
    Lv1resultadoDAO lv1resultadodao = new Lv1resultadoDAO();
    Lv2p1DAO lv2p1dao = new Lv2p1DAO();
    Lv2p2DAO lv2p2dao = new Lv2p2DAO();
    Lv2p3DAO lv2p3dao = new Lv2p3DAO();
    Lv2p4DAO lv2p4dao = new Lv2p4DAO();
    Lv2resultadoDAO lv2resultadodao = new Lv2resultadoDAO();

    Integer id = Integer.parseInt(request.getParameter("id"));
    lv1p1dao.excluirPorPropriedade(id);

    lv1p2dao.excluirPorPropriedade(id);
    lv1p3dao.excluirPorPropriedade(id);
    lv1p4dao.excluirPorPropriedade(id);
    lv1resultadodao.excluirPorPropriedade(id);
    lv2p1dao.excluirPorPropriedade(id);
    lv2p2dao.excluirPorPropriedade(id);
    lv2p3dao.excluirPorPropriedade(id);
    lv2p4dao.excluirPorPropriedade(id);
    lv2resultadodao.excluirPorPropriedade(id);
    pdao.excluir(pdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("id"))));

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

    <div class="container conteudo">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <h1 class="text-center">Propriedade excluída com sucesso</h1><br>
                <a class="btn btn-lg btn-danger" href="propriedades.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>

            </div>
        </div>
    </div>
</body>
</html>
