<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>
<%@include file="../jsp/testelogin.jsp"%>

<%
    
    
    
    
    if ((request.getParameter("cidade") != null) && (request.getParameter("nome")!= null) && (request.getParameter("uf")!= null)) {

        Usuario u = (Usuario) session.getAttribute("Usuario");
        PropriedadeDAO pdao = new PropriedadeDAO();
        Propriedade p = new Propriedade();
        p.setCidade(request.getParameter("cidade"));
        p.setNome(request.getParameter("nome"));
        p.setUf(request.getParameter("uf"));
        p.setUsuarioId(u);
        pdao.incluir(p);
        response.sendRedirect("propriedades.jsp?ok=true");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

    <div class="container conteudo">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <h1>Propriedades</h1>
            </div>
        </div>


        <div class="row conteudo">
            <div class="col-md-6 col-md-offset-3">
                <div class="form-group-lg">
                    <form action="propriedade-add.jsp" method="post">
                        <label>Nome</label>
                        <input type="text" class="form-control" placeholder="Insira o nome da propriedade" name="nome" required>
                        <label>UF</label>
                        <input type="text" class="form-control" placeholder="Insira sua unidade federativa (Ex:RS)" name="uf" required>
                        <Label>Cidade</label>
                        <input type="text" class="form-control" placeholder="Insira sua cidade" name="cidade" required></br>
                        <button type="submit" class="btn btn-lg btn-success center-block">Salvar <span class="glyphicon glyphicon-check"></span></button>
                    </form>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 text-center">
                <hr><br>
                <a class="btn btn-lg btn-danger" href="../propriedades/propriedades.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
            </div>
        </div>
    </div>
</body>
</html>
