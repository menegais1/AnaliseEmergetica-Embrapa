

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

    if (lv2p1 == null && request.getParameter("pastagem_nativa") != null) {
        lv2p1 = new Lv2p1(id, ano);

        lv2p1.setPastagemNativa(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_nativa"))));
        lv2p1.setAgriculturaI(BigDecimal.valueOf(Double.parseDouble(request.getParameter("agricultura_i"))));
        lv2p1.setAgriculturaV(BigDecimal.valueOf(Double.parseDouble(request.getParameter("agricultura_v"))));
        lv2p1.setFlorestasPlantadas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("florestas_plantadas"))));
        lv2p1.setInaproveitavel(BigDecimal.valueOf(Double.parseDouble(request.getParameter("inaproveitavel"))));
        lv2p1.setMatasNativas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("matas_nativas"))));
        lv2p1.setOutrasCulturas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("outras_culturas"))));
        lv2p1.setPastagemAnuaisDeInverno(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_anuais_de_inverno"))));
        lv2p1.setPastagemAnuaisDeVerao(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_anuais_de_verao"))));
        lv2p1.setPastagemCultivadaPerene(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_cultivada_perene"))));
        lv2p1.setPastagemNativaMelhorada(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_nativa_melhorada"))));
        lv2p1.setSea(BigDecimal.valueOf(Double.parseDouble(request.getParameter("sea"))));

        passos.getLv2p1dao().incluir(lv2p1);
        passos.setLv2p1(lv2p1);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p2.jsp");
        return;
    } else if (lv2p1 != null && request.getParameter("pastagem_nativa") != null) {

        lv2p1.setPastagemNativa(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_nativa"))));
        lv2p1.setAgriculturaI(BigDecimal.valueOf(Double.parseDouble(request.getParameter("agricultura_i"))));
        lv2p1.setAgriculturaV(BigDecimal.valueOf(Double.parseDouble(request.getParameter("agricultura_v"))));
        lv2p1.setFlorestasPlantadas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("florestas_plantadas"))));
        lv2p1.setInaproveitavel(BigDecimal.valueOf(Double.parseDouble(request.getParameter("inaproveitavel"))));
        lv2p1.setMatasNativas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("matas_nativas"))));
        lv2p1.setOutrasCulturas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("outras_culturas"))));
        lv2p1.setPastagemAnuaisDeInverno(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_anuais_de_inverno"))));
        lv2p1.setPastagemAnuaisDeVerao(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_anuais_de_verao"))));
        lv2p1.setPastagemCultivadaPerene(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_cultivada_perene"))));
        lv2p1.setPastagemNativaMelhorada(BigDecimal.valueOf(Double.parseDouble(request.getParameter("pastagem_nativa_melhorada"))));
        lv2p1.setSea(BigDecimal.valueOf(Double.parseDouble(request.getParameter("sea"))));

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
            <form action="lv2p1.jsp" method="post">
                <div class="col-md-6">
                    <label>Pastagem Nativa</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemNativa()%>" placeholder="Insira a quantidade (em Hectares) de pastagens nativas em sua propriedade" class="form-control" name="pastagem_nativa" required>
                    <label>Pastagem Nativa Melhorada</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemNativaMelhorada()%>" placeholder="Insira a quantidade (em Hectares) de pastagens nativas melhoradas em sua propriedade" class="form-control" name="pastagem_nativa_melhorada" required>
                    <label>Pastagem Cultivada Perene</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemCultivadaPerene()%>" placeholder="Insira a quantidade (em Hectares) de pastagens cultivadas perenes em sua propriedade" class="form-control" name="pastagem_cultivada_perene" required>
                    <label>Pastagem Anual de Inverno</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemAnuaisDeInverno()%>" placeholder="Insira a quantidade (em Hectares) de pastagens anuais de inverno em sua propriedade" class="form-control" name="pastagem_anuais_de_verao" required>
                    <label>Pastagem Anual de Verão</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemAnuaisDeVerao()%>" placeholder="Insira a quantidade (em Hectares) de pastagens anuais de verão em sua propriedade" class="form-control" name="pastagem_anuais_de_inverno" required>
                    <label>Agricultura de Inverno</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getAgriculturaI()%>" placeholder="Insira a quantidade (em Hectares) de agricultura de inverno em sua propriedade" class="form-control" name="agricultura_i" required>
                    <label>Agricultura de Verão</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getAgriculturaV()%>" placeholder="Insira a quantidade (em Hectares) de agricultura de verão em sua propriedade" class="form-control" name="agricultura_v" required>
                    <label>Florestas Plantadas</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getFlorestasPlantadas()%>" placeholder="Insira a quantidade (em Hectares) de florestas plantadas em sua propriedade" class="form-control" name="florestas_plantadas" required>
                    <label>Matas Nativas</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getMatasNativas()%>" placeholder="Insira a quantidade (em Hectares) de matas nativas em sua propriedade" class="form-control" name="matas_nativas" required>
                    <label>Outras culturas</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getOutrasCulturas()%>" placeholder="Insira a quantidade (em Hectares) de outras culturas em sua propriedade" class="form-control" name="outras_culturas" required>
                    <label>Sede, Estradas e Açudes</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getSea()%>" placeholder="Insira a quantidade (em Hectares) de sede,estradas e açudes em sua propriedade" class="form-control" name="sea" required>
                    <label>Inaproveitavel</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getInaproveitavel()%>" placeholder="Insira a quantidade (em Hectares) de terreno inaproveitável em sua propriedade" class="form-control" name="inaproveitavel" required><br>
                    <button type="button" class="btn btn-block btn-danger">Calcular</button><br>

                </div>

                <div class="col-md-6" id="infocalculo">

                    <div class="well well-sm">
                        Área Total da Pecúaria: xx
                    </div>
                    <div class="well well-sm">
                        Total de Área Aproveitável: xx
                    </div>
                    <div class="well well-sm">
                        Área Total: xx
                    </div>
                    <input type="submit" value="Próximo Passo" class="btn btn-lg btn-success center-block">
                </div>


            </form>

        </div>


    </div>
</div>
</body>
</html>
