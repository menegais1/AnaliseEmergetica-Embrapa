<%@page import="modelo.Lv2p1"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<%    session.setAttribute("Link", 1);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv2p1 lv2p1 = passos.getLv2p1dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p1() == null) {

        passos.setLv2p1(new Lv2p1(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv2p1 == null && request.getParameter("pastagem_nativa") != null) {
        lv2p1 = new Lv2p1(id, ano);

        lv2p1.setPastagemnativa(Double.parseDouble(request.getParameter("pastagem_nativa")));
        lv2p1.setAgriculturai(Double.parseDouble(request.getParameter("agricultura_i")));
        lv2p1.setAgriculturav(Double.parseDouble(request.getParameter("agricultura_v")));
        lv2p1.setFlorestaplantadas(Double.parseDouble(request.getParameter("florestas_plantadas")));
        lv2p1.setInaproveitavel(Double.parseDouble(request.getParameter("inaproveitavel")));
        lv2p1.setMatasnativas(Double.parseDouble(request.getParameter("matas_nativas")));
        lv2p1.setOutrasculturas(Double.parseDouble(request.getParameter("outras_culturas")));
        lv2p1.setPastagemanuaisdeinverno(Double.parseDouble(request.getParameter("pastagem_anuais_de_inverno")));
        lv2p1.setPastagemanuaisdeverao(Double.parseDouble(request.getParameter("pastagem_anuais_de_verao")));
        lv2p1.setPastagemcultivadaperene(Double.parseDouble(request.getParameter("pastagem_cultivada_perene")));
        lv2p1.setPastagemnativamelhorada(Double.parseDouble(request.getParameter("pastagem_nativa_melhorada")));
        lv2p1.setSea(Double.parseDouble(request.getParameter("sea")));

        passos.getLv2p1dao().inserir(lv2p1);
        passos.setLv2p1(lv2p1);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv2p2.jsp");
        return;
    } else if (lv2p1 != null && request.getParameter("pastagem_nativa") != null) {

        lv2p1.setPastagemnativa(Double.parseDouble(request.getParameter("pastagem_nativa")));
        lv2p1.setAgriculturai(Double.parseDouble(request.getParameter("agricultura_i")));
        lv2p1.setAgriculturav(Double.parseDouble(request.getParameter("agricultura_v")));
        lv2p1.setFlorestaplantadas(Double.parseDouble(request.getParameter("florestas_plantadas")));
        lv2p1.setInaproveitavel(Double.parseDouble(request.getParameter("inaproveitavel")));
        lv2p1.setMatasnativas(Double.parseDouble(request.getParameter("matas_nativas")));
        lv2p1.setOutrasculturas(Double.parseDouble(request.getParameter("outras_culturas")));
        lv2p1.setPastagemanuaisdeinverno(Double.parseDouble(request.getParameter("pastagem_anuais_de_inverno")));
        lv2p1.setPastagemanuaisdeverao(Double.parseDouble(request.getParameter("pastagem_anuais_de_verao")));
        lv2p1.setPastagemcultivadaperene(Double.parseDouble(request.getParameter("pastagem_cultivada_perene")));
        lv2p1.setPastagemnativamelhorada(Double.parseDouble(request.getParameter("pastagem_nativa_melhorada")));
        lv2p1.setSea(Double.parseDouble(request.getParameter("sea")));

        passos.getLv2p1dao().atualizar(lv2p1);
        passos.setLv2p1(lv2p1);
        session.setAttribute("Passos", passos);
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
        <div class="col-md-6">
            <div class="form-group">
                <form action="lv2p1.jsp" method="post">
                    <label>Pastagem Nativa</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemnativa()%>" placeholder="Insira a quantidade (em Hectares) de pastagens nativas em sua propriedade" class="form-control" name="pastagem_nativa" required>
                    <label>Pastagem Nativa Melhorada</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemnativamelhorada()%>" placeholder="Insira a quantidade (em Hectares) de pastagens nativas melhoradas em sua propriedade" class="form-control" name="pastagem_nativa_melhorada" required>
                    <label>Pastagem Cultivada Perene</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemcultivadaperene()%>" placeholder="Insira a quantidade (em Hectares) de pastagens cultivadas perenes em sua propriedade" class="form-control" name="pastagem_cultivada_perene" required>
                    <label>Pastagem Anual de Inverno</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemanuaisdeinverno()%>" placeholder="Insira a quantidade (em Hectares) de pastagens anuais de inverno em sua propriedade" class="form-control" name="pastagem_anuais_de_verao" required>
                    <label>Pastagem Anual de Verão</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getPastagemanuaisdeverao()%>" placeholder="Insira a quantidade (em Hectares) de pastagens anuais de verão em sua propriedade" class="form-control" name="pastagem_anuais_de_inverno" required>
                    <label>Agricultura de Inverno</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getAgriculturai()%>" placeholder="Insira a quantidade (em Hectares) de agricultura de inverno em sua propriedade" class="form-control" name="agricultura_i" required>
                    <label>Agricultura de Verão</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getAgriculturav()%>" placeholder="Insira a quantidade (em Hectares) de agricultura de verão em sua propriedade" class="form-control" name="agricultura_v" required>
                    <label>Florestas Plantadas</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getFlorestaplantadas()%>" placeholder="Insira a quantidade (em Hectares) de florestas plantadas em sua propriedade" class="form-control" name="florestas_plantadas" required>
                    <label>Matas Nativas</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getMatasnativas()%>" placeholder="Insira a quantidade (em Hectares) de matas nativas em sua propriedade" class="form-control" name="matas_nativas" required>
                    <label>Outras culturas</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getOutrasculturas()%>" placeholder="Insira a quantidade (em Hectares) de outras culturas em sua propriedade" class="form-control" name="outras_culturas" required>
                    <label>Sede, Estradas e Açudes</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getSea()%>" placeholder="Insira a quantidade (em Hectares) de sede,estradas e açudes em sua propriedade" class="form-control" name="sea" required>
                    <label>Inaproveitavel</label>
                    <input type="number" max="10000000" min="0" value="<%=passos.getLv2p1().getInaproveitavel()%>" placeholder="Insira a quantidade (em Hectares) de terreno inaproveitável em sua propriedade" class="form-control" name="inaproveitavel" required><br>
                    <input type="submit" value="Próximo Passo" class="btn btn-lg btn-success center-block">

                </form>
            </div>
        </div>
        <div class="col-md-6" id="infocalculo">
            <button class="btn btn-block btn-danger">Calcular</button><br>
            <div class="well well-sm">
                Área Total da Pecúaria: xx
            </div>
            <div class="well well-sm">
                Total de Área Aproveitável: xx
            </div>
            <div class="well well-sm">
                Área Total: xx
            </div>  
        </div>
    </div>
</div>
</body>
</html>
