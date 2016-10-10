

<%@page import="dao.Lv2resultadoDAO"%>
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

    Lv2resultadoDAO lv2resultadodao = new Lv2resultadoDAO();

    Lv2resultado lv2resultado = lv2resultadodao.buscarPorPropriedade(id, ano);

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
        lv2resultado.setProducaodecarne(passos.kg());
        lv2resultado.setMargembruta(passos.margembruta());

        lv2resultadodao.incluir(lv2resultado);
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
        lv2resultado.setProducaodecarne(passos.kg());
        lv2resultado.setMargembruta(passos.margembruta());

        lv2resultadodao.alterar(lv2resultado);
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

        <div class="row">
            <div class="col-md-4">
                <a href="../propriedades/propriedades.jsp" class="btn btn-warning btn-block center-block">Voltar a tela de seleção de propriedade</a>
            </div>
            <div class="col-md-4 col-md-offset-4">
                <button data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-block center-block">Comparar resultados com outros produtores</button>
            </div>

            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Escolha a Faixa de Produtores para Realizar a Comparação </h4>
                        </div>
                        <div class="modal-body">
                            <p>Clique em uma das faixas de área desejada</p>
                        </div>
                        <div class="modal-footer">
                            <a href="lv2comparacao.jsp?codigo=1" class="btn btn-sm btn-danger">Menor que 10.000 ha</a>
                            <a href="lv2comparacao.jsp?codigo=2" class="btn btn-sm btn-danger">Entre 10.000 e 50.000 ha</a>
                            <a href="lv2comparacao.jsp?codigo=3" class="btn btn-sm btn-danger">Maior que 50.000 ha</a>
                            <a href="lv2comparacao.jsp?codigo=0" class="btn btn-sm btn-danger">Todas as Áreas</a>

                            <!--<button type="button" class="btn btn-lg btn-default" data-dismiss="modal">Cancelar</button>-->
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <br>
        <div class="col-md-6" id="grafico1">
            
        </div>

        <div class="col-md-6" id="grafico2">

        </div>

        <div class="col-md-6" id="grafico3">

        </div>
        <div class="col-md-6" id="grafico4">

        </div>

        <div class="col-md-6" id="grafico5">

        </div>
        <div class="col-md-6" id="grafico6">

        </div>
        <div class="col-md-6" id="grafico7">

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
                categories: ['Custo por Hectare (R$/ha)', 'Receita por Hectare (R$/ha)', 'Custo por Terneiro (R$/TERNEIRO)'],
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
                categories: ['Lotação Média (CABEÇAS/ha)'],
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

    $(function () {
        $('#grafico6').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Margem Bruta por Hectare'
            },
            xAxis: {
                categories: ['Margem Bruta (R$/ha)'],
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
                    name: 'Margem Bruta',
                    data: [<%=passos.margembruta()%>]
                }
            ]
        });
    });

    $(function () {
        $('#grafico7').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Produção de Carne(KG de Peso Vivo por Hectare'
            },
            xAxis: {
                categories: ['Produção de Carne (KG/ha)'],
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
                    name: 'Produção de Carne',
                    data: [<%=passos.kg()%>]
                }
            ]
        });
    });
</script>
</body>
</html>
