
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../cabecalho.jsp"%>

    <div class="container conteudo">
        <div class="col-md-12">
            <h1 class="text-center">Análise Financeira</h1>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-1">
                <h2 class="well">Propriedade: xxxx</h2>
            </div>
        </div>
        <hr>
        <div class="row conteudo">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-5 col-md-offset-2">
                        <div class="form-group form-group-lg ">
                            <form action="../analisefinanceira-lv1/lv1escolha.jsp" method="post">
                                <label>Ano: </label>
                                <input type="number" max="2100" min="1900" placeholder="Insira o ano da análise" class="form-control" name="ano"><br>


                                <button type="submit" class="btn btn-success btn-lg center-block">Enviar</button>

                            </form>
                        </div>
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
</body>
</html>
