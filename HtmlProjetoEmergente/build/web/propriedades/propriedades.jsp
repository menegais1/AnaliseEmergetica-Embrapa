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
           
            String msg = "hidden",msg1="hidden";
            if (request.getParameter("id") != null) {
                session.setAttribute("Propriedade_id", Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("../analise/analise-escolha.jsp");
                return;
            }

            if (request.getParameter("idex") != null) {
                pdao.excluir(pdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("idex"))));
                msg1=null;
            }

            if (request.getParameter("ok") != null) {
                msg = null;
            }
             List<Propriedade> plista = pdao.listarPorUsuario(u.getId());
        %>

    <div class="container conteudo">

        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <h1>Propriedades</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" <%=msg%>>
                <div class="alert alert-success">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Sucesso!</strong> Sua propriedade foi incluida com sucesso.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" <%=msg1%>>
                <div class="alert alert-success">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Sucesso!</strong> Sua propriedade foi excluida com sucesso.
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-md-12">
                <table class="table table-bordered table-responsive  conteudo">
                    <tr>
                        <th>
                            Nome
                        </th>
                        <th>
                            Municipio
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
                        <td style="vertical-align:center;font-size:24px">
                            <%=p.getNome()%>
                        </td>
                        <td style="vertical-align:center;font-size:24px">
                            <%=p.getCidade()%>
                        </td>
                        <td style="vertical-align:center;font-size:24px" class="text-center">
                            <%=p.getUf()%>
                        </td>
                        <td class="text-center">
                            <div class="btn-group">
                                <a href="propriedades.jsp?id=<%=p.getId()%>" class="btn btn-lg btn-success">Entrar</a>
                                <button data-toggle="modal" data-target="#myModal" class="btn btn-lg btn-danger" onClick="idex=<%=p.getId()%>">Excluir</a>
                            </div>
                        </td>
                    </tr>

                    
                    <%}%>
                    
                    <div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Tem Certeza que quer excluir? </h4>
                                </div>
                                <div class="modal-body">
                                    <p>Você tem certeza que quer excluir essa propriedade?</p>
                                </div>
                                <div class="modal-footer">
                                    <a onClick="excluir()" class="btn btn-lg btn-danger">Confirmar Exclusão</a>
                                    <button type="button" class="btn btn-lg btn-default" data-dismiss="modal">Cancelar</button>
                                </div>
                            </div>

                        </div>
                    </div>


                </table>
            </div>
        </div>

        <div class="row conteudo">
            <div class="col-md-12">
                <a class="btn btn-primary btn-block btn-lg" href="propriedade-add.jsp">Adicionar nova propriedade <span class="glyphicon glyphicon-plus"></span></a>
            </div>
        </div>


    </div>
    
    
    <script>
        var idex;
        
        function excluir(){
            document.location.href="propriedades.jsp?idex="+idex;
        }
        
        
    </script>
</body>
</html>
