<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Lv2p4"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv2.jsp"%>

<% session.setAttribute("Link", 4);

    Passoslv2 passos = (Passoslv2) session.getAttribute("Passoslv2");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv2p4 lv2p4 = passos.getLv2p4dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p3() == null) {
        response.sendRedirect("lv2p3.jsp");
    }

    if (passos.getLv2p4() == null) {

        passos.setLv2p4(new Lv2p4(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p4 == null && request.getParameter("medicamento") != null) {
        lv2p4 = new Lv2p4(id, ano);

        lv2p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("medicamento")))));
        lv2p4.setCarrapaticidas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("carrapaticidas")))));
        lv2p4.setSal(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sal")))));
        lv2p4.setRacao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("racao")))));
        lv2p4.setCompraDeBovinos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("compra_de_bovinos")))));
        lv2p4.setUntensiliosDeUsoGeral(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("untensilios_de_uso_geral")))));
        lv2p4.setSemem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semem")))));
        lv2p4.setSemente(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semente")))));
        lv2p4.setDefensivosAgriParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("defensivos-agri_para_pastagem")))));
        lv2p4.setAdubosParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("adubos_para_pastagem")))));
        lv2p4.setCombustivel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("combustivel")))));
        lv2p4.setFrete(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("frete")))));
        lv2p4.setArrendamentosDeCampoNativo(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_campo_nativo")))));
        lv2p4.setArrendamentosDePastagemCultivada(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_pastagem_cultivada")))));
        lv2p4.setImpostos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("impostos")))));
        lv2p4.setOutrasDespesas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_despesas")))));
        lv2p4.setMaoDeObraFixa(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_fixa")))));
        lv2p4.setMaoDeObraVariavel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_variavel")))));
        lv2p4.setReparosDeMaquina(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparos_de_maquina")))));
        lv2p4.setReparoDeBenfeitorias(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparo_de_benfeitorias")))));

        passos.getLv2p4dao().incluir(lv2p4);
        passos.setLv2p4(lv2p4);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2resultados.jsp");
        return;
    } else if (lv2p4 != null && request.getParameter("medicamento") != null) {

        lv2p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("medicamento")))));
        lv2p4.setCarrapaticidas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("carrapaticidas")))));
        lv2p4.setSal(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sal")))));
        lv2p4.setRacao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("racao")))));
        lv2p4.setCompraDeBovinos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("compra_de_bovinos")))));
        lv2p4.setUntensiliosDeUsoGeral(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("untensilios_de_uso_geral")))));
        lv2p4.setSemem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semem")))));
        lv2p4.setSemente(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semente")))));
        lv2p4.setDefensivosAgriParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("defensivos-agri_para_pastagem")))));
        lv2p4.setAdubosParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("adubos_para_pastagem")))));
        lv2p4.setCombustivel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("combustivel")))));
        lv2p4.setFrete(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("frete")))));
        lv2p4.setArrendamentosDeCampoNativo(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_campo_nativo")))));
        lv2p4.setArrendamentosDePastagemCultivada(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_pastagem_cultivada")))));
        lv2p4.setImpostos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("impostos")))));
        lv2p4.setOutrasDespesas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_despesas")))));
        lv2p4.setMaoDeObraFixa(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_fixa")))));
        lv2p4.setMaoDeObraVariavel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_variavel")))));
        lv2p4.setReparosDeMaquina(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparos_de_maquina")))));
        lv2p4.setReparoDeBenfeitorias(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparo_de_benfeitorias")))));

        passos.getLv2p4dao().alterar(lv2p4);
        passos.setLv2p4(lv2p4);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2resultados.jsp");
        return;
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

    <div class="row" >

        <div class="form-group">
            <form action="lv2p4.jsp" onsubmit="return validarForm()" method="post">

                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Medicamento <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" autofocus class="form-control" value="<%=passos.getLv2p4().getMedicamento()%>"   name="medicamento" required title="Insira o Valor Gasto em Medicamentos de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Carrapaticidas <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getCarrapaticidas()%>"   name="carrapaticidas" required title="Insira o Valor Gasto em Carrapaticidas de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Sal <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getSal()%>"   name="sal" required title="Insira o Valor Gasto em Sal de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Ração <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getRacao()%>"   name="racao" required title="Insira o Valor Gasto em Ração de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>
                <hr>

                <div class="row">
                    <div class="col-md-3 col-md-offset-3 ">
                        <label>Compra de Bovinos <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getCompraDeBovinos()%>"  name="compra_de_bovinos" required title="Insira o Valor Gasto em Compra de Bovinos de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Utensílios de Uso Geral  <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getUntensiliosDeUsoGeral()%>"   name="untensilios_de_uso_geral" required title="Insira o Valor Gasto em Utensilios de Uso Geral de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Sêmen <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getSemem()%>"   name="semem" required title="Insira o Valor Gasto em Semen de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>

                    </div>
                    <div class="col-md-3">
                        <label>Semente <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getSemente()%>"   name="semente" required title="Insira o Valor Gasto em Semente de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Defensivos Agrícolas para Pastagem <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getDefensivosAgriParaPastagem()%>"   name="defensivos-agri_para_pastagem" required title="Insira o Valor Gasto em Defensivos Agrícola para Pastagem de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Adubos para Pastagem <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getAdubosParaPastagem()%>"   name="adubos_para_pastagem" required title="Insira o Valor Gasto em Adubos para Pastagem de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Combustível <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getCombustivel()%>"   name="combustivel" required title="Insira o Valor Gasto em Combustível de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Frete <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>

                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getFrete()%>"   name="frete" required title="Insira o Valor Gasto em Frete de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Arrendamentos de Campo Nativo <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getArrendamentosDeCampoNativo()%>"  name="arrendamentos_de_campo_nativo" required title="Insira o Valor Gasto em Arrendamentos de Campo Nativo de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">

                        <label>Arrendamentos de Pastagem Cultivada <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getArrendamentosDePastagemCultivada()%>"  name="arrendamentos_de_pastagem_cultivada" required title="Insira o Valor Gasto em Arrendamentos de Pastagem Cultivada de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Impostos <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getImpostos()%>"  name="impostos" required title="Insira o Valor Gasto em Impostos de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Outras Despesas <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control"value="<%=passos.getLv2p4().getOutrasDespesas()%>"   name="outras_despesas" required title="Insira o Valor Gasto em Outras Despesas de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>

                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Mão de Obra Fixa <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getMaoDeObraFixa()%>"  name="mao_de_obra_fixa" required title="Insira o Valor Gasto em Mão de Obra Fixa sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Mão de Obra Variavel <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getMaoDeObraVariavel()%>"   name="mao_de_obra_variavel" required title="Insira o Valor Gasto em Mão de Obra Variavel de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <label>Reparos de Maquinas  <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getReparosDeMaquina()%>"   name="reparos_de_maquina" required title="Insira o Valor Gasto em Reparos de Máquina de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label>Reparos de Benfeitorias <span class="label-control"></span></label>
                        <div class="input-group">
                            <div class="input-group-addon">R$</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p4().getReparoDeBenfeitorias()%>"   name="reparo_de_benfeitorias" required title="Insira o Valor Gasto em Reparos de Benfeitorias de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                </div>



                <br/>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                        <a class="btn btn-danger btn-block" id="calcular" >Calcular</a><br/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12" hidden id="infocalculo" >
                        <div class="row">
                            <div class="col-md-6" id="grafico1">

                            </div>
                            <div class="col-md-6 conteudo">
                                <div class="well well-sm" id="totalcustoproducao">
                                    Total Custos de Produção: 
                                </div>
                                <div class="well well-sm" id="custoatividadecria">
                                    Custo Atividade de Cria: 
                                </div>
                                <div class="well well-sm" id="custoproducaohectar">
                                    Custo de Produção por Hectare: 
                                </div>
                                <div class="well well-sm" id="custoterneiro">
                                    Custo de Produção por Terneiro Desmamado: 
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6 col-md-offset-3" hidden id="botao" >



                                <input  type="submit" disabled class="btn btn-success btn-lg center-block" value="Próximo Passo" >

                            </div></div>




                    </div>
                </div>



            </form>
        </div>



    </div>
</div>
</div>
<script src="../js/calculos.js"></script>
<script src="../js/validarForm.js"></script>
<script>$(document).ready(function () {
                    $('.form-control').mask('0.000.000,00', {reverse: true});
                });</script>
<script>
    $(document).ready(function () {

        lv2p4(<%=passos.areaMedia()%>,<%=passos.getLv2p3().getTerneirosQuant()%>,<%=passos.percentualRebanhoComCria()%>);

    });</script>
</body>
</html>
