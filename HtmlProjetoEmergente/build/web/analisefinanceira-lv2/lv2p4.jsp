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

    if (passos.getLv2p4() == null) {

        passos.setLv2p4(new Lv2p4(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p4 == null && request.getParameter("medicamento") != null) {
        lv2p4 = new Lv2p4(id, ano);

        lv2p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(request.getParameter("medicamento"))));
        lv2p4.setCarrapaticidas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("carrapaticidas"))));
        lv2p4.setSal(BigDecimal.valueOf(Double.parseDouble(request.getParameter("sal"))));
        lv2p4.setRacao(BigDecimal.valueOf(Double.parseDouble(request.getParameter("racao"))));
        lv2p4.setCompraDeBovinos(BigDecimal.valueOf(Double.parseDouble(request.getParameter("compra_de_bovinos"))));
        lv2p4.setUntensiliosDeUsoGeral(BigDecimal.valueOf(Double.parseDouble(request.getParameter("untensilios_de_uso_geral"))));
        lv2p4.setSemem(BigDecimal.valueOf(Double.parseDouble(request.getParameter("semem"))));
        lv2p4.setSemente(BigDecimal.valueOf(Double.parseDouble(request.getParameter("semente"))));
        lv2p4.setDefensivosAgriParaPastagem(BigDecimal.valueOf(Double.parseDouble(request.getParameter("defensivos-agri_para_pastagem"))));
        lv2p4.setAdubosParaPastagem(BigDecimal.valueOf(Double.parseDouble(request.getParameter("adubos_para_pastagem"))));
        lv2p4.setCombustivel(BigDecimal.valueOf(Double.parseDouble(request.getParameter("combustivel"))));
        lv2p4.setFrete(BigDecimal.valueOf(Double.parseDouble(request.getParameter("frete"))));
        lv2p4.setArrendamentosDeCampoNativo(BigDecimal.valueOf(Double.parseDouble(request.getParameter("arrendamentos_de_campo_nativo"))));
        lv2p4.setArrendamentosDePastagemCultivada(BigDecimal.valueOf(Double.parseDouble(request.getParameter("arrendamentos_de_pastagem_cultivada"))));
        lv2p4.setImpostos(BigDecimal.valueOf(Double.parseDouble(request.getParameter("impostos"))));
        lv2p4.setOutrasDespesas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("outras_despesas"))));
        lv2p4.setMaoDeObraFixa(BigDecimal.valueOf(Double.parseDouble(request.getParameter("mao_de_obra_fixa"))));
        lv2p4.setMaoDeObraVariavel(BigDecimal.valueOf(Double.parseDouble(request.getParameter("mao_de_obra_variavel"))));
        lv2p4.setReparosDeMaquina(BigDecimal.valueOf(Double.parseDouble(request.getParameter("reparos_de_maquina"))));
        lv2p4.setReparoDeBenfeitorias(BigDecimal.valueOf(Double.parseDouble(request.getParameter("reparo_de_benfeitorias"))));

        passos.getLv2p4dao().incluir(lv2p4);
        passos.setLv2p4(lv2p4);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2resultados.jsp");
        return;
    } else if (lv2p4 != null && request.getParameter("medicamento") != null) {

        lv2p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(request.getParameter("medicamento"))));
        lv2p4.setCarrapaticidas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("carrapaticidas"))));
        lv2p4.setSal(BigDecimal.valueOf(Double.parseDouble(request.getParameter("sal"))));
        lv2p4.setRacao(BigDecimal.valueOf(Double.parseDouble(request.getParameter("racao"))));
        lv2p4.setCompraDeBovinos(BigDecimal.valueOf(Double.parseDouble(request.getParameter("compra_de_bovinos"))));
        lv2p4.setUntensiliosDeUsoGeral(BigDecimal.valueOf(Double.parseDouble(request.getParameter("untensilios_de_uso_geral"))));
        lv2p4.setSemem(BigDecimal.valueOf(Double.parseDouble(request.getParameter("semem"))));
        lv2p4.setSemente(BigDecimal.valueOf(Double.parseDouble(request.getParameter("semente"))));
        lv2p4.setDefensivosAgriParaPastagem(BigDecimal.valueOf(Double.parseDouble(request.getParameter("defensivos-agri_para_pastagem"))));
        lv2p4.setAdubosParaPastagem(BigDecimal.valueOf(Double.parseDouble(request.getParameter("adubos_para_pastagem"))));
        lv2p4.setCombustivel(BigDecimal.valueOf(Double.parseDouble(request.getParameter("combustivel"))));
        lv2p4.setFrete(BigDecimal.valueOf(Double.parseDouble(request.getParameter("frete"))));
        lv2p4.setArrendamentosDeCampoNativo(BigDecimal.valueOf(Double.parseDouble(request.getParameter("arrendamentos_de_campo_nativo"))));
        lv2p4.setArrendamentosDePastagemCultivada(BigDecimal.valueOf(Double.parseDouble(request.getParameter("arrendamentos_de_pastagem_cultivada"))));
        lv2p4.setImpostos(BigDecimal.valueOf(Double.parseDouble(request.getParameter("impostos"))));
        lv2p4.setOutrasDespesas(BigDecimal.valueOf(Double.parseDouble(request.getParameter("outras_despesas"))));
        lv2p4.setMaoDeObraFixa(BigDecimal.valueOf(Double.parseDouble(request.getParameter("mao_de_obra_fixa"))));
        lv2p4.setMaoDeObraVariavel(BigDecimal.valueOf(Double.parseDouble(request.getParameter("mao_de_obra_variavel"))));
        lv2p4.setReparosDeMaquina(BigDecimal.valueOf(Double.parseDouble(request.getParameter("reparos_de_maquina"))));
        lv2p4.setReparoDeBenfeitorias(BigDecimal.valueOf(Double.parseDouble(request.getParameter("reparo_de_benfeitorias"))));

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
            <form action="lv2p4.jsp" method="post">
                <div class="col-md-6">


                    <label>Medicamento</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getMedicamento()%>" placeholder="Insira o gasto com medicamentos em sua propriedade" max="1000000" min="0" name="medicamento" required>
                    <label>Carrapaticidas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getCarrapaticidas()%>" placeholder="Insira o gasto com carrapaticidas em sua propriedade" max="1000000" min="0" name="carrapaticidas" required>
                    <label>Sal</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getSal()%>" placeholder="Insira o gasto com sal em sua propriedade" max="1000000" min="0" name="sal" required>
                    <label>Ração</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getRacao()%>" placeholder="Insira o gasto com ração em sua propriedade" max="1000000" min="0" name="racao" required>
                    <label>Compra de Bovinos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getCompraDeBovinos()%>" placeholder="Insira o gasto com compras de bovinos  em sua propriedade" max="1000000" min="0" name="compra_de_bovinos" required>
                    <label>Utensílios de Uso Geral </label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getUntensiliosDeUsoGeral()%>" placeholder="Insira o gasto com utensílios de uso geral em sua propriedade" max="1000000" min="0" name="untensilios_de_uso_geral" required>
                    <label>Sêmen</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getSemem()%>" placeholder="Insira o gasto com sêmen em sua propriedade" max="1000000" min="0" name="semem" required>
                    <label>Semente</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getSemente()%>" placeholder="Insira o gasto com semente em sua propriedade" max="1000000" min="0" name="semente" required>
                    <label>Defensivos Agrícolas para Pastagem</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getDefensivosAgriParaPastagem()%>" placeholder="Insira o gasto com defensivos agrícolas em sua propriedade" max="1000000" min="0" name="defensivos-agri_para_pastagem" required>
                    <label>Adubos para Pastagem</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getAdubosParaPastagem()%>" placeholder="Insira o gasto com adubos para pastagem em sua propriedade" max="1000000" min="0" name="adubos_para_pastagem" required>
                    <label>Combustível</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getCombustivel()%>" placeholder="Insira o gasto com combustível em sua propriedade" max="1000000" min="0" name="combustivel" required>
                    <label>Frete</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getFrete()%>" placeholder="Insira o gasto com fretes em sua propriedade" max="1000000" min="0" name="frete" required>
                    <label>Arrendamentos de Campo Nativo</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getArrendamentosDeCampoNativo()%>" placeholder="Insira o gasto com arrendamentos de campo nativo em sua propriedade" max="1000000" min="0" name="arrendamentos_de_campo_nativo" required>
                    <label>Arrendamentos de Pastagem Cultivada</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getArrendamentosDePastagemCultivada()%>" placeholder="Insira o gasto com arrendamentos de pastagem cultivada em sua propriedade" max="1000000" min="0" name="arrendamentos_de_pastagem_cultivada" required>
                    <label>Impostos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getImpostos()%>" placeholder="Insira o gasto com impostos em sua propriedade" max="1000000" min="0" name="impostos" required>
                    <label>Outras Despesas</label>
                    <input type="number" class="form-control"value="<%=passos.getLv2p4().getOutrasDespesas()%>" placeholder="Insira o gasto com outras despesas em sua propriedade" max="1000000" min="0" name="outras_despesas" required>



                    <label>Mão de Obra Fixa</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getMaoDeObraFixa()%>" placeholder="Insira o gasto com mão de obra em sua propriedade" max="1000000" min="0" name="mao_de_obra_fixa" required>
                    <label>Mão de Obra Variavel</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getMaoDeObraVariavel()%>" placeholder="Insira o gasto com mão de obra em sua propriedade" max="1000000" min="0" name="mao_de_obra_variavel" required>
                    <label>Reparos de Maquinas </label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getReparosDeMaquina()%>" placeholder="Insira o gasto em reparos de maquinas em sua propriedade" max="1000000" min="0" name="reparos_de_maquina" required>
                    <label>Reparos de Benfeitorias</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getReparoDeBenfeitorias()%>" placeholder="Insira o gasto em reparos de benfeitorias em sua propriedade" max="1000000" min="0" name="reparo_de_benfeitorias" required>
                    <br/>
                    <button class="btn btn-danger btn-block" >Calcular</button><br/>

                </div>


                <div class="col-md-6 conteudo" id="infocalculo" >
                    <div id="infocalculo1">
                        <div class="well well-sm">
                            Total Custos de Produção: xx
                        </div>
                        <input type="submit" class="btn btn-success btn-lg center-block" value="Resultados">

                    </div>

                </div>



            </form>
        </div>



    </div>
</div>

</body>
</html>
