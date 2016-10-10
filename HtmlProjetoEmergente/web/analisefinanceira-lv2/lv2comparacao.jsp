<%@page import="dao.Lv2resultadoDAO"%>
<%@page import="modelo.Lv2resultado"%>
<%@page import="dao.Passoslv2"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv2.jsp"%>

<%    Passoslv2 passos = (Passoslv2) session.getAttribute("Passoslv2");
    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();
    Lv2resultado lv2resultado = new Lv2resultado();
        Lv2resultadoDAO lv2resultadodao = new Lv2resultadoDAO();

    if (Integer.parseInt(request.getParameter("codigo")) == 0) {
        lv2resultado = lv2resultadodao.media();
    } else if (Integer.parseInt(request.getParameter("codigo")) == 1) {
        lv2resultado = lv2resultadodao.media("<= 10000");
    } else if (Integer.parseInt(request.getParameter("codigo")) == 2) {
        lv2resultado = lv2resultadodao.media("> 10000 AND areamedia < 50000 ");
    } else if (Integer.parseInt(request.getParameter("codigo")) == 3) {
        lv2resultado = lv2resultadodao.media(">= 50000");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>


        <%@include file="../importacoes/subcabecalholv2.jsp"%>

    <div class="row">
        <div class="col-md-6">
            <div id="grafico1"></div>
            <div id="grafico2"></div>
            <div id="grafico3"></div>
            <div id="grafico4"></div>
            <div id="grafico5"></div>
            <div id="grafico11"></div>
        </div>
        <div class="col-md-6">
            <div id="grafico6"></div>
            <div id="grafico7"></div>
            <div id="grafico8"></div>
            <div id="grafico9"></div>
            <div id="grafico10"></div>
            <div id="grafico12"></div>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="col-md-12 text-center">
            <a class="btn btn-lg btn-danger " href="lv2resultados.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
        </div>
    </div>

   




    <script src="../js/highcharts.js"></script>
    <script src="../js/data.js"></script>
    <script src="../js/exporting.js"></script>
    <script>
      

        $(function () {
            $('#grafico1').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Area Média'
                },
                xAxis: {
                    categories: ['Area Média'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Hectares',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' ha'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getAreamedia()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getAreamedia()%>]
                    }]

            });
        });

        $(function () {
            $('#grafico2').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Area Aproveitável'
                },
                xAxis: {
                    categories: ['Area Aproveitável'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Hectares',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' ha'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getAreaaproveitavel()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getAreaaproveitavel()%>]
                    }]


            });
        });


        $(function () {
            $('#grafico3').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Percentual Rebanho com Cria'
                },
                xAxis: {
                    categories: ['Percentual Rebanho com Cria'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '%',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' %'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getPercentualrebanhocomcria()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getPercentualrebanhocomcria()%>]
                    }]




            });
        });

        $(function () {
            $('#grafico4').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Lotação Média'
                },
                xAxis: {
                    categories: ['Lotação Média'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'CABEÇAS/ha',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' CABEÇAS/ha'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getLotacaomedia2()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getLotacaomedia2()%>]
                    }]


            });
        });

        $(function () {
            $('#grafico5').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Total Receita'
                },
                xAxis: {
                    categories: ['Total Receita'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getTotalreceita()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getTotalreceita()%>]
                    }]



            });
        });

        $(function () {
            $('#grafico6').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Receita Hectare'
                },
                xAxis: {
                    categories: ['Receita Hectare'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$/ha',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$/ha'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getReceitahectar2()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getReceitahectar2()%>]
                    }]


            });
        });

        $(function () {
            $('#grafico7').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Total Custo de Produção'
                },
                xAxis: {
                    categories: ['Total Custo de Produção'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getCustotalproducao()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getCustotalproducao()%>]
                    }]




            });
        });


        $(function () {
            $('#grafico8').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Custo Atividade de Cria'
                },
                xAxis: {
                    categories: ['Custo Atividade de Cria'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getCustoatividadecria1()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getCustoatividadecria1()%>]
                    }]



            });
        });


        $(function () {
            $('#grafico9').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Custo de Produção por Hectare'
                },
                xAxis: {
                    categories: ['Custo de Produção por Hectare'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$/ha',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$/ha'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getCustoproducaohectar1()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getCustoproducaohectar1()%>]
                    }]



            });
        });


        $(function () {
            $('#grafico10').highcharts({
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Custo por Terneiro'
                },
                xAxis: {
                    categories: ['Custo por Terneiro'],
                    title: {
                        text: null
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$/CABEÇA',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$/CABEÇA'
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getCustoterneiro()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getCustoterneiro()%>]
                    }]




            });
        });

        $(function () {
            $('#grafico11').highcharts({
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getMargembruta()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getMargembruta()%>]
                    }]
            });
        });

        $(function () {
            $('#grafico12').highcharts({
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
                        name: 'Sua propriedade',
                        data: [<%=passos.getLv2resultado().getProducaodecarne()%>]
                    },
                    {
                        name: 'Média das Outras Propriedades',
                        data: [<%=lv2resultado.getProducaodecarne()%>]
                    }]
            });
        });
    </script>
</body>
</html>
