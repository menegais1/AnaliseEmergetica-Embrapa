
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>

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

        <%@include file="../importacoes/navegacaolv2.jsp"%>


        <div class='row'>
            <div class="col-md-6 col-md-offset-3">
                <div class="well well-sm">
                    Área Média da Propriedade:
                </div>
                <div class="well well-sm">
                    Área Aproveitável da Propriedade:
                </div>
                <div class="well well-sm">
                    Percentual do Rebanho com Cria:
                </div>
                <div class="well well-sm">
                    Lotação Média da Propriedade:
                </div>
                <div class="well well-sm">
                    Total Receita da Propriedade:
                </div>
                <div class="well well-sm">
                    Receita por Hectare:
                </div>
                <div class="well well-sm">
                    Custo Total de Produção:
                </div>
                <div class="well well-sm">
                    Custo Atividade de Cria:
                </div>
                <div class="well well-sm">
                    Custo de Produção por Hectare:
                </div>
                <div class="well well-sm">
                    Custo por Terneiro:
                </div>


            </div>


        </div>
        <hr>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <a href="../analisefinanceira/nivel-data.jsp" class="btn btn-primary btn-block">Fazer outra análise</a>
                <a href="lv2comparacao.jsp" class="btn btn-primary btn-block">Comparar resultados com outros produtores</a>
                <a href="../propriedades/propriedades.jsp" class="btn btn-primary btn-block">Voltar a tela de seleção de propriedade</a><br>

            </div>
        </div>

        <div class="conteudo">

        </div>
    </div>
</body>
</html>
