<%@page import="modelo.Lv1resultado"%>
<%@page import="dao.Passoslv1"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv1.jsp"%>

<%    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();
    Passoslv1 passos = (Passoslv1) session.getAttribute("Passoslv1");
    
    if(passos.getLv1resultado()== null){
        response.sendRedirect("../index.jsp");
    }

    Lv1resultado lv1resultado = passos.getLv1resultadodao().media();


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

    <table id="custohectare" class="hidden" >
        <thead>
            <tr>
                <th>

                </th>
                <th>
                    Você
                </th>
                <th>
                    Outros
                </th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <th>R$/HM²</th>
                <td><%=passos.getLv1resultado().getCustohectar()%></td>
                <td><%=lv1resultado.getCustohectar()%></td>

            </tr>

        </tbody>
    </table>

    <table id="lotacaomedia" class="hidden" >
        <thead>
            <tr>
                <th>

                </th>
                <th>
                    Você
                </th>
                <th>
                    Outros
                </th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <th>CABEÇAS/HM²</th>
                <td><%=passos.getLv1resultado().getLotacaomedia()%></td>
                <td><%=lv1resultado.getLotacaomedia()%></td>

            </tr>

        </tbody>
    </table>

    <table id="receitahectare" class="hidden" >
        <thead>
            <tr>
                <th>

                </th>
                <th>
                    Você
                </th>
                <th>
                    Outros
                </th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <th>R$/HM²</th>
                <td><%=passos.getLv1resultado().getReceitahectar()%></td>
                <td><%=lv1resultado.getReceitahectar()%></td>

            </tr>

        </tbody>
    </table>

    <table id="totalcustoproducao" class="hidden" >
        <thead>
            <tr>
                <th>

                </th>
                <th>
                    Você
                </th>
                <th>
                    Outros
                </th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <th>R$</th>
                <td><%=passos.getLv1resultado().getTotalcustoproducao()%></td>
                <td><%=lv1resultado.getTotalcustoproducao()%></td>

            </tr>

        </tbody>
    </table>

   
</div>






<script src="../js/data.js"></script>
<script>
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

   


</script>
</body>
</html>
