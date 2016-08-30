<%@page import="dao.Lv2resultadoDAO"%>
<%@page import="dao.Lv2p4DAO"%>
<%@page import="dao.Lv2p3DAO"%>
<%@page import="dao.Lv2p2DAO"%>
<%@page import="dao.Lv2p1DAO"%>
<%@page import="dao.Lv1resultadoDAO"%>
<%@page import="dao.Lv1p4DAO"%>
<%@page import="dao.Lv1p3DAO"%>
<%@page import="dao.Lv1p2DAO"%>
<%@page import="dao.Lv1p1DAO"%>
<%@page import="java.util.List"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>


<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>
<%    Propriedade p = new Propriedade();

    PropriedadeDAO dao = new PropriedadeDAO();
    p = dao.buscarPorChavePrimaria(Integer.parseInt(session.getAttribute("Propriedade_id").toString()));
    List<String> a = dao.listarAno(Long.parseLong(p.getId().toString()));
    if (request.getParameter("excluir") != null && (!request.getParameter("excluir").isEmpty())) {

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

        Integer id = p.getId();
        String ano = request.getParameter("excluir");
        lv1p1dao.excluirPorAno(id, ano);

        lv1p2dao.excluirPorAno(id, ano);
        lv1p3dao.excluirPorAno(id, ano);
        lv1p4dao.excluirPorAno(id, ano);
        lv1resultadodao.excluirPorAno(id, ano);
        lv2p1dao.excluirPorAno(id, ano);
        lv2p2dao.excluirPorAno(id, ano);
        lv2p3dao.excluirPorAno(id, ano);
        lv2p4dao.excluirPorAno(id, ano);
        lv2resultadodao.excluirPorAno(id, ano);
        response.sendRedirect("../analisefinanceira/nivel-data.jsp");
    }

    if (request.getParameter(
            "ano") != null && (!request.getParameter("ano").isEmpty())) {
        session.setAttribute("Ano", request.getParameter("ano"));
        response.sendRedirect("../niveis/escolha-niveis.jsp");
        return;
    }


%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

    <div class="container conteudo">
        <div class="col-md-12">
            <h1 class="text-center">Análise Financeira</h1>
        </div>
        <div class="row">
            <div class="col-md-4  well well-sm text-center">
                <h4 >Propriedade: <%=p.getNome()%></h4>
            </div>
        </div>
        <hr>
        <div class="row conteudo">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group form-group-lg ">
                            <form action="nivel-data.jsp" method="post">
                                <label>Ano: </label>
                                <input type="number" max="2100" min="1900" required placeholder="Insira o ano da análise" class="form-control" name="ano"><br>


                                <button type="submit" class="btn btn-success btn-lg center-block">Entrar</button>

                            </form>
                        </div>
                    </div>

                    <%if(!a.isEmpty()){%>
                   

                    <div class="col-md-5 text-center col-md-offset-2" >

                        <span>Anos inseridos</span><br>
                        <table class="table table-bordered table-responsive table-striped text-center ">

                            <tr>
                                <th>
                                    Ano
                                </th>
                                <th>
                                    Opções
                                </th>
                            </tr>

                            <%for (String ano : a) {%>
                            <tr>
                                <td>
                                    <%=ano%>
                                </td>
                                <td>
                                    <div class="btn-group">
                                        <a href="../analisefinanceira/nivel-data.jsp?ano=<%=ano%>" class="btn btn-lg btn-danger">Entrar</a>
                                        <a href="../analisefinanceira/nivel-data.jsp?excluir=<%=ano%>" class="btn btn-lg btn-warning">Excluir</a>
                                    </div>
                                </td>
                            </tr>
                            <%}%>



                        </table>
                    </div>
                            <%}%>
                </div>

            </div>
        </div>





        <hr>
        <div class="row">
            <div class="col-md-12 text-center">
                <a class="btn btn-lg btn-danger " href="../analise/analise-escolha.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
            </div>
        </div>


    </div>
</body>
</html>
