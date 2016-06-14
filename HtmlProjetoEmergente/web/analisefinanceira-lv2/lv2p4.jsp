<%@page import="modelo.Lv2p4"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<% session.setAttribute("Link", 4);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv2p4 lv2p4 = passos.getLv2p4dao().buscarPorPropriedade(id, ano);

    if (passos.getLv2p4() == null) {

        passos.setLv2p4(new Lv2p4(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv2p4 == null && request.getParameter("medicamento") != null) {
        lv2p4 = new Lv2p4(id, ano);

        lv2p4.setMedicamento(Double.parseDouble(request.getParameter("medicamento")));
        lv2p4.setCarrapaticida(Double.parseDouble(request.getParameter("carrapaticidas")));
        lv2p4.setSal(Double.parseDouble(request.getParameter("sal")));
        lv2p4.setRacao(Double.parseDouble(request.getParameter("racao")));
        lv2p4.setCompradebovinos(Double.parseDouble(request.getParameter("compra_de_bovinos")));
        lv2p4.setUntesilosdeusogeral(Double.parseDouble(request.getParameter("utensilios_de_uso_geral")));
        lv2p4.setSemem(Double.parseDouble(request.getParameter("semem")));
        lv2p4.setSemente(Double.parseDouble(request.getParameter("semente")));
        lv2p4.setDefensivoagriparapastagem(Double.parseDouble(request.getParameter("defensivos-agri_para_pastagem")));
        lv2p4.setAdubosparapastagem(Double.parseDouble(request.getParameter("adubos_para_pastagem")));
        lv2p4.setCombustivel(Double.parseDouble(request.getParameter("combustivel")));
        lv2p4.setFrete(Double.parseDouble(request.getParameter("frete")));
        lv2p4.setArrendamentocamponativo(Double.parseDouble(request.getParameter("arrendamentos_de_campo_nativo")));
        lv2p4.setArrendamentopastagemcultivada(Double.parseDouble(request.getParameter("arrendamentos_de_pastagem_cultivado")));
        lv2p4.setImposto(Double.parseDouble(request.getParameter("impostos")));
        lv2p4.setOutradespesas(Double.parseDouble(request.getParameter("outras_despesas")));
        lv2p4.setMaodeobrafixa(Double.parseDouble(request.getParameter("mao_de_obra_fixa")));
        lv2p4.setMaodeobravariavel(Double.parseDouble(request.getParameter("mao_de_obra_variavel")));
        lv2p4.setReparosmaquina(Double.parseDouble(request.getParameter("reparos_de_maquina")));
        lv2p4.setReparobanfeitoria(Double.parseDouble(request.getParameter("reparos_de_benfeitorias")));

        passos.getLv2p4dao().inserir(lv2p4);
        passos.setLv2p4(lv2p4);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv2resultados.jsp");
        return;
    } else if (lv2p4 != null && request.getParameter("medicamento") != null) {

        lv2p4.setMedicamento(Double.parseDouble(request.getParameter("medicamento")));
        lv2p4.setCarrapaticida(Double.parseDouble(request.getParameter("carrapaticidas")));
        lv2p4.setSal(Double.parseDouble(request.getParameter("sal")));
        lv2p4.setRacao(Double.parseDouble(request.getParameter("racao")));
        lv2p4.setCompradebovinos(Double.parseDouble(request.getParameter("compra_de_bovinos")));
        lv2p4.setUntesilosdeusogeral(Double.parseDouble(request.getParameter("utensilios_de_uso_geral")));
        lv2p4.setSemem(Double.parseDouble(request.getParameter("semem")));
        lv2p4.setSemente(Double.parseDouble(request.getParameter("semente")));
        lv2p4.setDefensivoagriparapastagem(Double.parseDouble(request.getParameter("defensivos-agri_para_pastagem")));
        lv2p4.setAdubosparapastagem(Double.parseDouble(request.getParameter("adubos_para_pastagem")));
        lv2p4.setCombustivel(Double.parseDouble(request.getParameter("combustivel")));
        lv2p4.setFrete(Double.parseDouble(request.getParameter("frete")));
        lv2p4.setArrendamentocamponativo(Double.parseDouble(request.getParameter("arrendamentos_de_campo_nativo")));
        lv2p4.setArrendamentopastagemcultivada(Double.parseDouble(request.getParameter("arrendamentos_de_pastagem_cultivado")));
        lv2p4.setImposto(Double.parseDouble(request.getParameter("impostos")));
        lv2p4.setOutradespesas(Double.parseDouble(request.getParameter("outras_despesas")));
        lv2p4.setMaodeobrafixa(Double.parseDouble(request.getParameter("mao_de_obra_fixa")));
        lv2p4.setMaodeobravariavel(Double.parseDouble(request.getParameter("mao_de_obra_variavel")));
        lv2p4.setReparosmaquina(Double.parseDouble(request.getParameter("reparos_de_maquina")));
        lv2p4.setReparobanfeitoria(Double.parseDouble(request.getParameter("reparos_de_benfeitorias")));
        
        
        passos.getLv2p4dao().atualizar(lv2p4);
        passos.setLv2p4(lv2p4);
        session.setAttribute("Passos", passos);
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
        <div class="col-md-6">
            <div class="form-group">
                <form action="lv2p4.jsp" method="post">


                    <label>Medicamento</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getMedicamento()%>" placeholder="Insira o gasto com medicamentos em sua propriedade" max="1000000" min="0" name="medicamento" required>
                    <label>Carrapaticidas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getCarrapaticida()%>" placeholder="Insira o gasto com carrapaticidas em sua propriedade" max="1000000" min="0" name="carrapaticidas" required>
                    <label>Sal</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getSal()%>" placeholder="Insira o gasto com sal em sua propriedade" max="1000000" min="0" name="sal" required>
                    <label>Ração</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getRacao()%>" placeholder="Insira o gasto com ração em sua propriedade" max="1000000" min="0" name="racao" required>
                    <label>Compra de Bovinos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getCompradebovinos()%>" placeholder="Insira o gasto com compras de bovinos  em sua propriedade" max="1000000" min="0" name="compra_de_bovinos" required>
                    <label>Utensílios de Uso Geral </label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getUntesilosdeusogeral()%>" placeholder="Insira o gasto com utensílios de uso geral em sua propriedade" max="1000000" min="0" name="utensilios_de_uso_geral" required>
                    <label>Sêmen</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getSemem()%>" placeholder="Insira o gasto com sêmen em sua propriedade" max="1000000" min="0" name="semem" required>
                    <label>Semente</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getSemente()%>" placeholder="Insira o gasto com semente em sua propriedade" max="1000000" min="0" name="semente" required>
                    <label>Defensivos Agrícolas para Pastagem</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getDefensivoagriparapastagem()%>" placeholder="Insira o gasto com defensivos agrícolas em sua propriedade" max="1000000" min="0" name="defensivos-agri_para_pastagem" required>
                    <label>Adubos para Pastagem</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getAdubosparapastagem()%>" placeholder="Insira o gasto com adubos para pastagem em sua propriedade" max="1000000" min="0" name="adubos_para_pastagem" required>
                    <label>Combustível</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getCombustivel()%>" placeholder="Insira o gasto com combustível em sua propriedade" max="1000000" min="0" name="combustivel" required>
                    <label>Frete</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getFrete()%>" placeholder="Insira o gasto com fretes em sua propriedade" max="1000000" min="0" name="frete" required>
                    <label>Arrendamentos de Campo Nativo</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getArrendamentocamponativo()%>" placeholder="Insira o gasto com arrendamentos de campo nativo em sua propriedade" max="1000000" min="0" name="arrendamentos_de_campo_nativo" required>
                    <label>Arrendamentos de Pastagem Cultivada</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getArrendamentopastagemcultivada()%>" placeholder="Insira o gasto com arrendamentos de pastagem cultivada em sua propriedade" max="1000000" min="0" name="arrendamentos_de_pastagem_cultivado" required>
                    <label>Impostos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getImposto()%>" placeholder="Insira o gasto com impostos em sua propriedade" max="1000000" min="0" name="impostos" required>
                    <label>Outras Despesas</label>
                    <input type="number" class="form-control"value="<%=passos.getLv2p4().getOutradespesas()%>" placeholder="Insira o gasto com outras despesas em sua propriedade" max="1000000" min="0" name="outras_despesas" required>



                    <label>Mão de Obra Fixa</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getMaodeobrafixa()%>" placeholder="Insira o gasto com mão de obra em sua propriedade" max="1000000" min="0" name="mao_de_obra_fixa" required>
                    <label>Mão de Obra Variavel</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getMaodeobravariavel()%>" placeholder="Insira o gasto com mão de obra em sua propriedade" max="1000000" min="0" name="mao_de_obra_variavel" required>
                    <label>Reparos de Maquinas </label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getReparosmaquina()%>" placeholder="Insira o gasto em reparos de maquinas em sua propriedade" max="1000000" min="0" name="reparos_de_maquina" required>
                    <label>Reparos de Benfeitorias</label>
                    <input type="number" class="form-control" value="<%=passos.getLv2p4().getReparobanfeitoria()%>" placeholder="Insira o gasto em reparos de benfeitorias em sua propriedade" max="1000000" min="0" name="reparos_de_benfeitorias" required>


                    <br>

                    <input type="submit" class="btn btn-success btn-lg center-block" value="Resultados">



                </form>
            </div>

        </div>
        <div id="infocalculo1">
            <div class="col-md-6 conteudo" id="infocalculo" >
                <button class="btn btn-danger btn-block" >Calcular</button><br>
                <div class="well well-sm">
                    Total Custos de Produção: xx
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>
