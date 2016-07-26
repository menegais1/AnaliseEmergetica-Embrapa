

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

    if (passos.getLv2p4() == null) {
        response.sendRedirect("lv2p4.jsp");
    }

    if (lv2resultado == null) {
        lv2resultado = new Lv2resultado(id, ano);

        lv2resultado.setAreamedia(passos.areaMedia());
        lv2resultado.setAreaaproveitavel(passos.areaAproveitavel());
        lv2resultado.setCustoatividadecria1(passos.custoAtividadeDeCria());
        lv2resultado.setCustoproducaohectar1(passos.custoProducaoHectare());
        lv2resultado.setCustotalproducao(passos.totalCustoProducao());
        lv2resultado.setCustoterneiro(passos.custoTerneiro());
        lv2resultado.setLotacaomedia2(passos.lotacaoMedia());
        lv2resultado.setPercentualrebanhocomcria(passos.percentualRebanhoComCria());
        lv2resultado.setReceitahectar2(passos.receitaHectare());
        lv2resultado.setTotalreceita(passos.totalReceita());

        passos.getLv2resultadodao().incluir(lv2resultado);
        passos.setLv2resultado(lv2resultado);
        session.setAttribute("Passoslv2", passos);
    } else if (lv2resultado != null) {

        lv2resultado.setAreamedia(passos.areaMedia());
        lv2resultado.setAreaaproveitavel(passos.areaAproveitavel());
        lv2resultado.setCustoatividadecria1(passos.custoAtividadeDeCria());
        lv2resultado.setCustoproducaohectar1(passos.custoProducaoHectare());
        lv2resultado.setCustotalproducao(passos.totalCustoProducao());
        lv2resultado.setCustoterneiro(passos.custoTerneiro());
        lv2resultado.setLotacaomedia2(passos.lotacaoMedia());
        lv2resultado.setPercentualrebanhocomcria(passos.percentualRebanhoComCria());
        lv2resultado.setReceitahectar2(passos.receitaHectare());
        lv2resultado.setTotalreceita(passos.totalReceita());

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
        <div class="col-md-6" id="grafico1">
            <!--<div class="well well-sm">
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

            -->
        </div>

        <div class="col-md-6" id="grafico2">

        </div>

        <div class="col-md-6" id="grafico3">

        </div>
        <div class="col-md-6" id="grafico4">

        </div>
            
            <div class="col-md-6" id="grafico5">

        </div>

            
        <div class="col-md-6 conteudo">
            <br><br>
            <a href="lv2comparacao.jsp" class="btn btn-primary btn-block">Comparar resultados com outros produtores</a>
            <a href="../propriedades/propriedades.jsp" class="btn btn-primary btn-block">Voltar a tela de seleção de propriedade</a><br>

        </div>

    </div>
    <hr>


</div>
</div>

<script>

    $(function () {
        $('#grafico1').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Custo e Receita Total'
            },
            xAxis: {
                categories: ['Custo Total de Produção (R$)', 'Receita Total da Propriedade (R$)'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            tooltip: {
                valueSuffix: ''
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -40,
                y: 60,
                floating: true,
                borderWidth: 1,
                backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                    name: 'Relações de Custo e Receita',
                    data: [<%=passos.totalCustoProducao()%>, <%=passos.totalReceita()%>]
                }]
        });
    });

    $(function () {
        $('#grafico2').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Percentual e Custo da Atividade de Cria'
            },
            xAxis: {
                categories: ['Percentual do Rebanho com Cria (%)', 'Custo da Atividade de Cria (R$)'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            tooltip: {
                valueSuffix: ''
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -40,
                y: 40,
                floating: true,
                borderWidth: 1,
                backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                    name: 'Relações de Atividade de Cria',
                    data: [<%=passos.percentualRebanhoComCria()%>, <%=passos.custoAtividadeDeCria()%>]
                }]
        });
    });

    $(function () {
        $('#grafico3').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Custo e Receita por Hectare'
            },
            xAxis: {
                categories: ['Custo por Hectare (R$/HM²)', 'Receita por Hectare (R$/HM²)', 'Custo por Terneiro (R$/TERNEIRO)'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            tooltip: {
                valueSuffix: ''
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -40,
                y: 150,
                floating: true,
                borderWidth: 1,
                backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                    name: 'Relações de Custo e Receita',
                    data: [<%=passos.custoProducaoHectare()%>, <%=passos.receitaHectare()%>, <%=passos.custoTerneiro()%>]
                }]
        });
    });


    $(function () {
        $('#grafico4').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Area'
            },
            xAxis: {
                categories: ['Area Média', 'Área Áproveitável'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            tooltip: {
                valueSuffix: ''
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -40,
                y: 80,
                floating: true,
                borderWidth: 1,
                backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                    name: 'Relações de Área',
                    data: [<%=passos.areaMedia()%>,<%=passos.areaAproveitavel()%>]
                }
            ]
        });
    });
    
    $(function () {
        $('#grafico5').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Lotação Média'
            },
            xAxis: {
                categories: ['Lotação Média (CABEÇAS/HM²)'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            tooltip: {
                valueSuffix: ''
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -40,
                y: 80,
                floating: true,
                borderWidth: 1,
                backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                    name: 'Lotação Média',
                    data: [<%=passos.lotacaoMedia()%>]
                }
            ]
        });
    });
</script>
</body>
</html>
