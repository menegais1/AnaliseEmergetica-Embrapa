<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Lv2p3"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv2.jsp"%>

<% session.setAttribute("Link", 3);

    Passoslv2 passos = (Passoslv2) session.getAttribute("Passoslv2");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv2p3 lv2p3 = passos.getLv2p3dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p2() == null) {
        response.sendRedirect("lv2p2.jsp");
    }

    if (passos.getLv2p3() == null) {

        passos.setLv2p3(new Lv2p3(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p3 == null && request.getParameter("terneiros_Quant") != null) {
        lv2p3 = new Lv2p3(id, ano);

        lv2p3.setTerneirosQuant(Integer.parseInt(passos.conversor(request.getParameter("terneiros_Quant"))));
        lv2p3.setTerneirasQuant(Integer.parseInt(passos.conversor(request.getParameter("terneiras_Quant"))));
        lv2p3.setNovilhasQuant(Integer.parseInt(passos.conversor(request.getParameter("novilhas_Quant"))));
        lv2p3.setVacasDeDescarteQuant(Integer.parseInt(passos.conversor(request.getParameter("vacas_de_descarte_Quant"))));
        lv2p3.setVacaPrenhaQuant(Integer.parseInt(passos.conversor(request.getParameter("vaca_prenha_Quant"))));
        lv2p3.setVacaComCriaQuant(Integer.parseInt(passos.conversor(request.getParameter("vaca_com_cria_Quant"))));
        lv2p3.setVacaGordaQuant(Integer.parseInt(passos.conversor(request.getParameter("vaca_gorda_Quant"))));
        lv2p3.setNovilhoPraRecriaQuant(Integer.parseInt(passos.conversor(request.getParameter("novilho_pra_recria_Quant"))));
        lv2p3.setNovilhoGordoQuant(Integer.parseInt(passos.conversor(request.getParameter("novilho_gordo_Quant"))));
        lv2p3.setTorunosQuant(Integer.parseInt(passos.conversor(request.getParameter("torunos_Quant"))));
        lv2p3.setTouroQuant(Integer.parseInt(passos.conversor(request.getParameter("touro_Quant"))));
        lv2p3.setTerneirosValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("terneiros_Valor")))));
        lv2p3.setTerneirasValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("terneiras_Valor")))));
        lv2p3.setNovilhasValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("novilhas_Valor")))));
        lv2p3.setVacasDeDescarteValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vacas_de_descarte_Valor")))));
        lv2p3.setVacaPrenhaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vaca_prenha_Valor")))));
        lv2p3.setVacaComCriaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vaca_com_cria_Valor")))));
        lv2p3.setVacaGordaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vaca_gorda_Valor")))));
        lv2p3.setNovilhoPraRecriaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("novilho_pra_recria_Valor")))));
        lv2p3.setNovilhoGordoValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("novilho_gordo_Valor")))));
        lv2p3.setTorunosValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("torunos_Valor")))));
        lv2p3.setTouroValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("touro_Valor")))));

        passos.getLv2p3dao().incluir(lv2p3);
        passos.setLv2p3(lv2p3);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p4.jsp");
        return;
    } else if (lv2p3 != null && request.getParameter("terneiros_Quant") != null) {

        lv2p3.setTerneirosQuant(Integer.parseInt(passos.conversor(request.getParameter("terneiros_Quant"))));
        lv2p3.setTerneirasQuant(Integer.parseInt(passos.conversor(request.getParameter("terneiras_Quant"))));
        lv2p3.setNovilhasQuant(Integer.parseInt(passos.conversor(request.getParameter("novilhas_Quant"))));
        lv2p3.setVacasDeDescarteQuant(Integer.parseInt(passos.conversor(request.getParameter("vacas_de_descarte_Quant"))));
        lv2p3.setVacaPrenhaQuant(Integer.parseInt(passos.conversor(request.getParameter("vaca_prenha_Quant"))));
        lv2p3.setVacaComCriaQuant(Integer.parseInt(passos.conversor(request.getParameter("vaca_com_cria_Quant"))));
        lv2p3.setVacaGordaQuant(Integer.parseInt(passos.conversor(request.getParameter("vaca_gorda_Quant"))));
        lv2p3.setNovilhoPraRecriaQuant(Integer.parseInt(passos.conversor(request.getParameter("novilho_pra_recria_Quant"))));
        lv2p3.setNovilhoGordoQuant(Integer.parseInt(passos.conversor(request.getParameter("novilho_gordo_Quant"))));
        lv2p3.setTorunosQuant(Integer.parseInt(passos.conversor(request.getParameter("torunos_Quant"))));
        lv2p3.setTouroQuant(Integer.parseInt(passos.conversor(request.getParameter("touro_Quant"))));
        lv2p3.setTerneirosValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("terneiros_Valor")))));
        lv2p3.setTerneirasValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("terneiras_Valor")))));
        lv2p3.setNovilhasValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("novilhas_Valor")))));
        lv2p3.setVacasDeDescarteValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vacas_de_descarte_Valor")))));
        lv2p3.setVacaPrenhaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vaca_prenha_Valor")))));
        lv2p3.setVacaComCriaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vaca_com_cria_Valor")))));
        lv2p3.setVacaGordaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("vaca_gorda_Valor")))));
        lv2p3.setNovilhoPraRecriaValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("novilho_pra_recria_Valor")))));
        lv2p3.setNovilhoGordoValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("novilho_gordo_Valor")))));
        lv2p3.setTorunosValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("torunos_Valor")))));
        lv2p3.setTouroValor(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("touro_Valor")))));

        passos.getLv2p3dao().alterar(lv2p3);
        passos.setLv2p3(lv2p3);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p4.jsp");
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


    <div class="form-group">
        <form action="lv2p3.jsp" onsubmit="return validarForm()" method="post">
            <div class="row">

                <div class="col-md-12">
                    <h1 class="text-center">Vendas de Animais</h1>

                    <div class="row">
                        <div class="col-md-3 col-md-offset-3"><h3>Cabeças</h3></div>
                        <div class="col-md-3"><h3>Valor Unitário</h3></div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Terneiros <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" autofocus class="form-control int" value="<%=passos.getLv2p3().getTerneirosQuant()%>" name="terneiros_Quant"  title="Insira a Quantidade de Terneiros de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Terneiros <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getTerneirosValor()%>"  name="terneiros_Valor"  title="Insira o Valor de Terneiros de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>

                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Terneiras <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getTerneirasQuant()%>"  name="terneiras_Quant"  title="Insira a Quantidade de Terneiras de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Terneiras <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getTerneirasValor()%>"  name="terneiras_Valor"  title="Insira o Valor de Terneiras de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Novilhas <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getNovilhasQuant()%>"  name="novilhas_Quant"  title="Insira a Quantidade de Novilhas de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Novilhas <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getNovilhasValor()%>"  name="novilhas_Valor"  title="Insira o Valor De Novilhas de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Vacas de Descarte <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getVacasDeDescarteQuant()%>"  name="vacas_de_descarte_Quant"  title="Insira a Quantidade de Vacas de Descarte de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Vacas de Descarte <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getVacasDeDescarteValor()%>"  name="vacas_de_descarte_Valor" title="Insira o Valor de Vacas de Descarte de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Vacas Prenhas <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getVacaPrenhaQuant()%>"  name="vaca_prenha_Quant"  title="Insira a Quantidade de Vacas Prenha de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Vacas Prenhas <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getVacaPrenhaValor()%>"  name="vaca_prenha_Valor"  title="Insira o Valor de Vacas Prenha de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Vacas com Cria <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getVacaComCriaQuant()%>"  name="vaca_com_cria_Quant"  title="Insira a Quantidade de Vacas com Cria de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Vacas com Cria <span class="label-control"></span></label>

                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getVacaComCriaValor()%>"  name="vaca_com_cria_Valor"  title="Insira o Valor de Vacas com Cria de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Vacas Gordas <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getVacaGordaQuant()%>"  name="vaca_gorda_Quant"  title="Insira a Quantidade de Vacas Gordas de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Vacas Gordas <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getVacaGordaValor()%>"  name="vaca_gorda_Valor"  title="Insira o Valor de Vacas Gordas de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Novilhos para Recria <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getNovilhoPraRecriaQuant()%>"  name="novilho_pra_recria_Quant"  title="Insira a Quantidade de Novilhos para Recria de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Novilhos para Recria <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getNovilhoPraRecriaValor()%>"  name="novilho_pra_recria_Valor"  title="Insira o Valor de Novilhos para Recria de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>

                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Novilhos Gordos <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getNovilhoGordoQuant()%>"  name="novilho_gordo_Quant"  title="Insira a Quantidade de Novilhos Gordos de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Novilhos Gordos <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getNovilhoGordoValor()%>"  name="novilho_gordo_Valor"  title="Insira o Valor de Novilhos Gordos de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row ">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Torunos <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getTorunosQuant()%>"  name="torunos_Quant"  title="Insira a Quantidade de Torunos de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Torunos <span class="label-control int"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getTorunosValor()%>"  name="torunos_Valor"  title="Insira o Valor de Torunos de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-3">
                            <label>Touros <span class="label-control"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">cab</div>
                                <input type="text" class="form-control int" value="<%=passos.getLv2p3().getTouroQuant()%>"  name="touro_Quant"  title="Insira a Quantidade de Touros de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label>Touros <span class="label-control int"></span></label>
                            <div class="input-group">
                                <div class="input-group-addon">R$</div>
                                <input type="text" class="form-control double" value="<%=passos.getLv2p3().getTouroValor()%>"  name="touro_Valor"  title="Insira o Valor de Touros de sua propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                    <a type="button" class="btn btn-block btn-danger" id="calcular">Calcular</a><br>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 " hidden id="infocalculo">

                </div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3" hidden id="botao" >



                        <input  type="submit" disabled class="btn btn-success btn-lg center-block" value="Próximo Passo" >

                    </div></div>


                <!--<div class="col-md-4 conteudo" hidden id="infocalculo2">

                    <div class="well well-sm" id="totalb">Total de Bovinos:</div>
                    <div class="well well-sm" id="totalreceita">Total de Receita de Bovinos:</div>
                    <div class="well well-sm" id="receitahectare">Receita por Hectare:</div>

                </div>-->


        </form> 
    </div>



</div>
</div>
<script src="../js/calculos.js"></script>
<script src="../js/validarForm.js"></script>
<script>$(document).ready(function () {
                $('.int').mask('0.000.000', {reverse: true});
                $('.double').mask('0.000.000,00', {reverse: true});

            });</script>
<script>
    $(document).ready(function () {

        lv2p3(<%=passos.areaMedia()%>);

    });</script>

</body>
</html>
