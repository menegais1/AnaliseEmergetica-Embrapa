
<%@page import="dao.Lv1resultadoDAO"%>
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

    if (passos.getLv1p4() == null) {
        response.sendRedirect("lv1p4.jsp");
    }

        Lv1resultadoDAO lv1resultadodao = new Lv1resultadoDAO();

    Lv1resultado lv1resultado = lv1resultadodao.buscarPorPropriedade(id, ano);

    if (lv1resultado == null) {
        lv1resultado = new Lv1resultado(id, ano);

        lv1resultado.setCustohectar(passos.custoHectare());
        lv1resultado.setLotacaomedia(passos.lotacaoMedia());
        lv1resultado.setReceitahectar(passos.receitaHectare());
        lv1resultado.setMargembruta(passos.margemBruta());

        lv1resultadodao.incluir(lv1resultado);
        passos.setLv1resultado(lv1resultado);
        session.setAttribute("Passoslv1", passos);
    } else if (lv1resultado != null) {

        lv1resultado.setCustohectar(passos.custoHectare());
        lv1resultado.setLotacaomedia(passos.lotacaoMedia());
        lv1resultado.setReceitahectar(passos.receitaHectare());
        lv1resultado.setMargembruta(passos.margemBruta());

        lv1resultadodao.alterar(lv1resultado);
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


    <div class="row">
        <div class="col-md-4">
            <a href="../propriedades/propriedades.jsp" class="btn btn-warning btn-block center-block">Voltar a tela de seleção de propriedade</a>
        </div>
        <div class="col-md-4">
            <button  data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-block center-block">Comparar resultados com outros produtores</button>
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
                        <a href="lv1comparacao.jsp?codigo=1" class="btn btn-sm btn-danger">Menor que 10.000 ha</a>
                        <a href="lv1comparacao.jsp?codigo=2" class="btn btn-sm btn-danger">Entre 10.000 e 50.000 ha</a>
                        <a href="lv1comparacao.jsp?codigo=3" class="btn btn-sm btn-danger">Maior que 50.000 ha</a>
                        <a href="lv1comparacao.jsp?codigo=0" class="btn btn-sm btn-danger">Todas as Áreas</a>

                        <!--<button type="button" class="btn btn-lg btn-default" data-dismiss="modal">Cancelar</button>-->
                    </div>
                </div>

            </div>
        </div>

        <div class="col-md-4">
            <a href="../analisefinanceira-lv2/lv2escolha.jsp" class="btn btn-warning btn-block center-block">Ir para o próximo nível</a>
        </div>



    </div>
    <br>
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




</div>








<script src="../js/data.js"></script>
<!--<script>
    $(function () {
        $('#grafico1').highcharts({
            data: {
                table: 'custohectare'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Custo por Hectare'
            },
            yAxis: {
                title: {
                    text: 'R$/HM²'
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ' ' + this.point.name;
                }
            }
        });
    });

    $(function () {
        $('#grafico2').highcharts({
            data: {
                table: 'lotacaomedia'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Lotação Media da Propriedade'
            },
            yAxis: {
                title: {
                    text: 'Cabeças por Hectare'
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ' ' + this.point.name;
                }
            }
        });
    });

    $(function () {
        $('#grafico3').highcharts({
            data: {
                table: 'receitahectare'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Receita por Hectare'
            },
            yAxis: {
                title: {
                    text: 'R$/HM²'
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ' ' + this.point.name;
                }
            }
        });
    });

    $(function () {
        $('#grafico4').highcharts({
            data: {
                table: 'totalcustoproducao'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Total Custo de Procução'
            },
            yAxis: {
                title: {
                    text: 'R$'
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ' ' + this.point.name;
                }
            }
        });
    });




</script>-->




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
                        ["Custo por Hectare",<%=passos.getLv1resultado().getCustohectar()%>]
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
                        ["Receita por Hectare",<%=passos.getLv1resultado().getReceitahectar()%>]
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
                        ["Lotação Média",<%=passos.getLv1resultado().getLotacaomedia()%>]
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
                        ["Margem Bruta por Hectare",<%=passos.getLv1resultado().getMargembruta()%>]
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



</div>


</div>
</body>
</html>
