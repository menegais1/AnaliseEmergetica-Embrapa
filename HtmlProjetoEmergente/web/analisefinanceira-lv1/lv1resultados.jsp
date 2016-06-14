
<%@page import="modelo.Lv1Resultado"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<%    session.setAttribute("Link", 5);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv1Resultado lv1resultado = passos.getLv1resultadodao().buscarPorPropriedade(id, ano);

    if (lv1resultado == null) {
        lv1resultado = new Lv1Resultado(id, ano);

        lv1resultado.setCustohectar(passos.custoHectar());
        lv1resultado.setLotacaomedia(passos.lotacaoMedia());
        lv1resultado.setReceitahectar(passos.receitaHectar());
        lv1resultado.setTotalcustoproducao(passos.totalCustoProducao());

        passos.getLv1resultadodao().inserir(lv1resultado);
        passos.setLv1resultado(lv1resultado);
        session.setAttribute("Passos", passos);
    } else if (lv1resultado != null) {

        lv1resultado.setCustohectar(passos.custoHectar());
        lv1resultado.setLotacaomedia(passos.lotacaoMedia());
        lv1resultado.setReceitahectar(passos.receitaHectar());
        lv1resultado.setTotalcustoproducao(passos.totalCustoProducao());

        passos.getLv1resultadodao().atualizar(lv1resultado);
        passos.setLv1resultado(lv1resultado);
        session.setAttribute("Passos", passos);
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp" %>

        <%@include  file="../importacoes/subcabecalholv1.jsp" %>
    <hr>

    <%@include file="../importacoes/navegacaolv1.jsp"%>

    <div class='row'>
        <div class="col-md-6 col-md-offset-3">
            <div class="well well-sm">
                Lotação Média da Propriedade: <%=passos.getLv1resultado().getLotacaomedia()%> Cabeças por Hectare
            </div>
            <div class="well well-sm">
                Receita por Hectare: <%=passos.getLv1resultado().getReceitahectar()%> R$ por Hectare
            </div>
            <div class="well well-sm">
                Total dos Custos de Produção: <%=passos.getLv1resultado().getTotalcustoproducao()%> R$
            </div>
            <div class="well well-sm">
                Custo de Produçao por Hectare: <%=passos.getLv1resultado().getCustohectar()%> R$ por Hectare
            </div>
            <div class="well well-sm">
                Custo de Atividade de Cria: <%=passos.custoAtividadeDeCria()%> R$
            </div>
            <div class="well well-sm">
                Custo de Produção por Terneiro Desmamado: <%=passos.custoTerneiro1()%> R$ por Cabeça
            </div>

        </div>


    </div>
    <hr>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <a href="../analisefinanceira/nivel-data.jsp" class="btn btn-primary btn-block">Fazer outra análise</a>
            <a href="../analisefinanceira-lv2/lv2escolha.jsp" class="btn btn-primary btn-block">Ir para o próximo nível</a>
            <a href="lv1comparacao.jsp" class="btn btn-primary btn-block">Comparar resultados com outros produtores</a>
            <a href="../propriedades/propriedades.jsp" class="btn btn-primary btn-block">Voltar a tela de seleção de propriedade</a><br>

        </div>
    </div>



</div>
</body>
</html>
