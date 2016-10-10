<%@page import="dao.Lv1resultadoDAO"%>
<%@page import="modelo.Lv1resultado"%>
<%@page import="dao.Passoslv1"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv1.jsp"%>

<%    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();
    Passoslv1 passos = (Passoslv1) session.getAttribute("Passoslv1");
            Lv1resultadoDAO lv1resultadodao = new Lv1resultadoDAO();

    if (passos.getLv1resultado() == null) {
        response.sendRedirect("../index.jsp");
    }
    Lv1resultado lv1resultado = new Lv1resultado();
    if (Integer.parseInt(request.getParameter("codigo")) == 0) {
        lv1resultado = lv1resultadodao.media();
    } else if (Integer.parseInt(request.getParameter("codigo")) == 1) {
        lv1resultado = lv1resultadodao.media("<= 10000");
    } else if (Integer.parseInt(request.getParameter("codigo")) == 2) {
        lv1resultado = lv1resultadodao.media("> 10000 AND area_apro < 50000 ");
    } else if (Integer.parseInt(request.getParameter("codigo")) == 3) {
        lv1resultado = lv1resultadodao.media(">= 50000");
    }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>



        <%@include  file="../importacoes/subcabecalholv1.jsp" %>

    <div class="row">
        <div class="col-md-6">
            <div id="grafico1"></div>
            <div id="grafico2"></div>

        </div>
        <div class="col-md-6">
            <div id="grafico3"></div>
            <div id="grafico4"></div>

        </div>
    </div>

    <hr>

    <div class="row">
        <div class="col-md-12 text-center">
            <a class="btn btn-lg btn-danger " href="lv1resultados.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
        </div>
    </div>

    





    <script src="../js/data.js"></script>
   

    <script>
        $(function () {
            $('#grafico1').highcharts({
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Custo por Hectare'
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$/ha'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: 'Custo por Hectare: <b>{point.y:.1f} R$/ha</b>'
                },
                series: [{
                        name: 'Custo Por Hectare',
                        data: [
                            ["Sua Propriedade",<%=passos.getLv1resultado().getCustohectar()%>],
                            ["Outras Propriedades",<%=lv1resultado.getCustohectar()%>]
                        ],
                        dataLabels: {
                            enabled: true,
                            rotation: -90,
                            color: '#FFFFFF',
                            align: 'right',
                            format: '{point.y:.1f}', // one decimal
                            y: 10, // 10 pixels down from the top
                            style: {
                                fontSize: '13px',
                                fontFamily: 'Verdana, sans-serif'
                            }
                        }
                    }]
            });
        });

        $(function () {
            $('#grafico2').highcharts({
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Receita por Hectare'
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'R$/ha'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: 'Receita por Hectare: <b>{point.y:.1f} R$/ha</b>'
                },
                series: [{
                        name: 'Receita Por Hectare',
                        data: [
                            ["Sua Propriedade",<%=passos.getLv1resultado().getReceitahectar()%>],
                            ["Outras Propriedades",<%=lv1resultado.getReceitahectar()%>]

                        ],
                        dataLabels: {
                            enabled: true,
                            rotation: -90,
                            color: '#FFFFFF',
                            align: 'right',
                            format: '{point.y:.1f}', // one decimal
                            y: 10, // 10 pixels down from the top
                            style: {
                                fontSize: '13px',
                                fontFamily: 'Verdana, sans-serif'
                            }
                        }
                    }]
            });
        });

        $(function () {
            $('#grafico3').highcharts({
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Lotação Média'
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'cab/ha'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: 'Lotação Média: <b>{point.y:.1f} cap/ha</b>'
                },
                series: [{
                        name: 'Lotação Média',
                        data: [
                            ["Sua Propriedade",<%=passos.getLv1resultado().getLotacaomedia()%>],
                            ["Outras Propriedades",<%=lv1resultado.getLotacaomedia()%>]

                        ],
                        dataLabels: {
                            enabled: true,
                            rotation: -90,
                            color: '#FFFFFF',
                            align: 'right',
                            format: '{point.y:.1f}', // one decimal
                            y: 10, // 10 pixels down from the top
                            style: {
                                fontSize: '13px',
                                fontFamily: 'Verdana, sans-serif'
                            }
                        }
                    }]
            });
        });

        $(function () {
            $('#grafico4').highcharts({
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Margem Bruta por Hectare'
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    title: {
                        text: 'R$/ha'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: 'Margem Bruta por Hectare: <b>{point.y:.1f} R$/ha</b>'
                },
                series: [{
                        name: 'Margem Bruta por Hectare',
                        data: [
                            ["Sua Propriedade",<%=passos.margemBruta()%>],
                            ["Outras Propriedades",<%=lv1resultado.getMargembruta()%>]

                        ],
                        dataLabels: {
                            enabled: true,
                            rotation: -90,
                            color: '#FFFFFF',
                            align: 'right',
                            format: '{point.y:.1f}', // one decimal
                            y: 10, // 10 pixels down from the top
                            style: {
                                fontSize: '13px',
                                fontFamily: 'Verdana, sans-serif'
                            }
                        }
                    }]
            });
        });
    </script>
</body>
</html>
