<%@page import="modelo.Lv1p4"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<%    session.setAttribute("Link", 4);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv1p4 lv1p4 = passos.getLv1p4dao().buscarPorPropriedade(id, ano);

    if (passos.getLv1p4() == null) {

        passos.setLv1p4(new Lv1p4(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv1p4 == null && request.getParameter("mao_de_obra") != null) {
        lv1p4 = new Lv1p4(id, ano);

        lv1p4.setMao_de_obra(Double.parseDouble(request.getParameter("mao_de_obra")));
        lv1p4.setMaquinas(Double.parseDouble(request.getParameter("maquinas")));
        lv1p4.setMedicamento(Double.parseDouble(request.getParameter("medicamento")));
        lv1p4.setPastagem(Double.parseDouble(request.getParameter("pastagem")));
        lv1p4.setOutros(Double.parseDouble(request.getParameter("outros")));

        passos.getLv1p4dao().inserir(lv1p4);
        passos.setLv1p4(lv1p4);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1resultados.jsp");
        return;
    } else if (lv1p4 != null && request.getParameter("mao_de_obra") != null) {

        lv1p4.setMao_de_obra(Double.parseDouble(request.getParameter("mao_de_obra")));
        lv1p4.setMaquinas(Double.parseDouble(request.getParameter("maquinas")));
        lv1p4.setMedicamento(Double.parseDouble(request.getParameter("medicamento")));
        lv1p4.setPastagem(Double.parseDouble(request.getParameter("pastagem")));
        lv1p4.setOutros(Double.parseDouble(request.getParameter("outros")));

        passos.getLv1p4dao().atualizar(lv1p4);
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
        <div class="col-md-6">
            <div class="form-group">
                <form action="lv1p4.jsp" method="post">


                    <label>Medicamento</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p4().getMedicamento()%>" placeholder="Insira o gasto com medicamentos em sua propriedade" max="1000000" min="0" name="medicamento" required>
                    <label>Mão de Obra</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p4().getMao_de_obra()%>" placeholder="Insira o gasto com mão de obra em sua propriedade" max="1000000" min="0" name="mao_de_obra" required>
                    <label>Maquinas e Benfeitorias</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p4().getMaquinas()%>" placeholder="Insira o gasto em maquinários e benfeitorias em sua propriedade" max="1000000" min="0" name="maquinas" required>


                    <label>Pastagem e Suplementos</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p4().getPastagem()%>" placeholder="Insira o gasto com pastagem e suplementos em sua propriedade" max="1000000" min="0" name="pastagem" required>
                    <label>Outras Despesas</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p4().getOutros()%>" placeholder="Insira outras despesas em sua propriedade" max="1000000" min="0" name="outros" required><br>

                    <input type="submit" class="btn btn-success btn-lg center-block" value="Resultados">



                </form>
            </div>

        </div>

        <div class="col-md-6 conteudo"  >
            <button class="btn btn-danger btn-block" >Calcular</button><br>
            <div class="well well-sm">
                Total Custos de Produção: xx
            </div>

        </div>

    </div>
</div>

</body>
</html>
