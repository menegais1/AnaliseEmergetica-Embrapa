
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp" %>

    <div class="container conteudo">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Análise Financeira</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4  well well-sm text-center nivel2">
                <h4>Propriedade: xxxxxxx</h4>
            </div>
            <div class="col-md-4 well well-sm text-center nivel2">
                <h4>Ano: xxxx</h4>
            </div>

            <div class="col-md-4 well well-sm text-center nivel2">
                <h4>Nivel: 2</h4>
            </div>
        </div>


        <hr>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h3>Selecione uma das opções</h3>
                <!--ADD .DISABLED-->
                <a class="btn btn-danger btn-block" href="lv2p1.jsp">Fazer Análise</a>
                <a class="btn btn-primary btn-block " href="lv2resultados.jsp">Resultados</a>
                <a class="btn btn-primary btn-block " href="lv2comparacao.jsp">Comparar Resultados</a>
                <a class="btn btn-primary btn-block " href="../analisefinanceira-lv1/lv1escolha.jsp">Nível Anterior</a>
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
