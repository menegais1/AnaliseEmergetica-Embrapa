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

    if (request.getParameter("ano") != null && (!request.getParameter("ano").isEmpty())) {
        session.setAttribute("Ano", request.getParameter("ano"));
        response.sendRedirect("../niveis/escolha-niveis.jsp");
        return;
    } else if (request.getParameter("Rano") != null && (!request.getParameter("Rano").isEmpty())) {
        session.setAttribute("Ano", request.getParameter("Rano"));
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
            <div class="col-md-4">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Propriedade
                    </div>
                    <div class="panel-body text-center">
                        <h4 > <%=p.getNome()%></h4>
                    </div>
                </div>
            </div>

        </div>
        <hr>
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-dismissable alert-info text-center">
                    <p>Insira ou selecione um ano na tabela abaixo</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row">





                    <div class="col-md-6 col-md-offset-3 text-center" >

                        <span>Anos inseridos</span><br>
                        <table class="table table-bordered table-responsive table-striped text-center ">
                            <div class="form-group form-group-lg ">
                                <form action="nivel-data.jsp" method="post">

                                    <tr>
                                        <td colspan="3">


                                            <input type="number" max="2100" min="1900" placeholder="Insira o ano da análise" id="ano" class="form-control" name="ano"><br>




                                        </td>

                                    </tr>
                                    
                                    <%if(!a.isEmpty()){%>
                                    <tr>
                                        <th>
                                            Opção
                                        </th>

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
                                            <input class="form-control" type="radio" class="Rano" name="Rano" value="<%=ano%>"> 
                                        </td>

                                        <td>
                                            <%=ano%>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="../analisefinanceira/nivel-data.jsp?excluir=<%=ano%>" class="btn btn-lg btn-warning">Excluir</a>
                                            </div>
                                        </td>
                                    </tr>
                                    <%}%>
                                     <%}%>

                                    <tr>
                                        <td colspan="3">
                                            <button type="submit" class="btn btn-success btn-lg center-block">Entrar</button>
                                        </td>
                                    </tr>
                                   
                                </form>
                            </div>     

                        </table>
                    </div>

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


    <script>
        $(document).ready(function () {

            $("#ano").focus(function () {
                $("input:radio").removeAttr("checked");

            });



        });
    </script>


</body>
</html>
