<%@page import="modelo.Lv2p2"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv2.jsp"%>

<% session.setAttribute("Link", 2);

    Passoslv2 passos = (Passoslv2) session.getAttribute("Passoslv2");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv2p2 lv2p2 = passos.getLv2p2dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p1() == null) {
        response.sendRedirect("lv2p1.jsp");
    }

    if (passos.getLv2p2() == null) {

        passos.setLv2p2(new Lv2p2(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p2 == null && request.getParameter("vaca_de_cria_janmar") != null) {
        lv2p2 = new Lv2p2(id, ano);

        lv2p2.setVacaDeCriaJanmar(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_janmar"))));
        lv2p2.setVacaDeCriaAbrjun(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_abrjun"))));
        lv2p2.setVacaDeCriaJulset(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_julset"))));
        lv2p2.setVacaDeCriaOutdez(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_outdez"))));

        lv2p2.setVacaDeDescarteJanmar(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_janmar"))));
        lv2p2.setVacaDeDescarteAbrjun(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_abrjun"))));
        lv2p2.setVacaDeDescarteJulset(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_julset"))));
        lv2p2.setVacaDeDescarteOutdez(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_outdez"))));

        lv2p2.setTouroJanmar(Integer.parseInt(passos.conversor(request.getParameter("touro_janmar"))));
        lv2p2.setTouroAbrjun(Integer.parseInt(passos.conversor(request.getParameter("touro_abrjun"))));
        lv2p2.setTouroJulset(Integer.parseInt(passos.conversor(request.getParameter("touro_julset"))));
        lv2p2.setTouroOutdez(Integer.parseInt(passos.conversor(request.getParameter("touro_outdez"))));

        lv2p2.setTerneirosJanmar(Integer.parseInt(passos.conversor(request.getParameter("terneiros_janmar"))));
        lv2p2.setTerneirosAbrjun(Integer.parseInt(passos.conversor(request.getParameter("terneiros_abrjun"))));
        lv2p2.setTerneirosJulset(Integer.parseInt(passos.conversor(request.getParameter("terneiros_julset"))));
        lv2p2.setTerneirosOutdez(Integer.parseInt(passos.conversor(request.getParameter("terneiros_outdez"))));

        lv2p2.setTerneirasJanmar(Integer.parseInt(passos.conversor(request.getParameter("terneiras_janmar"))));
        lv2p2.setTerneirasAbrjun(Integer.parseInt(passos.conversor(request.getParameter("terneiras_abrjun"))));
        lv2p2.setTerneirasJulset(Integer.parseInt(passos.conversor(request.getParameter("terneiras_julset"))));
        lv2p2.setTerneirasOutdez(Integer.parseInt(passos.conversor(request.getParameter("terneiras_outdez"))));

        lv2p2.setNovilhas13a24Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_janmar"))));
        lv2p2.setNovilhas13a24Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_abrjun"))));
        lv2p2.setNovilhas13a24Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_julset"))));
        lv2p2.setNovilhas13a24Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_outdez"))));

        lv2p2.setNovilhos13a24Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_janmar"))));
        lv2p2.setNovilhos13a24Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_abrjun"))));
        lv2p2.setNovilhos13a24Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_julset"))));
        lv2p2.setNovilhos13a24Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_outdez"))));

        lv2p2.setNovilhas25a36Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_janmar"))));
        lv2p2.setNovilhas25a36Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_abrjun"))));
        lv2p2.setNovilhas25a36Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_julset"))));
        lv2p2.setNovilhas25a36Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_outdez"))));

        lv2p2.setNovilhos25a36Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_janmar"))));
        lv2p2.setNovilhos25a36Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_abrjun"))));
        lv2p2.setNovilhos25a36Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_julset"))));
        lv2p2.setNovilhos25a36Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_outdez"))));

        lv2p2.setNovilho36Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_janmar"))));
        lv2p2.setNovilho36Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_abrjun"))));
        lv2p2.setNovilho36Julset(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_julset"))));
        lv2p2.setNovilho36Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_outdez"))));

        passos.getLv2p2dao().incluir(lv2p2);
        passos.setLv2p2(lv2p2);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p3.jsp");
        return;
    } else if (lv2p2 != null && request.getParameter("vaca_de_cria_janmar") != null) {

        lv2p2.setVacaDeCriaJanmar(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_janmar"))));
        lv2p2.setVacaDeCriaAbrjun(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_abrjun"))));
        lv2p2.setVacaDeCriaJulset(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_julset"))));
        lv2p2.setVacaDeCriaOutdez(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria_outdez"))));

        lv2p2.setVacaDeDescarteJanmar(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_janmar"))));
        lv2p2.setVacaDeDescarteAbrjun(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_abrjun"))));
        lv2p2.setVacaDeDescarteJulset(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_julset"))));
        lv2p2.setVacaDeDescarteOutdez(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte_outdez"))));

        lv2p2.setTouroJanmar(Integer.parseInt(passos.conversor(request.getParameter("touro_janmar"))));
        lv2p2.setTouroAbrjun(Integer.parseInt(passos.conversor(request.getParameter("touro_abrjun"))));
        lv2p2.setTouroJulset(Integer.parseInt(passos.conversor(request.getParameter("touro_julset"))));
        lv2p2.setTouroOutdez(Integer.parseInt(passos.conversor(request.getParameter("touro_outdez"))));

        lv2p2.setTerneirosJanmar(Integer.parseInt(passos.conversor(request.getParameter("terneiros_janmar"))));
        lv2p2.setTerneirosAbrjun(Integer.parseInt(passos.conversor(request.getParameter("terneiros_abrjun"))));
        lv2p2.setTerneirosJulset(Integer.parseInt(passos.conversor(request.getParameter("terneiros_julset"))));
        lv2p2.setTerneirosOutdez(Integer.parseInt(passos.conversor(request.getParameter("terneiros_outdez"))));

        lv2p2.setTerneirasJanmar(Integer.parseInt(passos.conversor(request.getParameter("terneiras_janmar"))));
        lv2p2.setTerneirasAbrjun(Integer.parseInt(passos.conversor(request.getParameter("terneiras_abrjun"))));
        lv2p2.setTerneirasJulset(Integer.parseInt(passos.conversor(request.getParameter("terneiras_julset"))));
        lv2p2.setTerneirasOutdez(Integer.parseInt(passos.conversor(request.getParameter("terneiras_outdez"))));

        lv2p2.setNovilhas13a24Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_janmar"))));
        lv2p2.setNovilhas13a24Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_abrjun"))));
        lv2p2.setNovilhas13a24Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_julset"))));
        lv2p2.setNovilhas13a24Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhas_13a24_outdez"))));

        lv2p2.setNovilhos13a24Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_janmar"))));
        lv2p2.setNovilhos13a24Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_abrjun"))));
        lv2p2.setNovilhos13a24Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_julset"))));
        lv2p2.setNovilhos13a24Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhos_13a24_outdez"))));

        lv2p2.setNovilhas25a36Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_janmar"))));
        lv2p2.setNovilhas25a36Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_abrjun"))));
        lv2p2.setNovilhas25a36Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_julset"))));
        lv2p2.setNovilhas25a36Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhas_25a36_outdez"))));

        lv2p2.setNovilhos25a36Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_janmar"))));
        lv2p2.setNovilhos25a36Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_abrjun"))));
        lv2p2.setNovilhos25a36Julset(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_julset"))));
        lv2p2.setNovilhos25a36Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilhos_25a36_outdez"))));

        lv2p2.setNovilho36Janmar(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_janmar"))));
        lv2p2.setNovilho36Abrjun(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_abrjun"))));
        lv2p2.setNovilho36Julset(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_julset"))));
        lv2p2.setNovilho36Outdez(Integer.parseInt(passos.conversor(request.getParameter("novilho_36_outdez"))));

        passos.getLv2p2dao().alterar(lv2p2);
        passos.setLv2p2(lv2p2);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p3.jsp");
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
        <form action="lv2p2.jsp" onsubmit="return validarForm()" method="post">
            <div class="row">
                <div class="row"> 
                    <div class="col-md-2 col-md-offset-3">
                        <h4 class="text-center">Janeiro a Março</h4>
                    </div>
                    <div class="col-md-2">
                        <h4 class="text-center">Abril a Junho</h4>
                    </div>
                    <div class="col-md-2">
                        <h4 class="text-center">Julho a Setembro</h4>
                    </div>
                    <div class="col-md-2">
                        <h4 class="text-center">Outubro a Dezembro</h4>
                    </div>

                </div>
                <hr>
                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Vacas de Cria</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" autofocus class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaJanmar()%>" placeholder="Jan A Mar" name="vaca_de_cria_janmar"  title="Insira a Quantidade de Vacas de Cria de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaAbrjun()%>" placeholder="Abr A Jun" name="vaca_de_cria_abrjun"  title="Insira a Quantidade de Vacas de Cria de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaJulset()%>" placeholder="Jul A Set" name="vaca_de_cria_julset"  title="Insira a Quantidade de Vacas de Cria de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaOutdez()%>" placeholder="Out A Dez" name="vaca_de_cria_outdez"  title="Insira a Quantidade de Vacas de Cria de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Vacas de Descarte</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteJanmar()%>" placeholder="Jan A Mar" name="vaca_de_descarte_janmar"  title="Insira a Quantidade de Vacas de Descarte de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteAbrjun()%>" placeholder="Abr A Jun" name="vaca_de_descarte_abrjun"  title="Insira a Quantidade de Vacas de Descarte Cria de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteJulset()%>" placeholder="Jul A Set" name="vaca_de_descarte_julset"  title="Insira a Quantidade de Vacas de Descarte de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteOutdez()%>" placeholder="Out A Dez" name="vaca_de_descarte_outdez" title="Insira a Quantidade de Vacas de Descarte de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Touros</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTouroJanmar()%>" placeholder="Jan A Mar" name="touro_janmar" title="Insira a Quantidade de Touros de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTouroAbrjun()%>" placeholder="Abr A Jun" name="touro_abrjun" title="Insira a Quantidade de Touros de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTouroJulset()%>" placeholder="Jul A Set" name="touro_julset"  title="Insira a Quantidade de Touros de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTouroOutdez()%>" placeholder="Out A Dez" name="touro_outdez"  title="Insira a Quantidade de Touros de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Terneiros</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirosJanmar()%>" placeholder="Jan A Mar" name="terneiros_janmar"  title="Insira a Quantidade de Terneiros de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirosAbrjun()%>" placeholder="Abr A Jun" name="terneiros_abrjun"  title="Insira a Quantidade de Terneiros de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirosJulset()%>" placeholder="Jul A Set" name="terneiros_julset"  title="Insira a Quantidade de Terneiros de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirosOutdez()%>" placeholder="Out A Dez" name="terneiros_outdez"  title="Insira a Quantidade de Terneiros de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Terneiras</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirasJanmar()%>" placeholder="Jan A Mar" name="terneiras_janmar"  title="Insira a Quantidade de Terneiras de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirasAbrjun()%>" placeholder="Abr A Jun" name="terneiras_abrjun"  title="Insira a Quantidade de Terneiras de Abril a Julho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirasJulset()%>" placeholder="Jul A Set" name="terneiras_julset"  title="Insira a Quantidade de Terneiras de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getTerneirasOutdez()%>" placeholder="Out A Dez" name="terneiras_outdez"  title="Insira a Quantidade de Terneiras de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>


                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Novilhos: 13 a 24 Meses</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Janmar()%>" placeholder="Jan A Mar" name="novilhos_13a24_janmar"  title="Insira a Quantidade de Novilhos de 13 a 24 Meses de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Abrjun()%>" placeholder="Abr A Jun" name="novilhos_13a24_abrjun"  title="Insira a Quantidade de Novilhos de 13 a 24 Meses de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Julset()%>" placeholder="Jul A Set" name="novilhos_13a24_julset"  title="Insira a Quantidade de Novilhos de 13 a 24 Meses de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Outdez()%>" placeholder="Out A Dez" name="novilhos_13a24_outdez"  title="Insira a Quantidade de Novilhos de 13 a 24 Meses de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>

                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Novilhas: 13 a 24 Meses</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Janmar()%>" placeholder="Jan A Mar" name="novilhas_13a24_janmar"  title="Insira a Quantidade de Novilhas de 13 a 24 Meses de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Abrjun()%>" placeholder="Abr A Jun" name="novilhas_13a24_abrjun"  title="Insira a Quantidade de Novilhas de 13 a 24 Meses de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Julset()%>" placeholder="Jul A Set" name="novilhas_13a24_julset"  title="Insira a Quantidade de Novilhas de 13 a 24 Meses de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Outdez()%>" placeholder="Out A Dez" name="novilhas_13a24_outdez"  title="Insira a Quantidade de Novilhas de 13 a 24 Meses de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Novilhos: 25 a 36 Meses</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Janmar()%>" placeholder="Jan A Mar" name="novilhos_25a36_janmar"  title="Insira a Quantidade de Novilhos de 25 a 36 Meses de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Abrjun()%>" placeholder="Abr A Jun" name="novilhos_25a36_abrjun"  title="Insira a Quantidade de Novilhos de 25 a 36 Meses de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Julset()%>" placeholder="Jul A Set" name="novilhos_25a36_julset"  title="Insira a Quantidade de Novilhos de 25 a 36 Meses de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Outdez()%>" placeholder="Out A Dez" name="novilhos_25a36_outdez"  title="Insira a Quantidade de Novilhos de 25 a 36 Meses de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Novilhas: 25 a 36 Meses</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhas25a36Janmar()%>" placeholder="Jan A Mar" name="novilhas_25a36_janmar"  title="Insira a Quantidade de Novilhas de 25 a 36 Meses de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control"  value="<%=passos.getLv2p2().getNovilhas25a36Abrjun()%>" placeholder="Abr A Jun" name="novilhas_25a36_abrjun"  title="Insira a Quantidade de Novilhas de 25 a 36 Meses de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhas25a36Julset()%>" placeholder="Jul A Set" name="novilhas_25a36_julset"  title="Insira a Quantidade de Novilhas de 25 a 36 Meses de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilhas25a36Outdez()%>" placeholder="Out A Dez"  name="novilhas_25a36_outdez"  title="Insira a Quantidade de Novilhas de 25 a 36 Meses de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="row">
                    <div class="col-md-2 col-md-offset-1">
                        <br>
                        <h4>Novilhos: Mais de 36 Meses</h4>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilho36Janmar()%>" placeholder="Jan A Mar" name="novilho_36_janmar"  title="Insira a Quantidade de Novilhos de mais de 36 Meses de Janeiro a Março de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilho36Abrjun()%>" placeholder="Abr A Jun" name="novilho_36_abrjun" title="Insira a Quantidade de Novilhos de mais de 36 Meses de Abril a Junho de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilho36Julset()%>" placeholder="Jul A Set" name="novilho_36_julset"  title="Insira a Quantidade de Novilhos de mais de 36 Meses de Julho a Setembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <div class="input-group-addon">cab</div>
                            <input type="text" class="form-control" value="<%=passos.getLv2p2().getNovilho36Outdez()%>" placeholder="Out A Dez" name="novilho_36_outdez" title="Insira a Quantidade de Novilhos de mais de 36 Meses de Outubro a Dezembro de sua propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                        </div>
                    </div>

                </div>

                <hr>



            </div>

            <br/>

            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                    <a type="button" id="calcular" class="btn btn-block btn-danger">Calcular</a><br>
                </div>
            </div>


            <div class="row">




                <div class="col-md-12"  hidden id="infocalculo">





                </div>
                <!--<div class="col-md-6 conteudo"  hidden id="infocalculo2">

                    <div id="percentualrebanhocomcria" class="well well-sm"></div>
                    <div id="lotacaomedia" class="well well-sm"></div>



                </div>-->

                </br>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3" hidden id="botao" >


                        <br>
                        <input  type="submit" disabled class="btn btn-success btn-lg center-block" value="Próximo Passo" >

                    </div>

                </div>


        </form> 
    </div>


</div>
<script src="../js/calculos.js"></script>
<script src="../js/validarForm.js"></script>
<script>$(document).ready(function () {
                $('.form-control').mask('0.000.000', {reverse: true});
            });</script>
<script>
    $(document).ready(function () {

        lv2p2(<%=passos.areaMedia()%>);

    });</script>
</body>
</html>
