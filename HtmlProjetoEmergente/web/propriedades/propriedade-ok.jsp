<%@include file="../jsp/testelogin.jsp"%>


<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>
<%

    request.setCharacterEncoding("UTF-8");
    if ((!request.getParameter("cidade").isEmpty()) && (!request.getParameter("nome").isEmpty()) && (!request.getParameter("uf").isEmpty())) {

        Usuario u = (Usuario) session.getAttribute("Usuario");
        PropriedadeDAO pdao = new PropriedadeDAO();
        Propriedade p = new Propriedade();
        p.setCidade(request.getParameter("cidade"));
        p.setNome(request.getParameter("nome"));
        p.setUf(request.getParameter("uf"));
        p.setUsuario_id(u.getId());
        pdao.inserir(p);
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <%@include file="../importacoes/cabecalho.jsp" %>%>

    <div class="container conteudo">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <h1 class="text-center">Nova propriedade adicionada com sucesso</h1><br>
                <a class="btn btn-lg btn-danger" href="propriedades.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>

            </div>
        </div>
    </div>
</body>
</html>
