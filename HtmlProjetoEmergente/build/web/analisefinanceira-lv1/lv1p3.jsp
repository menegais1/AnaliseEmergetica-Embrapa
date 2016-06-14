<%@page import="modelo.Lv1p3"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<%    session.setAttribute("Link", 3);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv1p3 lv1p3 = passos.getLv1p3dao().buscarPorPropriedade(id, ano);

    if (passos.getLv1p3() == null) {

        passos.setLv1p3(new Lv1p3(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv1p3 == null && request.getParameter("receita_anual") != null) {
        lv1p3 = new Lv1p3(id, ano);

        lv1p3.setReceita_anual(Double.parseDouble(request.getParameter("receita_anual")));
        passos.getLv1p3dao().inserir(lv1p3);
        passos.setLv1p3(lv1p3);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1p4.jsp");
        return;
    } else if (lv1p3 != null && request.getParameter("receita_anual") != null) {

        lv1p3.setReceita_anual(Double.parseDouble(request.getParameter("receita_anual")));

        passos.getLv1p3dao().atualizar(lv1p3);
        passos.setLv1p3(lv1p3);
        session.setAttribute("Passos", passos);
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


    <hr>

    <%@include file="../importacoes/navegacaolv1.jsp"%>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <form action="lv1p3.jsp" method="post">
                    <label>Receita Anual de Bovinos: </label>
                    <input type="number" class="form-control" max="10000000" min="0" value="<%=passos.getLv1p3().getReceita_anual()%>" placeholder="Insira a receita anual de Bovinos de sua propriedade" name="receita_anual" required><br>
                    <input type="submit" class="btn btn-success btn-lg center-block" value="Próximo Passo">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
