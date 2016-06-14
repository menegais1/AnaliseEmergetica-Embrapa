

<%@page import="modelo.Lv2Resultado"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<%    session.setAttribute("Link", 5);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv2Resultado lv2resultado = passos.getLv2resultadodao().buscarPorPropriedade(id, ano);

    if (lv2resultado == null) {
        lv2resultado = new Lv2Resultado(id, ano);

        lv2resultado.setAreamedia(passos.areaMedia());
        lv2resultado.setAreaaproveitavel(passos.areaAproveitavel());
        lv2resultado.setCustoatividadecria1(passos.custoAtividadeDeCria1());
        lv2resultado.setCustoproducaohectar1(passos.custoProducaoHectar1());
        lv2resultado.setCustotalproducao(passos.totalCustoProducao1());
        lv2resultado.setCustoterneiro(passos.custoTerneiro1());
        lv2resultado.setLotacaomedia2(passos.lotacaoMedia2());
        lv2resultado.setPercentualrebanhocomcria(passos.percentualRebanhoComCria1());
        lv2resultado.setReceitahectar2(passos.receitahectar2());
        lv2resultado.setTotalreceita(passos.totalReceita());

        passos.getLv2resultadodao().inserir(lv2resultado);
        passos.setLv2resultado(lv2resultado);
        session.setAttribute("Passos", passos);
    } else if (lv2resultado != null) {

        lv2resultado.setAreamedia(passos.areaMedia());
        lv2resultado.setAreaaproveitavel(passos.areaAproveitavel());
        lv2resultado.setCustoatividadecria1(passos.custoAtividadeDeCria1());
        lv2resultado.setCustoproducaohectar1(passos.custoProducaoHectar1());
        lv2resultado.setCustotalproducao(passos.totalCustoProducao1());
        lv2resultado.setCustoterneiro(passos.custoTerneiro1());
        lv2resultado.setLotacaomedia2(passos.lotacaoMedia2());
        lv2resultado.setPercentualrebanhocomcria(passos.percentualRebanhoComCria1());
        lv2resultado.setReceitahectar2(passos.receitahectar2());
        lv2resultado.setTotalreceita(passos.totalReceita());

        passos.getLv2resultadodao().atualizar(lv2resultado);
        passos.setLv2resultado(lv2resultado);
        session.setAttribute("Passos", passos);
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>
        <%@include file="../importacoes/subcabecalholv2.jsp"%>

    <hr>
    <%@include file="../importacoes/navegacaolv2.jsp"%>



    <div class='row'>
        <div class="col-md-6 col-md-offset-3">
            <div class="well well-sm">
                Área Média da Propriedade: <%=passos.areaMedia()%> Hectares
            </div>
            <div class="well well-sm">
                Área Aproveitável da Propriedade: <%=passos.areaAproveitavel()%> Hectares
            </div>
            <div class="well well-sm">
                Percentual do Rebanho com Cria: <%=passos.percentualRebanhoComCria1()%> %
            </div>
            <div class="well well-sm">
                Lotação Média da Propriedade: <%=passos.lotacaoMedia2()%> Cabeças por Hectare
            </div>
            <div class="well well-sm">
                Total Receita da Propriedade: <%=passos.totalReceita()%> R$
            </div>
            <div class="well well-sm">
                Receita por Hectare: <%=passos.receitahectar2()%> R$/Hectare
            </div>
            <div class="well well-sm">
                Custo Total de Produção: <%=passos.totalCustoProducao1()%> R$
            </div>
            <div class="well well-sm">
                Custo Atividade de Cria: <%=passos.custoAtividadeDeCria1()%> R$
            </div>
            <div class="well well-sm">
                Custo de Produção por Hectare: <%=passos.custoProducaoHectar1()%> R$/Hectare
            </div>
            <div class="well well-sm">
                Custo por Terneiro: <%=passos.custoTerneiro1()%> R$/Terneiro
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
