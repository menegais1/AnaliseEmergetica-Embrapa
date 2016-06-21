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

    if (passos.getLv2p3() == null) {

        passos.setLv2p3(new Lv2p3(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p3 == null && request.getParameter("terneiros_Quant") != null) {
        lv2p3 = new Lv2p3(id, ano);

        lv2p3.setTerneirosQuant(Integer.parseInt(request.getParameter("terneiros_Quant")));
        lv2p3.setTerneirasQuant(Integer.parseInt(request.getParameter("terneiras_Quant")));
        lv2p3.setNovilhasQuant(Integer.parseInt(request.getParameter("novilhas_Quant")));
        lv2p3.setVacasDeDescarteQuant(Integer.parseInt(request.getParameter("vacas_de_descarte_Quant")));
        lv2p3.setVacaPrenhaQuant(Integer.parseInt(request.getParameter("vaca_prenha_Quant")));
        lv2p3.setVacaComCriaQuant(Integer.parseInt(request.getParameter("vaca_com_cria_Quant")));
        lv2p3.setVacaGordaQuant(Integer.parseInt(request.getParameter("vaca_gorda_Quant")));
        lv2p3.setNovilhoPraRecriaQuant(Integer.parseInt(request.getParameter("novilho_pra_recria_Quant")));
        lv2p3.setNovilhoGordoQuant(Integer.parseInt(request.getParameter("novilho_gordo_Quant")));
        lv2p3.setTorunosQuant(Integer.parseInt(request.getParameter("torunos_Quant")));
        lv2p3.setTouroQuant(Integer.parseInt(request.getParameter("touro_Quant")));
        lv2p3.setTerneirosValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("terneiros_Valor"))));
        lv2p3.setTerneirasValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("terneiras_Valor"))));
        lv2p3.setNovilhasValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("novilhas_Valor"))));
        lv2p3.setVacasDeDescarteValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vacas_de_descarte_Valor"))));
        lv2p3.setVacaPrenhaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vaca_prenha_Valor"))));
        lv2p3.setVacaComCriaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vaca_com_cria_Valor"))));
        lv2p3.setVacaGordaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vaca_gorda_Valor"))));
        lv2p3.setNovilhoPraRecriaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("novilho_pra_recria_Valor"))));
        lv2p3.setNovilhoGordoValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("novilho_gordo_Valor"))));
        lv2p3.setTorunosValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("torunos_Valor"))));
        lv2p3.setTouroValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("touro_Valor"))));

        passos.getLv2p3dao().incluir(lv2p3);
        passos.setLv2p3(lv2p3);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2p4.jsp");
        return;
    } else if (lv2p3 != null && request.getParameter("terneiros_Quant") != null) {

        lv2p3.setTerneirosQuant(Integer.parseInt(request.getParameter("terneiros_Quant")));
        lv2p3.setTerneirasQuant(Integer.parseInt(request.getParameter("terneiras_Quant")));
        lv2p3.setNovilhasQuant(Integer.parseInt(request.getParameter("novilhas_Quant")));
        lv2p3.setVacasDeDescarteQuant(Integer.parseInt(request.getParameter("vacas_de_descarte_Quant")));
        lv2p3.setVacaPrenhaQuant(Integer.parseInt(request.getParameter("vaca_prenha_Quant")));
        lv2p3.setVacaComCriaQuant(Integer.parseInt(request.getParameter("vaca_com_cria_Quant")));
        lv2p3.setVacaGordaQuant(Integer.parseInt(request.getParameter("vaca_gorda_Quant")));
        lv2p3.setNovilhoPraRecriaQuant(Integer.parseInt(request.getParameter("novilho_pra_recria_Quant")));
        lv2p3.setNovilhoGordoQuant(Integer.parseInt(request.getParameter("novilho_gordo_Quant")));
        lv2p3.setTorunosQuant(Integer.parseInt(request.getParameter("torunos_Quant")));
        lv2p3.setTouroQuant(Integer.parseInt(request.getParameter("touro_Quant")));
        lv2p3.setTerneirosValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("terneiros_Valor"))));
        lv2p3.setTerneirasValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("terneiras_Valor"))));
        lv2p3.setNovilhasValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("novilhas_Valor"))));
        lv2p3.setVacasDeDescarteValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vacas_de_descarte_Valor"))));
        lv2p3.setVacaPrenhaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vaca_prenha_Valor"))));
        lv2p3.setVacaComCriaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vaca_com_cria_Valor"))));
        lv2p3.setVacaGordaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("vaca_gorda_Valor"))));
        lv2p3.setNovilhoPraRecriaValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("novilho_pra_recria_Valor"))));
        lv2p3.setNovilhoGordoValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("novilho_gordo_Valor"))));
        lv2p3.setTorunosValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("torunos_Valor"))));
        lv2p3.setTouroValor(BigDecimal.valueOf(Double.parseDouble(request.getParameter("touro_Valor"))));

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
        <form action="lv2p3.jsp" method="post">
            <div class="row">

                <div class="col-md-6">

                    <h3>Cabeças</h3>

                    <label>Terneiros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneirosQuant()%>" placeholder="Insira a quantidade de terneiros" name="terneiros_Quant" max="1000000" min="0" required>
                    <label>Terneiras</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneirasQuant()%>" placeholder="Insira a quantidade de terneiras" name="terneiras_Quant" max="1000000" min="0" required>
                    <label>Novilhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhasQuant()%>" placeholder="Insira a quantidade de novilhas" name="novilhas_Quant" max="1000000" min="0" required>
                    <label>Vacas de Descarte</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacasDeDescarteQuant()%>" placeholder="Insira a quantidade de vacas de descarte" name="vacas_de_descarte_Quant" max="1000000" min="0" required>


                    <label>Vacas Prenhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaPrenhaQuant()%>" placeholder="Insira a quantidade de vacas prenhas" name="vaca_prenha_Quant" max="1000000" min="0" required>
                    <label>Vacas com Cria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaComCriaQuant()%>" placeholder="Insira a quantidade de vacas com cria" name="vaca_com_cria_Quant" max="1000000" min="0" required>
                    <label>Vacas Gordas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaGordaQuant()%>" placeholder="Insira a quantidade vacas gordas" name="vaca_gorda_Quant" max="1000000" min="0" required>
                    <label>Novilhos para Recria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhoPraRecriaQuant()%>" placeholder="Insira a quantidade de novilhos para recria" name="novilho_pra_recria_Quant" max="1000000" min="0" required>



                    <label>Novilhos Gordos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhoGordoQuant()%>" placeholder="Insira a quantidade de novilhos gordos" name="novilho_gordo_Quant" max="1000000" min="0" required>
                    <label>Torunos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTorunosQuant()%>" placeholder="Insira a quantidade de torunos" name="torunos_Quant" max="1000000" min="0" required>
                    <label>Touros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTouroQuant()%>" placeholder="Insira a quantidade de touros" name="touro_Quant" max="1000000" min="0" required>


                </div>
                <div class="col-md-6">
                    <h3>Valor Unitário</h3>

                    <label>Terneiros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneirosValor()%>" placeholder="Insira o valor unitário por terneiro" name="terneiros_Valor" max="1000000" min="0" required>
                    <label>Terneiras</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTerneirasValor()%>" placeholder="Insira o valor unitário por terneira" name="terneiras_Valor" max="1000000" min="0" required>
                    <label>Novilhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhasValor()%>" placeholder="Insira o valor unitário por novilha" name="novilhas_Valor" max="1000000" min="0" required>
                    <label>Vacas de Descarte</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacasDeDescarteValor()%>" placeholder="Insira o valor unitário por vaca de descarte" name="vacas_de_descarte_Valor" max="1000000" min="0" required>


                    <label>Vacas Prenhas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaPrenhaValor()%>" placeholder="Insira o valor unitário por vaca prenha" name="vaca_prenha_Valor" max="1000000" min="0" required>
                    <label>Vacas com Cria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaComCriaValor()%>" placeholder="Insira o valor unitário por vaca com cria" name="vaca_com_cria_Valor" max="1000000" min="0" required>
                    <label>Vacas Gordas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getVacaGordaValor()%>" placeholder="Insira o valor unitário por vaca gorda" name="vaca_gorda_Valor" max="1000000" min="0" required>
                    <label>Novilhos para Recria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhoPraRecriaValor()%>" placeholder="Insira o valor unitário por novilho para recria" name="novilho_pra_recria_Valor" max="1000000" min="0" required>



                    <label>Novilhos Gordos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getNovilhoGordoValor()%>" placeholder="Insira o valor unitário por novilho gordo" name="novilho_gordo_Valor" max="1000000" min="0" required>
                    <label>Torunos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTorunosValor()%>" placeholder="Insira o valor unitário por toruno" name="torunos_Valor" max="1000000" min="0" required>
                    <label>Touros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p3().getTouroValor()%>" placeholder="Insira o valor unitário por touro" name="touro_Valor" max="1000000" min="0" required>


                    <br/>
                </div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <button type="button" class="btn btn-block btn-danger">Calcular</button><br>
                    </div>
                </div>          
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 conteudo">

                    <div class="well well-sm">Total de Bovinos: </div>
                    <div class="well well-sm">Total de Receita de Bovinos:</div>
                    <input type="submit" value="Próximo Passo" class="btn btn-success btn-lg center-block">

                </div>
            </div>


        </form> 
    </div>



</div>

</body>
</html>
