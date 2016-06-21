

<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Lv2resultado"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv2.jsp"%>

<%    session.setAttribute("Link", 5);

    Passoslv2 passos = (Passoslv2) session.getAttribute("Passoslv2");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv2resultado lv2resultado = passos.getLv2resultadodao().buscarPorPropriedade(id, ano);

    if (lv2resultado == null) {
        lv2resultado = new Lv2resultado(id, ano);

        lv2resultado.setAreamedia(BigDecimal.valueOf(passos.areaMedia()));
        lv2resultado.setAreaaproveitavel(BigDecimal.valueOf(passos.areaAproveitavel()));
        lv2resultado.setCustoatividadecria1(BigDecimal.valueOf(passos.custoAtividadeDeCria()));
        lv2resultado.setCustoproducaohectar1(BigDecimal.valueOf(passos.custoProducaoHectare()));
        lv2resultado.setCustotalproducao(BigDecimal.valueOf(passos.totalCustoProducao()));
        lv2resultado.setCustoterneiro(BigDecimal.valueOf(passos.custoTerneiro()));
        lv2resultado.setLotacaomedia2(BigDecimal.valueOf(passos.lotacaoMedia()));
        lv2resultado.setPercentualrebanhocomcria(BigDecimal.valueOf(passos.percentualRebanhoComCria()));
        lv2resultado.setReceitahectar2(BigDecimal.valueOf(passos.receitaHectare()));
        lv2resultado.setTotalreceita(BigDecimal.valueOf(passos.totalReceita()));

        passos.getLv2resultadodao().incluir(lv2resultado);
        passos.setLv2resultado(lv2resultado);
        session.setAttribute("Passoslv2", passos);
    } else if (lv2resultado != null) {

        lv2resultado.setAreamedia(BigDecimal.valueOf(passos.areaMedia()));
        lv2resultado.setAreaaproveitavel(BigDecimal.valueOf(passos.areaAproveitavel()));
        lv2resultado.setCustoatividadecria1(BigDecimal.valueOf(passos.custoAtividadeDeCria()));
        lv2resultado.setCustoproducaohectar1(BigDecimal.valueOf(passos.custoProducaoHectare()));
        lv2resultado.setCustotalproducao(BigDecimal.valueOf(passos.totalCustoProducao()));
        lv2resultado.setCustoterneiro(BigDecimal.valueOf(passos.custoTerneiro()));
        lv2resultado.setLotacaomedia2(BigDecimal.valueOf(passos.lotacaoMedia()));
        lv2resultado.setPercentualrebanhocomcria(BigDecimal.valueOf(passos.percentualRebanhoComCria()));
        lv2resultado.setReceitahectar2(BigDecimal.valueOf(passos.receitaHectare()));
        lv2resultado.setTotalreceita(BigDecimal.valueOf(passos.totalReceita()));

        passos.getLv2resultadodao().alterar(lv2resultado);
        passos.setLv2resultado(lv2resultado);
        session.setAttribute("Passoslv2", passos);
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
        <div class="col-md-6">
            <div class="well well-sm">
                Área Média da Propriedade: <%=passos.areaMedia()%> Hectares
            </div>
            <div class="well well-sm">
                Área Aproveitável da Propriedade: <%=passos.areaAproveitavel()%> Hectares
            </div>
            <div class="well well-sm">
                Percentual do Rebanho com Cria: <%=passos.percentualRebanhoComCria()%> %
            </div>
            <div class="well well-sm">
                Lotação Média da Propriedade: <%=passos.lotacaoMedia()%> Cabeças por Hectare
            </div>
            <div class="well well-sm">
                Total Receita da Propriedade: <%=passos.totalReceita()%> R$
            </div>
            <div class="well well-sm">
                Receita por Hectare: <%=passos.receitaHectare()%> R$/Hectare
            </div>
            <div class="well well-sm">
                Custo Total de Produção: <%=passos.totalCustoProducao()%> R$
            </div>
            <div class="well well-sm">
                Custo Atividade de Cria: <%=passos.custoAtividadeDeCria()%> R$
            </div>
            <div class="well well-sm">
                Custo de Produção por Hectare: <%=passos.custoProducaoHectare()%> R$/Hectare
            </div>
            <div class="well well-sm">
                Custo por Terneiro: <%=passos.custoTerneiro()%> R$/Terneiro
            </div>


        </div>


        <div class="col-md-6 conteudo">
            <a href="lv2comparacao.jsp" class="btn btn-primary btn-block">Comparar resultados com outros produtores</a>
            <a href="../propriedades/propriedades.jsp" class="btn btn-primary btn-block">Voltar a tela de seleção de propriedade</a><br>

        </div>

    </div>
    <hr>


</div>
</body>
</html>
