<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Lv1p4"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv1.jsp"%>

<%    session.setAttribute("Link", 4);

    Passoslv1 passos = (Passoslv1) session.getAttribute("Passoslv1");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv1p4 lv1p4 = passos.getLv1p4dao().buscarPorPropriedade(id, ano);

    if (passos.getLv1p3() == null) {
        response.sendRedirect("lv1p3.jsp");
    }

    if (passos.getLv1p4() == null) {

        passos.setLv1p4(new Lv1p4(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv1p4 == null && request.getParameter("mao_de_obra") != null) {
        lv1p4 = new Lv1p4(id, ano);

        lv1p4.setMaoDeObra(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra")))));
        lv1p4.setMaquinas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("maquinas")))));
        lv1p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("medicamento")))));
        lv1p4.setPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem")))));
        lv1p4.setOutros(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outros")))));

        passos.getLv1p4dao().incluir(lv1p4);
        passos.setLv1p4(lv1p4);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1resultados.jsp");
        return;
    } else if (lv1p4 != null && request.getParameter("mao_de_obra") != null) {

        lv1p4.setMaoDeObra(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("mao_de_obra")))));
        lv1p4.setMaquinas(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("maquinas")))));
        lv1p4.setMedicamento(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("medicamento")))));
        lv1p4.setPastagem(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("pastagem")))));
        lv1p4.setOutros(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("outros")))));

        passos.getLv1p4dao().alterar(lv1p4);
        passos.setLv1p4(lv1p4);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1resultados.jsp");
        return;
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp" %>

        <%@include  file="../importacoes/subcabecalholv1.jsp" %>


    <hr>

    <%@include file="../importacoes/navegacaolv1.jsp"%>
    <div class="row" >

        <div class="form-group">
            <form action="lv1p4.jsp" onsubmit="return validarForm()" method="post">
                <div class="col-md-6">


                    <label>Medicamento <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv1p4().getMedicamento()%>" name="medicamento" title="Insira os Gastos com Medicamento da sua Propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                    </div>

                    <label>Mão de Obra <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv1p4().getMaoDeObra()%>" name="mao_de_obra" title="Insira os Gastos com Mão de Obra da sua Propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                    </div>
                    <label>Manutenção e Conservação <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv1p4().getMaquinas()%>"  name="maquinas" title="Insira os Gastos com Manutenção e Conservação de Máquinas e Benfeitorias da sua Propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                    </div>

                    <label>Pastagem e Suplementos <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv1p4().getPastagem()%>" name="pastagem" title="Insira os Gastos com Pastagem da sua Propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>
                    </div>

                    <label>Outras Despesas <span class="label-control"></span></label>
                    <div class="input-group">
                        <div class="input-group-addon">R$</div>
                        <input type="text" class="form-control" value="<%=passos.getLv1p4().getOutros()%>"  name="outros" title="Insira Quaisquer Outros Gastos da sua Propriedade">
                                <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span><br>
                    </div>
                    <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                    <a type="button" class="btn btn-danger btn-block" id="calcular" >Calcular</a><br>


                </div>

                <div class="col-md-6 conteudo" id="infocalculo" hidden  >

                    <div class="well well-sm" id="totalcustoproducao">
                        
                    </div>

                    <input type="submit" disabled class="btn btn-success btn-lg center-block" value="Resultados">

                </div>


            </form>


        </div>



    </div>
</div>
<script src="../js/calculos.js"></script>
<script src="../js/validarForm.js"></script>
<script>
                $(document).ready(function () {

                    lv1p4();

                });</script>

<script>$(document).ready(function () {
        $('.form-control').mask('0.000.000,00', {reverse: true});
    });</script>

</body>
</html>
