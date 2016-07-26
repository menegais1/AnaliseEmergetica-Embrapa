<%@page import="modelo.Lv2resultado"%>
<%@page import="dao.Passoslv2"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv2.jsp"%>

<%    Passoslv2 passos = (Passoslv2) session.getAttribute("Passoslv2");
    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();
    Lv2resultado lv2resultado = passos.getLv2resultadodao().media();

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
        </div>
        <div class="col-md-6">
            <div id="grafico6"></div>
            <div id="grafico7"></div>
            <div id="grafico8"></div>
            <div id="grafico9"></div>
            <div id="grafico10"></div>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="col-md-12 text-center">
            <a class="btn btn-lg btn-danger " href="lv2resultados.jsp">Voltar <span class="glyphicon glyphicon-backward"></span></a>
        </div>
    </div>

    <!--  <table id="areamedia" class="hidden" >
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
                  <th>HM²</th>
                  <td><%=passos.getLv2resultado().getAreamedia()%></td>
                  <td><%=lv2resultado.getAreamedia()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="areaaproveitavel" class="hidden" >
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
                  <th>HM²</th>
                  <td><%=passos.getLv2resultado().getAreaaproveitavel()%></td>
                  <td><%=lv2resultado.getAreaaproveitavel()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="percentualrebanhocomcria" class="hidden" >
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
                  <th>%</th>
                  <td><%=passos.getLv2resultado().getPercentualrebanhocomcria()%></td>
                  <td><%=lv2resultado.getPercentualrebanhocomcria()%></td>
  
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
                  <td><%=passos.getLv2resultado().getLotacaomedia2()%></td>
                  <td><%=lv2resultado.getLotacaomedia2()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="totalreceita" class="hidden" >
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
                  <td><%=passos.getLv2resultado().getTotalreceita()%></td>
                  <td><%=lv2resultado.getTotalreceita()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="receitahectar" class="hidden" >
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
                  <td><%=passos.getLv2resultado().getReceitahectar2()%></td>
                  <td><%=lv2resultado.getReceitahectar2()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="custotalproducao" class="hidden" >
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
                  <td><%=passos.getLv2resultado().getCustotalproducao()%></td>
                  <td><%=lv2resultado.getCustotalproducao()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="custoatividadecria" class="hidden" >
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
                  <td><%=passos.getLv2resultado().getCustoatividadecria1()%></td>
                  <td><%=lv2resultado.getCustoatividadecria1()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="custoproducaohectar" class="hidden" >
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
                  <td><%=passos.getLv2resultado().getCustoproducaohectar1()%></td>
                  <td><%=lv2resultado.getCustoproducaohectar1()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
      <table id="custoterneiro" class="hidden" >
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
                  <th>R$/CABEÇA</th>
                  <td><%=passos.getLv2resultado().getCustoterneiro()%></td>
                  <td><%=lv2resultado.getCustoterneiro()%></td>
  
              </tr>
  
          </tbody>
      </table>
  
  
  
  </div>
    -->





    <script src="../js/highcharts.js"></script>
    <script src="../js/data.js"></script>
    <script src="../js/exporting.js"></script>
    <script>
        /* $(function () {
         $('#grafico1').highcharts({
         data: {
         table: 'areamedia'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Area Média da Propriedade'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'HM²'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         
         $(function () {
         $('#grafico2').highcharts({
         data: {
         table: 'areaaproveitavel'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Area Aproveitável da Propriedade'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'HM²'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico3').highcharts({
         data: {
         table: 'percentualrebanhocomcria'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Percentual do Rebanho com Cria'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: '%'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico4').highcharts({
         data: {
         table: 'lotacaomedia'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Lotação Média da Propriedade'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'Cabeças/HM²'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico5').highcharts({
         data: {
         table: 'totalreceita'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Receita Total da Propriedade'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'R$'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico6').highcharts({
         data: {
         table: 'receitahectar'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Receita por Hectare'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'R$/HM²'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico7').highcharts({
         data: {
         table: 'custotalproducao'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Custo Total de Procução'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'R$'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico8').highcharts({
         data: {
         table: 'custoatividadecria'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Custo Atividade de Cria'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'R$'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico9').highcharts({
         data: {
         table: 'custoproducaohectar'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Custo de Produção por Hectare'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'R$/HM²'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         $(function () {
         $('#grafico10').highcharts({
         data: {
         table: 'custoterneiro'
         },
         chart: {
         type: 'column'
         },
         title: {
         text: 'Custo por Terneiro'
         },
         yAxis: {
         allowDecimals: false,
         title: {
         text: 'R$/Cabeça'
         }
         },
         tooltip: {
         formatter: function () {
         return '<b>' + this.series.name + '</b><br/>' +
         this.point.y + ' ' + this.point.name.toLowerCase();
         }
         }
         });
         });
         */

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
                    valueSuffix: ' HM²'
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
                    valueSuffix: ' HM²'
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
                        text: 'CABEÇAS/HM²',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' CABEÇAS/HM²'
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
                        text: 'R$/HM²',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$/HM²'
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
                        text: 'R$/HM²',
                        align: 'high'
                    },
                    labels: {
                        overflow: 'justify'
                    }
                },
                tooltip: {
                    valueSuffix: ' R$/HM²'
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
    </script>
</body>
</html>
