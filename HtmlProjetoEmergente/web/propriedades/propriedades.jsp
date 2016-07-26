<%@include file="../jsp/testelogin.jsp"%>


<%@page import="java.util.List"%>
<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

        <%            session.setAttribute("Passos", null);
            session.setAttribute("Ano", null);
            session.setAttribute("Propriedade_id", null);
            session.setAttribute("Link", null);
            PropriedadeDAO pdao = new PropriedadeDAO();
            Usuario u = (Usuario) session.getAttribute("Usuario");
            List<Propriedade> plista = pdao.listarPorUsuario(u.getId());

            if (request.getParameter("id") != null) {
                session.setAttribute("Propriedade_id", Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("../analise/analise-escolha.jsp");
                return;
            }
        %>

    <div class="container conteudo">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <h1>Propriedades</h1>
            </div>
        </div>

        <div class="row">

            <div class="col-md-12">
                <table class="table table-bordered table-responsive table-striped text-center conteudo">
                    <tr>
                        <th>
                            Nome
                        </th>
                        <th>
                            Cidade
                        </th>
                        <th>
                            UF
                        </th>
                        <th>
                            Opções
                        </th>
                    </tr>
                    <%for (Propriedade p : plista) {%>
                    <tr>
                        <td>
                            <%=p.getNome()%>
                        </td>
                        <td>
                            <%=p.getCidade()%>
                        </td>
                        <td>
                            <%=p.getUf()%>
                        </td>
                        <td>
                            <div class="btn-group">
                                <a href="propriedades.jsp?id=<%=p.getId()%>" class="btn btn-lg btn-danger">Entrar</a>
                                <a href="propriedade-del.jsp?id=<%=p.getId()%>" class="btn btn-lg btn-warning">Excluir</a>
                            </div>
                        </td>
                    </tr>
                    <%}%>


                </table>
            </div>
        </div>

        <div class="row conteudo">
            <div class="col-md-12">
                <a class="btn btn-primary btn-block btn-lg" href="propriedade-add.jsp">Adicionar nova propriedade <span class="glyphicon glyphicon-plus"></span></a>
            </div>
        </div>


    </div>
</body>
</html>
