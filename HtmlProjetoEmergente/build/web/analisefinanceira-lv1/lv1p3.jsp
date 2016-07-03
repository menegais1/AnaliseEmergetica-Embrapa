<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Lv1p3"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv1.jsp"%>

<%    session.setAttribute("Link", 3);

    Passoslv1 passos = (Passoslv1) session.getAttribute("Passoslv1");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv1p3 lv1p3 = passos.getLv1p3dao().buscarPorPropriedade(id, ano);

    if(passos.getLv1p2()== null){
        response.sendRedirect("lv1p2.jsp");
    }
    
    if (passos.getLv1p3() == null) {

        passos.setLv1p3(new Lv1p3(id, ano));
        session.setAttribute("Passoslv1", passos);
    }

    if (lv1p3 == null && request.getParameter("receita_anual") != null) {
        lv1p3 = new Lv1p3(id, ano);

        lv1p3.setReceitaAnual(BigDecimal.valueOf(Double.parseDouble(request.getParameter("receita_anual"))));
        passos.getLv1p3dao().incluir(lv1p3);
        passos.setLv1p3(lv1p3);
        session.setAttribute("Passoslv1", passos);
        response.sendRedirect("lv1p4.jsp");
        return;
    } else if (lv1p3 != null && request.getParameter("receita_anual") != null) {

        lv1p3.setReceitaAnual(BigDecimal.valueOf(Double.parseDouble(request.getParameter("receita_anual"))));

        passos.getLv1p3dao().alterar(lv1p3);
        passos.setLv1p3(lv1p3);
        session.setAttribute("Passoslv1", passos);
        response.sendRedirect("lv1p4.jsp");
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
            <div class="form-group">
                <form action="lv1p3.jsp" onsubmit="return validarForm()" method="post">
                    <label>Receita Anual de Bovinos: <span class="label-control"></span> </label>
                    <input type="number" class="form-control" max="10000000" min="0" value="<%=passos.getLv1p3().getReceitaAnual()%>" placeholder="Insira a receita anual de Bovinos de sua propriedade" name="receita_anual"><br>
                    <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                    <input type="submit" class="btn btn-success btn-lg center-block" value="Próximo Passo">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
