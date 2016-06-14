<%@page import="modelo.Lv2p3"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<% session.setAttribute("Link", 3);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv2p3 lv2p3 = passos.getLv2p3dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p3() == null) {

        passos.setLv2p3(new Lv2p3(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv2p3 == null && request.getParameter("terneiros_quant") != null) {
        lv2p3 = new Lv2p3(id, ano);

        lv2p3.setTerneiroquant(Integer.parseInt(request.getParameter("terneiros_quant")));
        lv2p3.setTerneiraquant(Integer.parseInt(request.getParameter("terneiras_quant")));
        lv2p3.setNovilhaquant(Integer.parseInt(request.getParameter("novilhas_quant")));
        lv2p3.setVacadedescartequant(Integer.parseInt(request.getParameter("vacas_de_descarte_quant")));
        lv2p3.setVacaprenhasquant(Integer.parseInt(request.getParameter("vaca_prenha_quant")));
        lv2p3.setVacacomcriaquant(Integer.parseInt(request.getParameter("vaca_com_cria_quant")));
        lv2p3.setVacagordaquant(Integer.parseInt(request.getParameter("vaca_gorda_quant")));
        lv2p3.setNovilhorecriaquant(Integer.parseInt(request.getParameter("novilho_pra_recria_quant")));
        lv2p3.setNovilhogordoquant(Integer.parseInt(request.getParameter("novilho_gordo_quant")));
        lv2p3.setTorunosquant(Integer.parseInt(request.getParameter("torunos_quant")));
        lv2p3.setTouroquant(Integer.parseInt(request.getParameter("touro_quant")));
        
        lv2p3.setTerneirovalor(Double.parseDouble(request.getParameter("terneiros_valor")));
        lv2p3.setTerneiravalor(Double.parseDouble(request.getParameter("terneiras_valor")));
        lv2p3.setNovilhavalor(Double.parseDouble(request.getParameter("novilhas_valor")));
        lv2p3.setVacadedescartevalor(Double.parseDouble(request.getParameter("vacas_de_descarte_valor")));
        lv2p3.setVacaprenhavalor(Double.parseDouble(request.getParameter("vaca_prenha_valor")));
        lv2p3.setVacacomcriavalor(Double.parseDouble(request.getParameter("vaca_com_cria_valor")));
        lv2p3.setVacagordavalor(Double.parseDouble(request.getParameter("vaca_gorda_valor")));
        lv2p3.setNovilhorecriavalor(Double.parseDouble(request.getParameter("novilho_pra_recria_valor")));
        lv2p3.setNovilhogordovalor(Double.parseDouble(request.getParameter("novilho_gordo_valor")));
        lv2p3.setTorunovalor(Double.parseDouble(request.getParameter("torunos_valor")));
        lv2p3.setTourovalor(Double.parseDouble(request.getParameter("touro_valor")));
        
        
        
        passos.getLv2p3dao().inserir(lv2p3);
        passos.setLv2p3(lv2p3);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv2p4.jsp");
        return;
    } else if (lv2p3 != null && request.getParameter("terneiros_quant") != null) {

        lv2p3.setTerneiroquant(Integer.parseInt(request.getParameter("terneiros_quant")));
        lv2p3.setTerneiraquant(Integer.parseInt(request.getParameter("terneiras_quant")));
        lv2p3.setNovilhaquant(Integer.parseInt(request.getParameter("novilhas_quant")));
        lv2p3.setVacadedescartequant(Integer.parseInt(request.getParameter("vacas_de_descarte_quant")));
        lv2p3.setVacaprenhasquant(Integer.parseInt(request.getParameter("vaca_prenha_quant")));
        lv2p3.setVacacomcriaquant(Integer.parseInt(request.getParameter("vaca_com_cria_quant")));
        lv2p3.setVacagordaquant(Integer.parseInt(request.getParameter("vaca_gorda_quant")));
        lv2p3.setNovilhorecriaquant(Integer.parseInt(request.getParameter("novilho_pra_recria_quant")));
        lv2p3.setNovilhogordoquant(Integer.parseInt(request.getParameter("novilho_gordo_quant")));
        lv2p3.setTorunosquant(Integer.parseInt(request.getParameter("torunos_quant")));
        lv2p3.setTouroquant(Integer.parseInt(request.getParameter("touro_quant")));
        
        lv2p3.setTerneirovalor(Double.parseDouble(request.getParameter("terneiros_valor")));
        lv2p3.setTerneiravalor(Double.parseDouble(request.getParameter("terneiras_valor")));
        lv2p3.setNovilhavalor(Double.parseDouble(request.getParameter("novilhas_valor")));
        lv2p3.setVacadedescartevalor(Double.parseDouble(request.getParameter("vacas_de_descarte_valor")));
        lv2p3.setVacaprenhavalor(Double.parseDouble(request.getParameter("vaca_prenha_valor")));
        lv2p3.setVacacomcriavalor(Double.parseDouble(request.getParameter("vaca_com_cria_valor")));
        lv2p3.setVacagordavalor(Double.parseDouble(request.getParameter("vaca_gorda_valor")));
        lv2p3.setNovilhorecriavalor(Double.parseDouble(request.getParameter("novilho_pra_recria_valor")));
        lv2p3.setNovilhogordovalor(Double.parseDouble(request.getParameter("novilho_gordo_valor")));
        lv2p3.setTorunovalor(Double.parseDouble(request.getParameter("torunos_valor")));
        lv2p3.setTourovalor(Double.parseDouble(request.getParameter("touro_valor")));
        
        passos.getLv2p3dao().atualizar(lv2p3);
        passos.setLv2p3(lv2p3);
        session.setAttribute("Passos", passos);
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
        <form action="lv2p3.jsp" method="post">
            <div class="row">

                <div class="col-md-6">

                    <h3>Cabeças</h3>

                    <label>Terneiros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneiroquant()%>" placeholder="Insira a quantidade de terneiros" name="terneiros_quant" max="1000000" min="0" required>
                    <label>Terneiras</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneiraquant()%>" placeholder="Insira a quantidade de terneiras" name="terneiras_quant" max="1000000" min="0" required>
                    <label>Novilhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhaquant()%>" placeholder="Insira a quantidade de novilhas" name="novilhas_quant" max="1000000" min="0" required>
                    <label>Vacas de Descarte</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacadedescartequant()%>" placeholder="Insira a quantidade de vacas de descarte" name="vacas_de_descarte_quant" max="1000000" min="0" required>


                    <label>Vacas Prenhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaprenhasquant()%>" placeholder="Insira a quantidade de vacas prenhas" name="vaca_prenha_quant" max="1000000" min="0" required>
                    <label>Vacas com Cria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacacomcriaquant()%>" placeholder="Insira a quantidade de vacas com cria" name="vaca_com_cria_quant" max="1000000" min="0" required>
                    <label>Vacas Gordas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacagordaquant()%>" placeholder="Insira a quantidade vacas gordas" name="vaca_gorda_quant" max="1000000" min="0" required>
                    <label>Novilhos para Recria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhorecriaquant()%>" placeholder="Insira a quantidade de novilhos para recria" name="novilho_pra_recria_quant" max="1000000" min="0" required>



                    <label>Novilhos Gordos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhogordoquant()%>" placeholder="Insira a quantidade de novilhos gordos" name="novilho_gordo_quant" max="1000000" min="0" required>
                    <label>Torunos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTorunosquant()%>" placeholder="Insira a quantidade de torunos" name="torunos_quant" max="1000000" min="0" required>
                    <label>Touros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTouroquant()%>" placeholder="Insira a quantidade de touros" name="touro_quant" max="1000000" min="0" required>


                </div>
                <div class="col-md-6">
                    <h3>Valor Unitário</h3>

                    <label>Terneiros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneirovalor()%>" placeholder="Insira o valor unitário por terneiro" name="terneiros_valor" max="1000000" min="0" required>
                    <label>Terneiras</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneiravalor()%>" placeholder="Insira o valor unitário por terneira" name="terneiras_valor" max="1000000" min="0" required>
                    <label>Novilhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhavalor()%>" placeholder="Insira o valor unitário por novilha" name="novilhas_valor" max="1000000" min="0" required>
                    <label>Vacas de Descarte</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacadedescartevalor()%>" placeholder="Insira o valor unitário por vaca de descarte" name="vacas_de_descarte_valor" max="1000000" min="0" required>


                    <label>Vacas Prenhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaprenhavalor()%>" placeholder="Insira o valor unitário por vaca prenha" name="vaca_prenha_valor" max="1000000" min="0" required>
                    <label>Vacas com Cria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacacomcriavalor()%>" placeholder="Insira o valor unitário por vaca com cria" name="vaca_com_cria_valor" max="1000000" min="0" required>
                    <label>Vacas Gordas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacagordavalor()%>" placeholder="Insira o valor unitário por vaca gorda" name="vaca_gorda_valor" max="1000000" min="0" required>
                    <label>Novilhos para Recria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhorecriavalor()%>" placeholder="Insira o valor unitário por novilho para recria" name="novilho_pra_recria_valor" max="1000000" min="0" required>



                    <label>Novilhos Gordos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhogordovalor()%>" placeholder="Insira o valor unitário por novilho gordo" name="novilho_gordo_valor" max="1000000" min="0" required>
                    <label>Torunos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTorunovalor()%>" placeholder="Insira o valor unitário por toruno" name="torunos_valor" max="1000000" min="0" required>
                    <label>Touros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTourovalor()%>" placeholder="Insira o valor unitário por touro" name="touro_valor" max="1000000" min="0" required>



                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 conteudo">
                    <button type="button" class="btn btn-block btn-danger">Calcular</button><br>
                    <div class="well well-sm">Total de Bovinos: </div>
                    <div class="well well-sm">Total de Receita de Bovinos:</div>

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
