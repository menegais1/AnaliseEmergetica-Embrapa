
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../cabecalho.jsp" %>

    <div class="container conteudo">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Análise</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-1">
                <h2 class="well">Propriedade: xxxxxxxx</h2>
            </div>

        </div>
        <div class="row conteudo">
            <div class="col-md-6 text-center well">
                <h3>Análise Financeira</h3>
                <span>Clique aqui para realizar a análise financeira de sua propriedade (Recomendado)</span><br><br>
                <a href="../analisefinanceira/nivel-data.jsp" class="btn btn-block btn-lg btn-primary">Análise Financeira</a>
            </div>
            <div class="col-md-6 text-center well">
                <h3>Análise Emergética</h3>
                <span>Clique aqui para realizar a análise emergética de sua propriedade (Avançado) </span><br><br>
                <a class="btn btn-block btn-lg btn-primary">Análise Emergética</a>
            </div>
        </div>
        <hr>
        <div class="row text-center">
            <div class="col-md-12">
                <a class="btn btn-lg btn-danger" href="../propriedades/propriedades.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
            </div>
        </div>

    </div>

</body>
</html>
