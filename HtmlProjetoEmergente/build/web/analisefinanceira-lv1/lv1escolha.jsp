
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../cabecalho.jsp" %>%>

    <div class="container conteudo">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Análise Financeira</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-1 well">
                <h2>Propriedade: xxxxxxx</h2>
                <h2>Ano: xxxx</h2>
                <h2>Nivel: 1</h2>
            </div>
        </div>

        <hr>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h3>Selecione uma das opções</h3>

                <a class="btn btn-danger btn-block" href="">Fazer Análise</a>
                <a class="btn btn-primary btn-block disabled" href="">Resultados</a>
                <a class="btn btn-primary btn-block disabled" href="">Comparar Resultados</a>
                <a class="btn btn-primary btn-block disabled" href="">Próximo Nível</a>
            </div>
        </div>
        <hr>

        <div class="row">
            <div class="col-md-12 text-center">
                <a class="btn btn-lg btn-danger " href="../analisefinanceira/nivel-data.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
            </div>
        </div>
    </div>

</body>
</html>
