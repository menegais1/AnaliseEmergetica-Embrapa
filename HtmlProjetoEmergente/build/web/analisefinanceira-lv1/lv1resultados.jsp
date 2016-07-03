
<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Lv1resultado"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv1.jsp"%>


<%    session.setAttribute("Link", 5);

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

     
   
         Passoslv1 passos = (Passoslv1) session.getAttribute("Passoslv1");

    
    
    if(passos.getLv1p4()== null){
        response.sendRedirect("lv1p4.jsp");
    }

    Lv1resultado lv1resultado = passos.getLv1resultadodao().buscarPorPropriedade(id, ano);

    if (lv1resultado == null) {
        lv1resultado = new Lv1resultado(id, ano);

        lv1resultado.setCustohectar(BigDecimal.valueOf(passos.custoHectare()));
        lv1resultado.setLotacaomedia(BigDecimal.valueOf(passos.lotacaoMedia()));
        lv1resultado.setReceitahectar(BigDecimal.valueOf(passos.receitaHectare()));
        lv1resultado.setTotalcustoproducao(BigDecimal.valueOf(passos.totalCustoProducao()));

        passos.getLv1resultadodao().incluir(lv1resultado);
        passos.setLv1resultado(lv1resultado);
        session.setAttribute("Passoslv1", passos);
    } else if (lv1resultado != null) {

        lv1resultado.setCustohectar(BigDecimal.valueOf(passos.custoHectare()));
        lv1resultado.setLotacaomedia(BigDecimal.valueOf(passos.lotacaoMedia()));
        lv1resultado.setReceitahectar(BigDecimal.valueOf(passos.receitaHectare()));
        lv1resultado.setTotalcustoproducao(BigDecimal.valueOf(passos.totalCustoProducao()));

        passos.getLv1resultadodao().alterar(lv1resultado);
        passos.setLv1resultado(lv1resultado);
        session.setAttribute("Passoslv1", passos);
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
        <div class="col-md-6">
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
                Custo de Produção por Terneiro Desmamado: <%=passos.custoTerneiro()%> R$ por Cabeça
            </div>

        </div>

        <div class="row">
            <div class="col-md-6 conteudo">
                <a href="../analisefinanceira-lv2/lv2escolha.jsp" class="btn btn-primary btn-block">Ir para o próximo nível</a>
                <a href="lv1comparacao.jsp" class="btn btn-primary btn-block">Comparar resultados com outros produtores</a>
                <a href="../propriedades/propriedades.jsp" class="btn btn-primary btn-block">Voltar a tela de seleção de propriedade</a><br>

            </div>

        </div>

    </div>


</div>
</body>
</html>
