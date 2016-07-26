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

    if (passos.getLv2p3() == null) {
        response.sendRedirect("lv2p3.jsp");
    }

    if (passos.getLv2p4() == null) {

        passos.setLv2p4(new Lv2p4(id, ano));
        session.setAttribute("Passoslv2", passos);
    }

    if (lv2p4 == null && request.getParameter("medicamento") != null) {
        lv2p4 = new Lv2p4(id, ano);

        lv2p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("medicamento")))));
        lv2p4.setCarrapaticidas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("carrapaticidas")))));
        lv2p4.setSal(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sal")))));
        lv2p4.setRacao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("racao")))));
        lv2p4.setCompraDeBovinos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("compra_de_bovinos")))));
        lv2p4.setUntensiliosDeUsoGeral(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("untensilios_de_uso_geral")))));
        lv2p4.setSemem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semem")))));
        lv2p4.setSemente(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semente")))));
        lv2p4.setDefensivosAgriParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("defensivos-agri_para_pastagem")))));
        lv2p4.setAdubosParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("adubos_para_pastagem")))));
        lv2p4.setCombustivel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("combustivel")))));
        lv2p4.setFrete(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("frete")))));
        lv2p4.setArrendamentosDeCampoNativo(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_campo_nativo")))));
        lv2p4.setArrendamentosDePastagemCultivada(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_pastagem_cultivada")))));
        lv2p4.setImpostos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("impostos")))));
        lv2p4.setOutrasDespesas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_despesas")))));
        lv2p4.setMaoDeObraFixa(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_fixa")))));
        lv2p4.setMaoDeObraVariavel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_variavel")))));
        lv2p4.setReparosDeMaquina(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparos_de_maquina")))));
        lv2p4.setReparoDeBenfeitorias(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparo_de_benfeitorias")))));

        passos.getLv2p4dao().incluir(lv2p4);
        passos.setLv2p4(lv2p4);
        session.setAttribute("Passoslv2", passos);
        response.sendRedirect("lv2resultados.jsp");
        return;
    } else if (lv2p4 != null && request.getParameter("medicamento") != null) {

        lv2p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("medicamento")))));
        lv2p4.setCarrapaticidas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("carrapaticidas")))));
        lv2p4.setSal(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("sal")))));
        lv2p4.setRacao(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("racao")))));
        lv2p4.setCompraDeBovinos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("compra_de_bovinos")))));
        lv2p4.setUntensiliosDeUsoGeral(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("untensilios_de_uso_geral")))));
        lv2p4.setSemem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semem")))));
        lv2p4.setSemente(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("semente")))));
        lv2p4.setDefensivosAgriParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("defensivos-agri_para_pastagem")))));
        lv2p4.setAdubosParaPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("adubos_para_pastagem")))));
        lv2p4.setCombustivel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("combustivel")))));
        lv2p4.setFrete(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("frete")))));
        lv2p4.setArrendamentosDeCampoNativo(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_campo_nativo")))));
        lv2p4.setArrendamentosDePastagemCultivada(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("arrendamentos_de_pastagem_cultivada")))));
        lv2p4.setImpostos(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("impostos")))));
        lv2p4.setOutrasDespesas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outras_despesas")))));
        lv2p4.setMaoDeObraFixa(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_fixa")))));
        lv2p4.setMaoDeObraVariavel(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra_variavel")))));
        lv2p4.setReparosDeMaquina(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparos_de_maquina")))));
        lv2p4.setReparoDeBenfeitorias(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("reparo_de_benfeitorias")))));

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
            <form action="lv2p4.jsp" onsubmit="return validarForm()" method="post">
                <div class="col-md-6">


                    <label>Medicamento <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getMedicamento()%>" placeholder="Insira o gasto com medicamentos em sua propriedade"  name="medicamento" required>
                    </div>
                    <label>Carrapaticidas <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getCarrapaticidas()%>" placeholder="Insira o gasto com carrapaticidas em sua propriedade"  name="carrapaticidas" required>
                    </div>
                    <label>Sal <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getSal()%>" placeholder="Insira o gasto com sal em sua propriedade"  name="sal" required>
                    </div>
                    <label>Ração <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getRacao()%>" placeholder="Insira o gasto com ração em sua propriedade"  name="racao" required>
                    </div>
                    <label>Compra de Bovinos <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getCompraDeBovinos()%>" placeholder="Insira o gasto com compras de bovinos  em sua propriedade"  name="compra_de_bovinos" required>
                    </div>
                    <label>Utensílios de Uso Geral  <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getUntensiliosDeUsoGeral()%>" placeholder="Insira o gasto com utensílios de uso geral em sua propriedade"  name="untensilios_de_uso_geral" required>
                    </div>
                    <label>Sêmen <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getSemem()%>" placeholder="Insira o gasto com sêmen em sua propriedade"  name="semem" required>
                    </div>
                    <label>Semente <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getSemente()%>" placeholder="Insira o gasto com semente em sua propriedade"  name="semente" required>
                    </div>
                    <label>Defensivos Agrícolas para Pastagem <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getDefensivosAgriParaPastagem()%>" placeholder="Insira o gasto com defensivos agrícolas em sua propriedade"  name="defensivos-agri_para_pastagem" required>
                    </div>
                    <label>Adubos para Pastagem <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getAdubosParaPastagem()%>" placeholder="Insira o gasto com adubos para pastagem em sua propriedade"  name="adubos_para_pastagem" required>
                    </div>
                    <label>Combustível <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getCombustivel()%>" placeholder="Insira o gasto com combustível em sua propriedade"  name="combustivel" required>
                    </div>
                    <label>Frete <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>

                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getFrete()%>" placeholder="Insira o gasto com fretes em sua propriedade"  name="frete" required>
                    </div>
                    <label>Arrendamentos de Campo Nativo <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getArrendamentosDeCampoNativo()%>" placeholder="Insira o gasto com arrendamentos de campo nativo em sua propriedade"  name="arrendamentos_de_campo_nativo" required>
                    </div>
                    <label>Arrendamentos de Pastagem Cultivada <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getArrendamentosDePastagemCultivada()%>" placeholder="Insira o gasto com arrendamentos de pastagem cultivada em sua propriedade"  name="arrendamentos_de_pastagem_cultivada" required>
                    </div>
                    <label>Impostos <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getImpostos()%>" placeholder="Insira o gasto com impostos em sua propriedade"  name="impostos" required>
                    </div>
                    <label>Outras Despesas <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control"value="<%=passos.getLv2p4().getOutrasDespesas()%>" placeholder="Insira o gasto com outras despesas em sua propriedade"  name="outras_despesas" required>

                    </div>

                    <label>Mão de Obra Fixa <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getMaoDeObraFixa()%>" placeholder="Insira o gasto com mão de obra em sua propriedade"  name="mao_de_obra_fixa" required>
                    </div>
                    <label>Mão de Obra Variavel <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getMaoDeObraVariavel()%>" placeholder="Insira o gasto com mão de obra em sua propriedade"  name="mao_de_obra_variavel" required>
                    </div>
                    <label>Reparos de Maquinas  <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getReparosDeMaquina()%>" placeholder="Insira o gasto em reparos de maquinas em sua propriedade"  name="reparos_de_maquina" required>
                    </div>
                    <label>Reparos de Benfeitorias <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv2p4().getReparoDeBenfeitorias()%>" placeholder="Insira o gasto em reparos de benfeitorias em sua propriedade"  name="reparo_de_benfeitorias" required>
                    </div>
                    <br/>
                    <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                    <a class="btn btn-danger btn-block" id="calcular" >Calcular</a><br/>

                </div>


                <div class="col-md-6 conteudo infocalculo" hidden id="infocalculo" >
                    <div class="infocalculo1">
                        <div class="well well-sm" id="totalcustoproducao">
                            Total Custos de Produção: 
                        </div>
                        <div class="well well-sm" id="custoatividadecria">
                            Custo Atividade de Cria: 
                        </div>
                        <div class="well well-sm" id="custoproducaohectar">
                            Custo de Produção por Hectare: 
                        </div>
                        <div class="well well-sm" id="custoterneiro">
                            Custo de Produção por Terneiro Desmamado: 
                        </div>
                        <input type="submit" disabled class="btn btn-success btn-lg center-block" value="Resultados">

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

        lv2p4(<%=passos.areaMedia()%>,<%=passos.getLv2p3().getTerneirosQuant()%>,<%=passos.percentualRebanhoComCria()%>);

    });</script>
</body>
</html>
