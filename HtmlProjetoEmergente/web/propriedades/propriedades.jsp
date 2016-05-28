

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../cabecalho.jsp"%>

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
                    <tr>
                        <td>
                            xxxxxxxxxxxx
                        </td>
                        <td>
                            xxxxxxxxxxxxx
                        </td>
                        <td>
                            xx
                        </td>
                        <td>
                            <div class="btn-group">
                                <a href="../analise/analise-escolha.jsp" class="btn btn-lg btn-danger">Análise</a>
                                <a href="propriedade-del.jsp" class="btn btn-lg btn-warning">Excluir</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            xxxxxxxxxxxx
                        </td>
                        <td>
                            xxxxxxxxxxxxx
                        </td>
                        <td>
                            xx
                        </td>
                        <td>
                            <div class="btn-group">
                                <a href="../analise/analise-escolha.jsp" class="btn btn-lg btn-danger">Análise</a>
                                <a href="propriedade-del.jsp" class="btn btn-lg btn-warning">Excluir</a>
                            </div>
                        </td>
                    </tr>

                </table>
            </div>
        </div>

        <div class="row conteudo">
            <div class="col-md-12">
                <a class="btn btn-danger btn-block btn-lg" href="propriedade-add.jsp">Adicionar nova propriedade <span class="glyphicon glyphicon-plus"></span></a>
            </div>
        </div>


    </div>
</body>
</html>
