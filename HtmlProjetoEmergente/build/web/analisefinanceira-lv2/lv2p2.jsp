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

    if(passos.getLv2p1()== null){
        response.sendRedirect("lv2p1.jsp");
    }
    
    if (passos.getLv2p2() == null) {

        passos.setLv2p2(new Lv2p2(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p2 == null && request.getParameter("vaca_de_cria_janmar") != null) {
        lv2p2 = new Lv2p2(id, ano);

        lv2p2.setVacaDeCriaJanmar(Integer.parseInt(request.getParameter("vaca_de_cria_janmar")));
        lv2p2.setVacaDeCriaAbrjun(Integer.parseInt(request.getParameter("vaca_de_cria_abrjun")));
        lv2p2.setVacaDeCriaJulset(Integer.parseInt(request.getParameter("vaca_de_cria_julset")));
        lv2p2.setVacaDeCriaOutdez(Integer.parseInt(request.getParameter("vaca_de_cria_outdez")));

        lv2p2.setVacaDeDescarteJanmar(Integer.parseInt(request.getParameter("vaca_de_descarte_janmar")));
        lv2p2.setVacaDeDescarteAbrjun(Integer.parseInt(request.getParameter("vaca_de_descarte_abrjun")));
        lv2p2.setVacaDeDescarteJulset(Integer.parseInt(request.getParameter("vaca_de_descarte_julset")));
        lv2p2.setVacaDeDescarteOutdez(Integer.parseInt(request.getParameter("vaca_de_descarte_outdez")));

        lv2p2.setTouroJanmar(Integer.parseInt(request.getParameter("touro_janmar")));
        lv2p2.setTouroAbrjun(Integer.parseInt(request.getParameter("touro_abrjun")));
        lv2p2.setTouroJulset(Integer.parseInt(request.getParameter("touro_julset")));
        lv2p2.setTouroOutdez(Integer.parseInt(request.getParameter("touro_outdez")));

        lv2p2.setTerneirosJanmar(Integer.parseInt(request.getParameter("terneiros_janmar")));
        lv2p2.setTerneirosAbrjun(Integer.parseInt(request.getParameter("terneiros_abrjun")));
        lv2p2.setTerneirosJulset(Integer.parseInt(request.getParameter("terneiros_julset")));
        lv2p2.setTerneirosOutdez(Integer.parseInt(request.getParameter("terneiros_outdez")));

        lv2p2.setTerneirasJanmar(Integer.parseInt(request.getParameter("terneiras_janmar")));
        lv2p2.setTerneirasAbrjun(Integer.parseInt(request.getParameter("terneiras_abrjun")));
        lv2p2.setTerneirasJulset(Integer.parseInt(request.getParameter("terneiras_julset")));
        lv2p2.setTerneirasOutdez(Integer.parseInt(request.getParameter("terneiras_outdez")));

        lv2p2.setNovilhas13a24Janmar(Integer.parseInt(request.getParameter("novilhas_13a24_janmar")));
        lv2p2.setNovilhas13a24Abrjun(Integer.parseInt(request.getParameter("novilhas_13a24_abrjun")));
        lv2p2.setNovilhas13a24Julset(Integer.parseInt(request.getParameter("novilhas_13a24_julset")));
        lv2p2.setNovilhas13a24Outdez(Integer.parseInt(request.getParameter("novilhas_13a24_outdez")));

        lv2p2.setNovilhos13a24Janmar(Integer.parseInt(request.getParameter("novilhos_13a24_janmar")));
        lv2p2.setNovilhos13a24Abrjun(Integer.parseInt(request.getParameter("novilhos_13a24_abrjun")));
        lv2p2.setNovilhos13a24Julset(Integer.parseInt(request.getParameter("novilhos_13a24_julset")));
        lv2p2.setNovilhos13a24Outdez(Integer.parseInt(request.getParameter("novilhos_13a24_outdez")));

        lv2p2.setNovilhas25a36Janmar(Integer.parseInt(request.getParameter("novilhas_25a36_janmar")));
        lv2p2.setNovilhas25a36Abrjun(Integer.parseInt(request.getParameter("novilhas_25a36_abrjun")));
        lv2p2.setNovilhas25a36Julset(Integer.parseInt(request.getParameter("novilhas_25a36_julset")));
        lv2p2.setNovilhas25a36Outdez(Integer.parseInt(request.getParameter("novilhas_25a36_outdez")));

        lv2p2.setNovilhos25a36Janmar(Integer.parseInt(request.getParameter("novilhos_25a36_janmar")));
        lv2p2.setNovilhos25a36Abrjun(Integer.parseInt(request.getParameter("novilhos_25a36_abrjun")));
        lv2p2.setNovilhos25a36Julset(Integer.parseInt(request.getParameter("novilhos_25a36_julset")));
        lv2p2.setNovilhos25a36Outdez(Integer.parseInt(request.getParameter("novilhos_25a36_outdez")));

        lv2p2.setNovilho36Janmar(Integer.parseInt(request.getParameter("novilho_36_janmar")));
        lv2p2.setNovilho36Abrjun(Integer.parseInt(request.getParameter("novilho_36_abrjun")));
        lv2p2.setNovilho36Julset(Integer.parseInt(request.getParameter("novilho_36_julset")));
        lv2p2.setNovilho36Outdez(Integer.parseInt(request.getParameter("novilho_36_outdez")));

        passos.getLv2p2dao().incluir(lv2p2);
        passos.setLv2p2(lv2p2);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p3.jsp");
        return;
    } else if (lv2p2 != null && request.getParameter("vaca_de_cria_janmar") != null) {

        lv2p2.setVacaDeCriaJanmar(Integer.parseInt(request.getParameter("vaca_de_cria_janmar")));
        lv2p2.setVacaDeCriaAbrjun(Integer.parseInt(request.getParameter("vaca_de_cria_abrjun")));
        lv2p2.setVacaDeCriaJulset(Integer.parseInt(request.getParameter("vaca_de_cria_julset")));
        lv2p2.setVacaDeCriaOutdez(Integer.parseInt(request.getParameter("vaca_de_cria_outdez")));

        lv2p2.setVacaDeDescarteJanmar(Integer.parseInt(request.getParameter("vaca_de_descarte_janmar")));
        lv2p2.setVacaDeDescarteAbrjun(Integer.parseInt(request.getParameter("vaca_de_descarte_abrjun")));
        lv2p2.setVacaDeDescarteJulset(Integer.parseInt(request.getParameter("vaca_de_descarte_julset")));
        lv2p2.setVacaDeDescarteOutdez(Integer.parseInt(request.getParameter("vaca_de_descarte_outdez")));

        lv2p2.setTouroJanmar(Integer.parseInt(request.getParameter("touro_janmar")));
        lv2p2.setTouroAbrjun(Integer.parseInt(request.getParameter("touro_abrjun")));
        lv2p2.setTouroJulset(Integer.parseInt(request.getParameter("touro_julset")));
        lv2p2.setTouroOutdez(Integer.parseInt(request.getParameter("touro_outdez")));

        lv2p2.setTerneirosJanmar(Integer.parseInt(request.getParameter("terneiros_janmar")));
        lv2p2.setTerneirosAbrjun(Integer.parseInt(request.getParameter("terneiros_abrjun")));
        lv2p2.setTerneirosJulset(Integer.parseInt(request.getParameter("terneiros_julset")));
        lv2p2.setTerneirosOutdez(Integer.parseInt(request.getParameter("terneiros_outdez")));

        lv2p2.setTerneirasJanmar(Integer.parseInt(request.getParameter("terneiras_janmar")));
        lv2p2.setTerneirasAbrjun(Integer.parseInt(request.getParameter("terneiras_abrjun")));
        lv2p2.setTerneirasJulset(Integer.parseInt(request.getParameter("terneiras_julset")));
        lv2p2.setTerneirasOutdez(Integer.parseInt(request.getParameter("terneiras_outdez")));

        lv2p2.setNovilhas13a24Janmar(Integer.parseInt(request.getParameter("novilhas_13a24_janmar")));
        lv2p2.setNovilhas13a24Abrjun(Integer.parseInt(request.getParameter("novilhas_13a24_abrjun")));
        lv2p2.setNovilhas13a24Julset(Integer.parseInt(request.getParameter("novilhas_13a24_julset")));
        lv2p2.setNovilhas13a24Outdez(Integer.parseInt(request.getParameter("novilhas_13a24_outdez")));

        lv2p2.setNovilhos13a24Janmar(Integer.parseInt(request.getParameter("novilhos_13a24_janmar")));
        lv2p2.setNovilhos13a24Abrjun(Integer.parseInt(request.getParameter("novilhos_13a24_abrjun")));
        lv2p2.setNovilhos13a24Julset(Integer.parseInt(request.getParameter("novilhos_13a24_julset")));
        lv2p2.setNovilhos13a24Outdez(Integer.parseInt(request.getParameter("novilhos_13a24_outdez")));

        lv2p2.setNovilhas25a36Janmar(Integer.parseInt(request.getParameter("novilhas_25a36_janmar")));
        lv2p2.setNovilhas25a36Abrjun(Integer.parseInt(request.getParameter("novilhas_25a36_abrjun")));
        lv2p2.setNovilhas25a36Julset(Integer.parseInt(request.getParameter("novilhas_25a36_julset")));
        lv2p2.setNovilhas25a36Outdez(Integer.parseInt(request.getParameter("novilhas_25a36_outdez")));

        lv2p2.setNovilhos25a36Janmar(Integer.parseInt(request.getParameter("novilhos_25a36_janmar")));
        lv2p2.setNovilhos25a36Abrjun(Integer.parseInt(request.getParameter("novilhos_25a36_abrjun")));
        lv2p2.setNovilhos25a36Julset(Integer.parseInt(request.getParameter("novilhos_25a36_julset")));
        lv2p2.setNovilhos25a36Outdez(Integer.parseInt(request.getParameter("novilhos_25a36_outdez")));

        lv2p2.setNovilho36Janmar(Integer.parseInt(request.getParameter("novilho_36_janmar")));
        lv2p2.setNovilho36Abrjun(Integer.parseInt(request.getParameter("novilho_36_abrjun")));
        lv2p2.setNovilho36Julset(Integer.parseInt(request.getParameter("novilho_36_julset")));
        lv2p2.setNovilho36Outdez(Integer.parseInt(request.getParameter("novilho_36_outdez")));

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

                <div class="col-md-6">

                    <h3>Vacas de Cria</h3>

                    <label>Vacas de Cria de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaJanmar()%>" placeholder="Insira a quantidade de vacas de cria de janeiro a março" name="vaca_de_cria_janmar" max="1000000" min="0" >
                    <label>Vacas de Cria de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaAbrjun()%>" placeholder="Insira a quantidade de vacas de cria de abril a junho" name="vaca_de_cria_abrjun" max="1000000" min="0" >
                    <label>Vacas de Cria de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaJulset()%>" placeholder="Insira a quantidade de vacas de cria de julho a setembro" name="vaca_de_cria_julset" max="1000000" min="0" >
                    <label>Vacas de Cria de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeCriaOutdez()%>" placeholder="Insira a quantidade de vacas de cria de outubro a dezembro" name="vaca_de_cria_outdez" max="1000000" min="0" >

                    <h3>Vacas de Descarte</h3>

                    <label>Vacas de Descarte de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteJanmar()%>" placeholder="Insira a quantidade de vacas de descarte de janeiro a março" name="vaca_de_descarte_janmar" max="1000000" min="0" >
                    <label>Vacas de Descarte de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteAbrjun()%>" placeholder="Insira a quantidade de vacas de descarte de abril a junho" name="vaca_de_descarte_abrjun" max="1000000" min="0" >
                    <label>Vacas de Descarte de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteJulset()%>" placeholder="Insira a quantidade de vacas de descarte de julho a setembro" name="vaca_de_descarte_julset" max="1000000" min="0" >
                    <label>Vacas de Descarte de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacaDeDescarteOutdez()%>" placeholder="Insira a quantidade de vacas de descarte de outubro a dezembro" name="vaca_de_descarte_outdez" max="1000000" min="0" >

                    <h3>Touros</h3>

                    <label>Touros de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTouroJanmar()%>" placeholder="Insira a quantidade de touros de janeiro a março" name="touro_janmar" max="1000000" min="0" >
                    <label>Touros de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTouroAbrjun()%>" placeholder="Insira a quantidade de touros de abril a junho" name="touro_abrjun" max="1000000" min="0" >
                    <label>Touros de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTouroJulset()%>" placeholder="Insira a quantidade de touros de julho a setembro" name="touro_julset" max="1000000" min="0" >
                    <label>Touros de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTouroOutdez()%>" placeholder="Insira a quantidade de touros de outubro a dezembro" name="touro_outdez" max="1000000" min="0" >

                    <h3>Terneiros</h3>

                    <label>Terneiros de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosJanmar()%>" placeholder="Insira a quantidade de terneiros de janeiro a março" name="terneiros_janmar" max="1000000" min="0" >
                    <label>Terneiros de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosAbrjun()%>" placeholder="Insira a quantidade de terneiros de abril a junho" name="terneiros_abrjun" max="1000000" min="0" >
                    <label>Terneiros de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosJulset()%>" placeholder="Insira a quantidade de terneiros de julho a setembro" name="terneiros_julset" max="1000000" min="0" >
                    <label>Terneiros de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosOutdez()%>" placeholder="Insira a quantidade de terneiros de outubro a dezembro" name="terneiros_outdez" max="1000000" min="0" >

                    <h3>Terneiras</h3>

                    <label>Terneiras de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasJanmar()%>" placeholder="Insira a quantidade de terneiras de janeiro a março" name="terneiras_janmar" max="1000000" min="0" >
                    <label>Terneiras de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasAbrjun()%>" placeholder="Insira a quantidade de terneiras de abril a junho" name="terneiras_abrjun" max="1000000" min="0" >
                    <label>Terneiras de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasJulset()%>" placeholder="Insira a quantidade de terneiras de julho a setembro" name="terneiras_julset" max="1000000" min="0" >
                    <label>Terneiras de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasOutdez()%>" placeholder="Insira a quantidade de terneiras de outubro a dezembro" name="terneiras_outdez" max="1000000" min="0" >

                </div>
                <div class="col-md-6">
                    <h3>Novilhos: 13 a 24 Meses</h3>

                    <label>Novilhos: 13 a 24 Meses de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Janmar()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de janeiro a março" name="novilhos_13a24_janmar" max="1000000" min="0" >
                    <label>Novilhos: 13 a 24 Meses de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Abrjun()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de abril a junho" name="novilhos_13a24_abrjun" max="1000000" min="0" >
                    <label>Novilhos: 13 a 24 Meses de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Julset()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de julho a setembro" name="novilhos_13a24_julset" max="1000000" min="0" >
                    <label>Novilhos: 13 a 24 Meses de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos13a24Outdez()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de outubro a dezembro" name="novilhos_13a24_outdez" max="1000000" min="0" >

                    <h3>Novilhas: 13 a 24 Meses</h3>

                    <label>Novilhas: 13 a 24 Meses de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Janmar()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de janeiro a março" name="novilhas_13a24_janmar" max="1000000" min="0" >
                    <label>Novilhas: 13 a 24 Meses de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Abrjun()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de abril a junho" name="novilhas_13a24_abrjun" max="1000000" min="0" >
                    <label>Novilhas: 13 a 24 Meses de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Julset()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de julho a setembro" name="novilhas_13a24_julset" max="1000000" min="0" >
                    <label>Novilhas: 13 a 24 Meses de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhas13a24Outdez()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de outubro a dezembro" name="novilhas_13a24_outdez" max="1000000" min="0" >

                    <h3>Novilhos: 25 a 36 Meses</h3>

                    <label>Novilhos: 25 a 36 Meses de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Janmar()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de janeiro a março" name="novilhos_25a36_janmar" max="1000000" min="0" >
                    <label>Novilhos: 25 a 36 Meses de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Abrjun()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de abril a junho" name="novilhos_25a36_abrjun" max="1000000" min="0" >
                    <label>Novilhos: 25 a 36 Meses de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Julset()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de julho a setembro" name="novilhos_25a36_julset" max="1000000" min="0" >
                    <label>Novilhos: 25 a 36 Meses de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhos25a36Outdez()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de outubro a dezembro" name="novilhos_25a36_outdez" max="1000000" min="0" >

                    <h3>Novilhas: 25 a 36 Meses</h3>

                    <label>Novilhas: 25 a 36 Meses de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhas25a36Janmar()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de janeiro a março" name="novilhas_25a36_janmar" max="1000000" min="0" >
                    <label>Novilhas: 25 a 36 Meses de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control"  value="<%=passos.getLv2p2().getNovilhas25a36Abrjun()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de abril a junho" name="novilhas_25a36_abrjun" max="1000000" min="0" >
                    <label>Novilhas: 25 a 36 Meses de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhas25a36Julset()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de julho a setembro" name="novilhas_25a36_julset" max="1000000" min="0" >
                    <label>Novilhas: 25 a 36 Meses de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilhas25a36Outdez()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de outubro a dezembro" name="novilhas_25a36_outdez" max="1000000" min="0" >

                    <h3>Novilhos: Mais de 36 Meses</h3>

                    <label>Novilhos: Mais de 36 Meses de Janeiro a Março <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36Janmar()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses de janeiro a março" name="novilho_36_janmar" max="1000000" min="0" >
                    <label>Novilhos: Mais de 36 Meses de Abril a Junho <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36Abrjun()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de abril a junho" name="novilho_36_abrjun" max="1000000" min="0" >
                    <label>Novilhos: Mais de 36 Meses de Julho a Setembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36Julset()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de julho a setembro" name="novilho_36_julset" max="1000000" min="0" >
                    <label>Novilhos: Mais de 36 Meses de Outubro a Dezembro <span class="label-control"></span></label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36Outdez()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de outubro a dezembro" name="novilho_36_outdez" max="1000000" min="0" >
                    <br/>
                </div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                         <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                        <a type="button" id="calcular" class="btn btn-block btn-danger">Calcular</a><br>
                    </div>
                </div>


            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 conteudo" hidden id="infocalculo">
                    <div id="totalb" class="well well-sm">Total de Bovinos:</div>
                    <div id="totalbjm" class="well well-sm">Total de Bovinos de Janeiro a Março:</div>
                    <div id="totalbaj" class="well well-sm">Total de Bovinos de Abril a Junho:</div>
                    <div id="totalbjs" class="well well-sm">Total de Bovinos de Julho a Setembro:</div>
                    <div id="totalbod" class="well well-sm">Total de Bovinos de Outubro a Dezembro:</div>
                    <div id="percentualrebanhocomcria" class="well well-sm">Percentual do Rebanho com Atividade de Cria:</div>
                    <div id="lotacaomedia" class="well well-sm">Lotação Média da Propriedade:</div>


                    <input type="submit" disabled value="Próximo Passo" class="btn btn-success btn-lg center-block">
                </div>
            </div>



        </form> 
    </div>


</div>
</div>
<script src="../js/calculos.js"></script>
<script src="../js/validarForm.js"></script>
<script>
    $(document).ready(function () {

        lv2p2(<%=passos.areaAproveitavelPecuaria()%>);

    });</script>
</body>
</html>
