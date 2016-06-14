<%@page import="modelo.Lv2p2"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<% session.setAttribute("Link", 2);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv2p2 lv2p2 = passos.getLv2p2dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p2() == null) {

        passos.setLv2p2(new Lv2p2(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv2p2 == null && request.getParameter("vaca_de_cria_janmar") != null) {
        lv2p2 = new Lv2p2(id, ano);

        lv2p2.setVacadecriajanmar(Integer.parseInt(request.getParameter("vaca_de_cria_janmar")));
        lv2p2.setVacadecriaabrjun(Integer.parseInt(request.getParameter("vaca_de_cria_abrjun")));
        lv2p2.setVacadecriajulset(Integer.parseInt(request.getParameter("vaca_de_cria_julset")));
        lv2p2.setVacadecriaoutdez(Integer.parseInt(request.getParameter("vaca_de_cria_outdez")));

        lv2p2.setVacadedescartejanmar(Integer.parseInt(request.getParameter("vaca_de_descarte_janmar")));
        lv2p2.setVacadedescarteabrjun(Integer.parseInt(request.getParameter("vaca_de_descarte_abrjun")));
        lv2p2.setVacadedescartejulset(Integer.parseInt(request.getParameter("vaca_de_descarte_julset")));
        lv2p2.setVacadedescarteoutdez(Integer.parseInt(request.getParameter("vaca_de_descarte_outdez")));

        lv2p2.setTourojanmar(Integer.parseInt(request.getParameter("touro_janmar")));
        lv2p2.setTouroabrjun(Integer.parseInt(request.getParameter("touro_abrjun")));
        lv2p2.setTourojulset(Integer.parseInt(request.getParameter("touro_julset")));
        lv2p2.setTourooutdez(Integer.parseInt(request.getParameter("touro_outdez")));

        lv2p2.setTerneirosjanmar(Integer.parseInt(request.getParameter("terneiros_janmar")));
        lv2p2.setTerneirosabrjun(Integer.parseInt(request.getParameter("terneiros_abrjun")));
        lv2p2.setTerneirosjulset(Integer.parseInt(request.getParameter("terneiros_julset")));
        lv2p2.setTerneirosoutdez(Integer.parseInt(request.getParameter("terneiros_outdez")));

        lv2p2.setTerneirasjanmar(Integer.parseInt(request.getParameter("terneiras_janmar")));
        lv2p2.setTerneirasabrjun(Integer.parseInt(request.getParameter("terneiras_abrjun")));
        lv2p2.setTerneirasjulset(Integer.parseInt(request.getParameter("terneiras_julset")));
        lv2p2.setTerneirasoutdez(Integer.parseInt(request.getParameter("terneiras_outdez")));

        lv2p2.setNovilha1324janmar(Integer.parseInt(request.getParameter("novilhas_13a24_janmar")));
        lv2p2.setNovilha1324abrjun(Integer.parseInt(request.getParameter("novilhas_13a24_abrjun")));
        lv2p2.setNovilha1324julset(Integer.parseInt(request.getParameter("novilhas_13a24_julset")));
        lv2p2.setNovilha1324outdez(Integer.parseInt(request.getParameter("novilhas_13a24_outdez")));

        lv2p2.setNovilho1324janmar(Integer.parseInt(request.getParameter("novilhos_13a24_janmar")));
        lv2p2.setNovilho1324abrjun(Integer.parseInt(request.getParameter("novilhos_13a24_abrjun")));
        lv2p2.setNovilho1324julset(Integer.parseInt(request.getParameter("novilhos_13a24_julset")));
        lv2p2.setNovilho1324outdez(Integer.parseInt(request.getParameter("novilhos_13a24_outdez")));

        lv2p2.setNovilha2536janmar(Integer.parseInt(request.getParameter("novilhas_25a36_janmar")));
        lv2p2.setNovilha2536abrjun(Integer.parseInt(request.getParameter("novilhas_25a36_abrjun")));
        lv2p2.setNovilha2536julset(Integer.parseInt(request.getParameter("novilhas_25a36_julset")));
        lv2p2.setNovilha2536outdez(Integer.parseInt(request.getParameter("novilhas_25a36_outdez")));

        lv2p2.setNovilho2536janmar(Integer.parseInt(request.getParameter("novilhos_25a36_janmar")));
        lv2p2.setNovilho2536abrjun(Integer.parseInt(request.getParameter("novilhos_25a36_abrjun")));
        lv2p2.setNovilho2536julset(Integer.parseInt(request.getParameter("novilhos_25a36_julset")));
        lv2p2.setNovilho2536outdez(Integer.parseInt(request.getParameter("novilhos_25a36_outdez")));

        lv2p2.setNovilho36janmar(Integer.parseInt(request.getParameter("novilho_36_janmar")));
        lv2p2.setNovilho36abrjun(Integer.parseInt(request.getParameter("novilho_36_abrjun")));
        lv2p2.setNovilho36julset(Integer.parseInt(request.getParameter("novilho_36_julset")));
        lv2p2.setNovilho36outdez(Integer.parseInt(request.getParameter("novilho_36_outdez")));

        passos.getLv2p2dao().inserir(lv2p2);
        passos.setLv2p2(lv2p2);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv2p3.jsp");
        return;
    } else if (lv2p2 != null && request.getParameter("vaca_de_cria_janmar") != null) {

        lv2p2.setVacadecriajanmar(Integer.parseInt(request.getParameter("vaca_de_cria_janmar")));
        lv2p2.setVacadecriaabrjun(Integer.parseInt(request.getParameter("vaca_de_cria_abrjun")));
        lv2p2.setVacadecriajulset(Integer.parseInt(request.getParameter("vaca_de_cria_julset")));
        lv2p2.setVacadecriaoutdez(Integer.parseInt(request.getParameter("vaca_de_cria_outdez")));

        lv2p2.setVacadedescartejanmar(Integer.parseInt(request.getParameter("vaca_de_descarte_janmar")));
        lv2p2.setVacadedescarteabrjun(Integer.parseInt(request.getParameter("vaca_de_descarte_abrjun")));
        lv2p2.setVacadedescartejulset(Integer.parseInt(request.getParameter("vaca_de_descarte_julset")));
        lv2p2.setVacadedescarteoutdez(Integer.parseInt(request.getParameter("vaca_de_descarte_outdez")));

        lv2p2.setTourojanmar(Integer.parseInt(request.getParameter("touro_janmar")));
        lv2p2.setTouroabrjun(Integer.parseInt(request.getParameter("touro_abrjun")));
        lv2p2.setTourojulset(Integer.parseInt(request.getParameter("touro_julset")));
        lv2p2.setTourooutdez(Integer.parseInt(request.getParameter("touro_outdez")));

        lv2p2.setTerneirosjanmar(Integer.parseInt(request.getParameter("terneiros_janmar")));
        lv2p2.setTerneirosabrjun(Integer.parseInt(request.getParameter("terneiros_abrjun")));
        lv2p2.setTerneirosjulset(Integer.parseInt(request.getParameter("terneiros_julset")));
        lv2p2.setTerneirosoutdez(Integer.parseInt(request.getParameter("terneiros_outdez")));

        lv2p2.setTerneirasjanmar(Integer.parseInt(request.getParameter("terneiras_janmar")));
        lv2p2.setTerneirasabrjun(Integer.parseInt(request.getParameter("terneiras_abrjun")));
        lv2p2.setTerneirasjulset(Integer.parseInt(request.getParameter("terneiras_julset")));
        lv2p2.setTerneirasoutdez(Integer.parseInt(request.getParameter("terneiras_outdez")));

        lv2p2.setNovilha1324janmar(Integer.parseInt(request.getParameter("novilhas_13a24_janmar")));
        lv2p2.setNovilha1324abrjun(Integer.parseInt(request.getParameter("novilhas_13a24_abrjun")));
        lv2p2.setNovilha1324julset(Integer.parseInt(request.getParameter("novilhas_13a24_julset")));
        lv2p2.setNovilha1324outdez(Integer.parseInt(request.getParameter("novilhas_13a24_outdez")));

        lv2p2.setNovilho1324janmar(Integer.parseInt(request.getParameter("novilhos_13a24_janmar")));
        lv2p2.setNovilho1324abrjun(Integer.parseInt(request.getParameter("novilhos_13a24_abrjun")));
        lv2p2.setNovilho1324julset(Integer.parseInt(request.getParameter("novilhos_13a24_julset")));
        lv2p2.setNovilho1324outdez(Integer.parseInt(request.getParameter("novilhos_13a24_outdez")));

        lv2p2.setNovilha2536janmar(Integer.parseInt(request.getParameter("novilhas_25a36_janmar")));
        lv2p2.setNovilha2536abrjun(Integer.parseInt(request.getParameter("novilhas_25a36_abrjun")));
        lv2p2.setNovilha2536julset(Integer.parseInt(request.getParameter("novilhas_25a36_julset")));
        lv2p2.setNovilha2536outdez(Integer.parseInt(request.getParameter("novilhas_25a36_outdez")));

        lv2p2.setNovilho2536janmar(Integer.parseInt(request.getParameter("novilhos_25a36_janmar")));
        lv2p2.setNovilho2536abrjun(Integer.parseInt(request.getParameter("novilhos_25a36_abrjun")));
        lv2p2.setNovilho2536julset(Integer.parseInt(request.getParameter("novilhos_25a36_julset")));
        lv2p2.setNovilho2536outdez(Integer.parseInt(request.getParameter("novilhos_25a36_outdez")));

        lv2p2.setNovilho36janmar(Integer.parseInt(request.getParameter("novilho_36_janmar")));
        lv2p2.setNovilho36abrjun(Integer.parseInt(request.getParameter("novilho_36_abrjun")));
        lv2p2.setNovilho36julset(Integer.parseInt(request.getParameter("novilho_36_julset")));
        lv2p2.setNovilho36outdez(Integer.parseInt(request.getParameter("novilho_36_outdez")));

        passos.getLv2p2dao().atualizar(lv2p2);
        passos.setLv2p2(lv2p2);
        session.setAttribute("Passos", passos);
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
        <form action="lv2p2.jsp" method="post">
            <div class="row">

                <div class="col-md-6">

                    <h3>Vacas de Cria</h3>

                    <label>Vacas de Cria de Janeiro a Março</label>
                    <input type="number" class="form-control"  value="<%=passos.getLv2p2().getVacadecriajanmar()%>" placeholder="Insira a quantidade de vacas de cria de janeiro a março" name="vaca_de_cria_janmar" max="1000000" min="0" required>
                    <label>Vacas de Cria de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacadecriaabrjun()%>" placeholder="Insira a quantidade de vacas de cria de abril a junho" name="vaca_de_cria_abrjun" max="1000000" min="0" required>
                    <label>Vacas de Cria de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacadecriajulset()%>" placeholder="Insira a quantidade de vacas de cria de julho a setembro" name="vaca_de_cria_julset" max="1000000" min="0" required>
                    <label>Vacas de Cria de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacadecriaoutdez()%>" placeholder="Insira a quantidade de vacas de cria de outubro a dezembro" name="vaca_de_cria_outdez" max="1000000" min="0" required>

                    <h3>Vacas de Descarte</h3>

                    <label>Vacas de Descarte de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacadedescartejanmar()%>" placeholder="Insira a quantidade de vacas de descarte de janeiro a março" name="vaca_de_descarte_janmar" max="1000000" min="0" required>
                    <label>Vacas de Descarte de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacadedescarteabrjun()%>" placeholder="Insira a quantidade de vacas de descarte de abril a junho" name="vaca_de_descarte_abrjun" max="1000000" min="0" required>
                    <label>Vacas de Descarte de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacadedescartejulset()%>" placeholder="Insira a quantidade de vacas de descarte de julho a setembro" name="vaca_de_descarte_julset" max="1000000" min="0" required>
                    <label>Vacas de Descarte de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getVacadedescarteoutdez()%>" placeholder="Insira a quantidade de vacas de descarte de outubro a dezembro" name="vaca_de_descarte_outdez" max="1000000" min="0" required>

                    <h3>Touros</h3>

                    <label>Touros de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTourojanmar()%>" placeholder="Insira a quantidade de touros de janeiro a março" name="touro_janmar" max="1000000" min="0" required>
                    <label>Touros de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTouroabrjun()%>" placeholder="Insira a quantidade de touros de abril a junho" name="touro_abrjun" max="1000000" min="0" required>
                    <label>Touros de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTourojulset()%>" placeholder="Insira a quantidade de touros de julho a setembro" name="touro_julset" max="1000000" min="0" required>
                    <label>Touros de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTourooutdez()%>" placeholder="Insira a quantidade de touros de outubro a dezembro" name="touro_outdez" max="1000000" min="0" required>

                    <h3>Terneiros</h3>

                    <label>Terneiros de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosjanmar()%>" placeholder="Insira a quantidade de terneiros de janeiro a março" name="terneiros_janmar" max="1000000" min="0" required>
                    <label>Terneiros de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosabrjun()%>" placeholder="Insira a quantidade de terneiros de abril a junho" name="terneiros_abrjun" max="1000000" min="0" required>
                    <label>Terneiros de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosjulset()%>" placeholder="Insira a quantidade de terneiros de julho a setembro" name="terneiros_julset" max="1000000" min="0" required>
                    <label>Terneiros de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirosoutdez()%>" placeholder="Insira a quantidade de terneiros de outubro a dezembro" name="terneiros_outdez" max="1000000" min="0" required>

                    <h3>Terneiras</h3>

                    <label>Terneiras de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasjanmar()%>" placeholder="Insira a quantidade de terneiras de janeiro a março" name="terneiras_janmar" max="1000000" min="0" required>
                    <label>Terneiras de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasabrjun()%>" placeholder="Insira a quantidade de terneiras de abril a junho" name="terneiras_abrjun" max="1000000" min="0" required>
                    <label>Terneiras de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasjulset()%>" placeholder="Insira a quantidade de terneiras de julho a setembro" name="terneiras_julset" max="1000000" min="0" required>
                    <label>Terneiras de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getTerneirasoutdez()%>" placeholder="Insira a quantidade de terneiras de outubro a dezembro" name="terneiras_outdez" max="1000000" min="0" required>

                </div>
                <div class="col-md-6">
                    <h3>Novilhos: 13 a 24 Meses</h3>

                    <label>Novilhos: 13 a 24 Meses de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho1324janmar()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de janeiro a março" name="novilhos_13a24_janmar" max="1000000" min="0" required>
                    <label>Novilhos: 13 a 24 Meses de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho1324abrjun()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de abril a junho" name="novilhos_13a24_abrjun" max="1000000" min="0" required>
                    <label>Novilhos: 13 a 24 Meses de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho1324julset()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de julho a setembro" name="novilhos_13a24_julset" max="1000000" min="0" required>
                    <label>Novilhos: 13 a 24 Meses de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho1324outdez()%>" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de outubro a dezembro" name="novilhos_13a24_outdez" max="1000000" min="0" required>

                    <h3>Novilhas: 13 a 24 Meses</h3>

                    <label>Novilhas: 13 a 24 Meses de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilha1324janmar()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de janeiro a março" name="novilhas_13a24_janmar" max="1000000" min="0" required>
                    <label>Novilhas: 13 a 24 Meses de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilha1324abrjun()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de abril a junho" name="novilhas_13a24_abrjun" max="1000000" min="0" required>
                    <label>Novilhas: 13 a 24 Meses de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilha1324julset()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de julho a setembro" name="novilhas_13a24_julset" max="1000000" min="0" required>
                    <label>Novilhas: 13 a 24 Meses de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilha1324outdez()%>" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de outubro a dezembro" name="novilhas_13a24_outdez" max="1000000" min="0" required>

                    <h3>Novilhos: 25 a 36 Meses</h3>

                    <label>Novilhos: 25 a 36 Meses de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho2536janmar()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de janeiro a março" name="novilhos_25a36_janmar" max="1000000" min="0" required>
                    <label>Novilhos: 25 a 36 Meses de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho2536abrjun()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de abril a junho" name="novilhos_25a36_abrjun" max="1000000" min="0" required>
                    <label>Novilhos: 25 a 36 Meses de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho2536julset()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de julho a setembro" name="novilhos_25a36_julset" max="1000000" min="0" required>
                    <label>Novilhos: 25 a 36 Meses de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho2536outdez()%>" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de outubro a dezembro" name="novilhos_25a36_outdez" max="1000000" min="0" required>

                    <h3>Novilhas: 25 a 36 Meses</h3>

                    <label>Novilhas: 25 a 36 Meses de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilha2536janmar()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de janeiro a março" name="novilhas_25a36_janmar" max="1000000" min="0" required>
                    <label>Novilhas: 25 a 36 Meses de Abril a Junho</label>
                    <input type="number" class="form-control"  value="<%=passos.getLv2p2().getNovilha2536abrjun()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de abril a junho" name="novilhas_25a36_abrjun" max="1000000" min="0" required>
                    <label>Novilhas: 25 a 36 Meses de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilha2536julset()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de julho a setembro" name="novilhas_25a36_julset" max="1000000" min="0" required>
                    <label>Novilhas: 25 a 36 Meses de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilha2536outdez()%>" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de outubro a dezembro" name="novilhas_25a36_outdez" max="1000000" min="0" required>

                    <h3>Novilhos: Mais de 36 Meses</h3>

                    <label>Novilhos: Mais de 36 Meses de Janeiro a Março</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36janmar()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses de janeiro a março" name="novilho_36_janmar" max="1000000" min="0" required>
                    <label>Novilhos: Mais de 36 Meses de Abril a Junho</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36abrjun()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de abril a junho" name="novilho_36_abrjun" max="1000000" min="0" required>
                    <label>Novilhos: Mais de 36 Meses de Julho a Setembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36julset()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de julho a setembro" name="novilho_36_julset" max="1000000" min="0" required>
                    <label>Novilhos: Mais de 36 Meses de Outubro a Dezembro</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p2().getNovilho36outdez()%>" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de outubro a dezembro" name="novilho_36_outdez" max="1000000" min="0" required>

                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 conteudo">
                    <button type="button" class="btn btn-block btn-danger">Calcular</button><br>
                    <div class="well well-sm">Total de Bovinos de Janeiro a Março: xx</div>
                    <div class="well well-sm">Total de Bovinos de Abril a Junho</div>
                    <div class="well well-sm">Total de Bovinos de Julho a Setembro</div>
                    <div class="well well-sm">Total de Bovinos de Outubro a Dezembro</div>
                </div>
            </div>
            <div class="row conteudo">
                <div class="col-md-12">                   
                    <input type="submit" value="Próximo Passo" class="btn btn-success btn-lg center-block">
                </div>
            </div>

        </form> 
    </div>



</div>

</body>
</html>
