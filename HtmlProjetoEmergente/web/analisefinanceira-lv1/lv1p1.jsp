
<%@page import="dao.Lv1p1DAO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Lv1p1"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv1.jsp"%>

<%    session.setAttribute("Link", 1);

    Passoslv1 passos = (Passoslv1) session.getAttribute("Passoslv1");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv1p1 lv1p1 = passos.getLv1p1dao().buscarPorPropriedade(id, ano);

    if (passos.getLv1p1() == null) {

        passos.setLv1p1(new Lv1p1(id, ano));
        session.setAttribute("Passoslv1", passos);
    }

    if (lv1p1 == null && request.getParameter("area_apro") != null) {
        lv1p1 = new Lv1p1(id, ano);

        lv1p1.setAreaApro(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("area_apro")))));

        passos.getLv1p1dao().incluir(lv1p1);
        passos.setLv1p1(lv1p1);
        session.setAttribute("Passoslv1", passos);
        response.sendRedirect("lv1p2.jsp");
        return;
    } else if (lv1p1 != null && request.getParameter("area_apro") != null) {

        lv1p1.setAreaApro(BigDecimal.valueOf(Double.parseDouble(passos.conversor(request.getParameter("area_apro")))));

        passos.getLv1p1dao().alterar(lv1p1);
        passos.setLv1p1(lv1p1);
        session.setAttribute("Passoslv1", passos);
        response.sendRedirect("lv1p2.jsp");
        return;
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp" %>

        <%@include  file="../importacoes/subcabecalholv1.jsp" %>
        <script src="../js/validarForm.js"></script>


    <hr>

    <%@include file="../importacoes/navegacaolv1.jsp"%>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group has-feedback">
                <form action="lv1p1.jsp" onsubmit="return validarForm()" method="post">
                    <label>Area Aproximada: 
                        <span class="label-control"></span></label>
                    <div >
                        <div class="input-group">
                            <div class="input-group-addon ">ha</div>
                            <input type="text" autofocus value="<%=passos.getLv1p1().getAreaApro()%>"class="form-control "  name="area_apro"  title="Insira a Área Aproximada da sua Propriedade">
                            <span class="form-control-feedback glyphicon glyphicon-info-sign" ></span>



                        </div>

                    </div>
                    <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                    <input type="submit" class="btn btn-success btn-lg center-block" value="Próximo Passo">
                </form>
            </div>



        </div>
    </div>
</div>

<script>


    $(document).ready(function () {
        $('.form-control').mask("0.000.000,00", {reverse: true});

    });


</script>



</body>
</html>



