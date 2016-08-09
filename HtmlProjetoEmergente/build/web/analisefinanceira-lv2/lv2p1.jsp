

<%@page import="java.math.BigDecimal"%>
<%@page import="dao.Passoslv2"%>
<%@page import="modelo.Lv2p1"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv2.jsp"%>

<%    session.setAttribute("Link", 1);

    Passoslv2 passos = (Passoslv2) session.getAttribute("Passoslv2");

  
    
    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv2p1 lv2p1 = passos.getLv2p1dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p1() == null) {
        passos.setLv2p1(new Lv2p1(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p1 == null && request.getParameter("pastagem_nativa_verao") != null) {
        lv2p1 = new Lv2p1(id, ano);

        lv2p1.setPastagemNativaVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_verao")))));
        lv2p1.setPastagemNativaInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_inverno")))));
        lv2p1.setPastagemNativaMelhoradaVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_melhorada_verao")))));
        lv2p1.setPastagemNativaMelhoradaInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_melhorada_inverno")))));
        lv2p1.setPastagemCultivadaPereneVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_cultivada_perene_verao")))));
        lv2p1.setPastagemCultivadaPereneInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_cultivada_perene_inverno")))));
        lv2p1.setPastagemAnualVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_anual_verao")))));
        lv2p1.setPastagemAnualInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_anual_inverno")))));
        lv2p1.setAgriculturaVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("agricultura_verao")))));
        lv2p1.setAgriculturaInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("agricultura_inverno")))));
        lv2p1.setFlorestasPlantadasVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("florestas_plantadas_verao")))));
        lv2p1.setFlorestasPlantadasInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("florestas_plantadas_inverno")))));
        lv2p1.setOutrasAreasVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_areas_verao")))));
        lv2p1.setOutrasAreasInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_areas_inverno")))));
        lv2p1.setMatasNativasVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("matas_nativas_verao")))));
        lv2p1.setMatasNativasInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("matas_nativas_inverno")))));
        lv2p1.setSedesEstradasAcudesVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sedes_estradas_acudes_verao")))));
        lv2p1.setSedesEstradasAcudesInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sedes_estradas_acudes_inverno")))));
        lv2p1.setInaproveitaveisVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("inaproveitaveis_verao")))));
        lv2p1.setInaproveitaveisInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("inaproveitaveis_inverno")))));

        passos.getLv2p1dao().incluir(lv2p1);
        passos.setLv2p1(lv2p1);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p2.jsp");
        return;
    } else if (lv2p1 != null && request.getParameter("pastagem_nativa_verao") != null) {

        lv2p1.setPastagemNativaVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_verao")))));
        lv2p1.setPastagemNativaInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_inverno")))));
        lv2p1.setPastagemNativaMelhoradaVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_melhorada_verao")))));
        lv2p1.setPastagemNativaMelhoradaInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_nativa_melhorada_inverno")))));
        lv2p1.setPastagemCultivadaPereneVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_cultivada_perene_verao")))));
        lv2p1.setPastagemCultivadaPereneInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_cultivada_perene_inverno")))));
        lv2p1.setPastagemAnualVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_anual_verao")))));
        lv2p1.setPastagemAnualInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem_anual_inverno")))));
        lv2p1.setAgriculturaVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("agricultura_verao")))));
        lv2p1.setAgriculturaInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("agricultura_inverno")))));
        lv2p1.setFlorestasPlantadasVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("florestas_plantadas_verao")))));
        lv2p1.setFlorestasPlantadasInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("florestas_plantadas_inverno")))));
        lv2p1.setOutrasAreasVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_areas_verao")))));
        lv2p1.setOutrasAreasInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_areas_inverno")))));
        lv2p1.setMatasNativasVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("matas_nativas_verao")))));
        lv2p1.setMatasNativasInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("matas_nativas_inverno")))));
        lv2p1.setSedesEstradasAcudesVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sedes_estradas_acudes_verao")))));
        lv2p1.setSedesEstradasAcudesInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sedes_estradas_acudes_inverno")))));
        lv2p1.setInaproveitaveisVerao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("inaproveitaveis_verao")))));
        lv2p1.setInaproveitaveisInverno(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("inaproveitaveis_inverno")))));

        passos.getLv2p1dao().alterar(lv2p1);
        passos.setLv2p1(lv2p1);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p2.jsp");
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

    <div class="row">

        <div class="form-group">
            <form action="lv2p1.jsp" onsubmit="return validarForm()" method="post">
                <div class="row">
                    <div class="col-md-5 col-md-offset-2 text-center">
                        <h3>Verão</h3>
                    </div>
                    <div class="col-md-5 text-center">
                        <h3>Inverno</h3>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-2">
                                <br>
                                <h4 class="text-right">Pastagem Nativa</h4>

                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Nativa Verão <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemNativaVerao()%>" class="form-control" placeholder="Insira a Pastagem Nativa de Verao (Hectares) de sua propriedade" name="pastagem_nativa_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Nativa Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemNativaInverno()%>" class="form-control" placeholder="Insira a Pastagem Nativa de Inverno (Hectares) de sua propriedade" name="pastagem_nativa_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">

                                <h4 class="text-right">Pastagem Nativa Melhorada</h4>

                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Nativa Melhorada Verão <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemNativaMelhoradaVerao()%>" class="form-control" placeholder="Insira a Pastagem Nativa Melhorada de Verao (Hectares) de sua propriedade" name="pastagem_nativa_melhorada_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Nativa Melhorada Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemNativaMelhoradaInverno()%>" class="form-control" placeholder="Insira a Pastagem Nativa Melhorada de Inverno (Hectares) de sua propriedade" name="pastagem_nativa_melhorada_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">

                                <h4 class="text-right">Pastagem Cultivada Perene</h4>

                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Cultivada Perene Verão <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemCultivadaPereneVerao()%>" class="form-control" placeholder="Insira a Pastagem Cultivada Perene de Verao (Hectares) de sua propriedade" name="pastagem_cultivada_perene_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Cultivada Perene Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemCultivadaPereneInverno()%>" class="form-control" placeholder="Insira a Pastagem Cultivada Perene de Inverno (Hectares) de sua propriedade" name="pastagem_cultivada_perene_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <br>
                                <h4 class="text-right">Pastagem Anual </h4>

                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Anual Verão <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemAnualVerao()%>" class="form-control" placeholder="Insira a Pastagem Anual de Verao (Hectares) de sua propriedade" name="pastagem_anual_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Pastagem Anual Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getPastagemAnualInverno()%>" class="form-control" placeholder="Insira a Pastagem Anual de Inverno (Hectares) de sua propriedade" name="pastagem_anual_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <br>
                                <h4 class="text-right">Agricultura </h4>

                            </div>
                            <div class="col-md-5">
                                <label>Agricultura Verão<span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getAgriculturaVerao()%>" class="form-control" placeholder="Insira a Area de Agricultura de Verao (Hectares) de sua propriedade" name="agricultura_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Agricultura Inverno<span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getAgriculturaInverno()%>" class="form-control" placeholder="Insira a Area de Agricultura de Inverno (Hectares) de sua propriedade" name="agricultura_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <br>
                                <h4 class="text-right">Florestas Plantadas </h4>

                            </div>
                            <div class="col-md-5">
                                <label>Florestas Plantadas Verão <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getFlorestasPlantadasVerao()%>" class="form-control" placeholder="Insira a Area de Florestas Plantadas de Verao (Hectares) de sua propriedade" name="florestas_plantadas_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Florestas Plantadas Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getFlorestasPlantadasInverno()%>" class="form-control" placeholder="Insira a Area de Florestas Plantadas de Inverno (Hectares) de sua propriedade" name="florestas_plantadas_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <br>
                                <h4 class="text-right">Matas Nativas </h4>

                            </div>
                            <div class="col-md-5">
                                <label>Matas Nativas Verão <span class="label-control"></span></label>
                                <input type="text"  value="<%=passos.getLv2p1().getMatasNativasVerao()%>"class="form-control" placeholder="Insira a Area de Matas Nativas de Verao (Hectares) de sua propriedade" name="matas_nativas_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Matas Nativas Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getMatasNativasInverno()%>" class="form-control" placeholder="Insira a Area de Matas Nativas de Inverno (Hectares) de sua propriedade" name="matas_nativas_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <br>
                                <h4 class="text-right">Outras culturas </h4>

                            </div>
                            <div class="col-md-5">
                                <label>Outras culturas Verão<span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getOutrasAreasVerao()%>" class="form-control" placeholder="Insira a Area de Outras Culturas no Verao (Hectares) de sua propriedade" name="outras_areas_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Outras culturas Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getOutrasAreasInverno()%>" class="form-control" placeholder="Insira a Area de Outras Culturas no Inverno (Hectares) de sua propriedade" name="outras_areas_inverno">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">

                                <h4 class="text-right">Sede, Estradas e Açudes </h4>

                            </div>
                            <div class="col-md-5">
                                <label>Sede, Estradas e Açudes Verão <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getSedesEstradasAcudesVerao()%>" class="form-control" placeholder="Insira a Area ocupada por Sedes, Estradas e Açudes no Verao (Hectares) de sua propriedade" name="sedes_estradas_acudes_verao">
                            </div>
                            <div class="col-md-5">
                                <label>Sede, Estradas e Açudes Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getSedesEstradasAcudesInverno()%>" class="form-control" placeholder="Insira a Area ocupada por Sedes, Estradas e Açudes no Inverno (Hectares) de sua propriedade" name="sedes_estradas_acudes_inverno">

                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <br>
                                <h4 class="text-right">Inaproveitavel </h4>

                            </div>
                            <div class="col-md-5">
                                <label>Inaproveitavel Verão <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getInaproveitaveisVerao()%>" class="form-control" placeholder="Insira a Area Inaproveitavel no Verao (Hectares) de sua propriedade" name="inaproveitaveis_verao">

                            </div>
                            <div class="col-md-5">
                                <label>Inaproveitavel Inverno <span class="label-control"></span></label>
                                <input type="text" value="<%=passos.getLv2p1().getInaproveitaveisInverno()%>" class="form-control" placeholder="Insira a Area Inaproveitavel no Inverno (Hectares) de sua propriedade" name="inaproveitaveis_inverno">
                            </div>
                        </div><br>










                    </div>
                </div>



                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                        <a type="button" id="calcular" class="btn btn-block btn-danger">Calcular</a><br>
                    </div>
                </div>


        </div>

        <div class="col-md-6" id="infocalculo" hidden>
            <!--
            <div class="well well-sm" id="areatotalpecuariainverno">
                Área Total da Pecuária no Inverno:
            </div>
            <div class="well well-sm" id="areatotalpecuariaverao">
                Área Total da Pecuária no Verão:
            </div>
            <div class="well well-sm" id="areaaproveitavelinverno">
                Total de Área Aproveitável no Inverno:
            </div>
            <div class="well well-sm" id="areaaproveitavelverao">
                Total de Área Aproveitável no Verão:
            </div>
            <div class="well well-sm" id="areatotal">
                Área Total:
            </div>
            <div class="well well-sm" id="areamedia">
                Área Média da Pecuária:
            </div>
            -->
        </div>
        <div class="col-md-6" id="infocalculo2" hidden>



        </div>
        </br>
        <div class="row">
            <div class="col-md-6 col-md-offset-3" hidden id="botao" >



                <input  type="submit" disabled class="btn btn-success btn-lg center-block" value="Próximo Passo" >

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

        lv2p1();

    });</script>
</body>
</html>
