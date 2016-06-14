<%@page import="modelo.Lv1p2"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<%    session.setAttribute("Link", 2);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv1p2 lv1p2 = passos.getLv1p2dao().buscarPorPropriedade(id, ano);

    if (passos.getLv1p2() == null) {

        passos.setLv1p2(new Lv1p2(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv1p2 == null && request.getParameter("vaca_de_cria") != null) {
        lv1p2 = new Lv1p2(id, ano);

        lv1p2.setVacadecria(Integer.parseInt(request.getParameter("vaca_de_cria")));
        lv1p2.setVacadedescarte(Integer.parseInt(request.getParameter("vaca_de_descarte")));
        lv1p2.setTouro(Integer.parseInt(request.getParameter("touro")));
        lv1p2.setTerneiro(Integer.parseInt(request.getParameter("terneiro")));
        lv1p2.setTerneira(Integer.parseInt(request.getParameter("terneira")));
        lv1p2.setNovilho36(Integer.parseInt(request.getParameter("novilho_36")));
        lv1p2.setNovilha36(Integer.parseInt(request.getParameter("novilha_36")));
        lv1p2.setNovilho2536(Integer.parseInt(request.getParameter("novilho_25a36")));
        lv1p2.setNovilha2536(Integer.parseInt(request.getParameter("novilha_25a36")));
        lv1p2.setNovilho1324(Integer.parseInt(request.getParameter("novilho_13a24")));
        lv1p2.setNovilha1324(Integer.parseInt(request.getParameter("novilha_13a24")));

        passos.getLv1p2dao().inserir(lv1p2);
        passos.setLv1p2(lv1p2);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1p3.jsp");
        return;
    } else if (lv1p2 != null && request.getParameter("vaca_de_cria") != null) {

        lv1p2.setVacadecria(Integer.parseInt(request.getParameter("vaca_de_cria")));
        lv1p2.setVacadedescarte(Integer.parseInt(request.getParameter("vaca_de_descarte")));
        lv1p2.setTouro(Integer.parseInt(request.getParameter("touro")));
        lv1p2.setTerneiro(Integer.parseInt(request.getParameter("terneiro")));
        lv1p2.setTerneira(Integer.parseInt(request.getParameter("terneira")));
        lv1p2.setNovilho36(Integer.parseInt(request.getParameter("novilho_36")));
        lv1p2.setNovilha36(Integer.parseInt(request.getParameter("novilha_36")));
        lv1p2.setNovilho2536(Integer.parseInt(request.getParameter("novilho_25a36")));
        lv1p2.setNovilha2536(Integer.parseInt(request.getParameter("novilha_25a36")));
        lv1p2.setNovilho1324(Integer.parseInt(request.getParameter("novilho_13a24")));
        lv1p2.setNovilha1324(Integer.parseInt(request.getParameter("novilha_13a24")));

        passos.getLv1p2dao().atualizar(lv1p2);
        passos.setLv1p2(lv1p2);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1p3.jsp");
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
                <form action="lv1p2.jsp" method="post">


                    <label>Vacas de cria</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getVacadecria()%>" placeholder="Insira a quantidade de vacas de cria em sua propriedade" max="1000000" min="0" name="vaca_de_cria" required>
                    <label>Vacas de descarte</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getVacadedescarte()%>" placeholder="Insira a quantidade de vacas de descarte em sua propriedade" max="1000000" min="0" name="vaca_de_descarte" required>
                    <label>Touros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getTouro()%>" placeholder="Insira a quantidade de touros em sua propriedade" max="1000000" min="0" name="touro" required>

                    <h3>Machos</h3>
                    <label>Terneiros</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getTerneiro()%>" placeholder="Insira a quantidade de terneiros em sua propriedade" max="1000000" min="0" name="terneiro" required>
                    <label>Novilhos: 13-24 meses</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getNovilho1324()%>" placeholder="Insira a quantidade de novilhos de 13 a 24 meses em sua propriedade" max="1000000" min="0" name="novilho_13a24" required>
                    <label>Novilhos: 25-36 meses</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getNovilho2536()%>" placeholder="Insira a quantidade de novilhos de 25 a 36 meses em sua propriedade" max="1000000" min="0" name="novilho_25a36" required>
                    <label>Novilhos: Mais de 36 meses</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getNovilho36()%>" placeholder="Insira a quantidade de novilhos com mais de 36 meses em sua propriedade" max="1000000" min="0" name="novilho_36" required>



                    <h3>Fêmeas</h3>
                    <label>Terneiras</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getTerneira()%>" placeholder="Insira a quantidade de terneiras em sua propriedade" max="1000000" min="0" name="terneira" required>
                    <label>Novilhas: 13-24 meses</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getNovilha1324()%>" placeholder="Insira a quantidade de novilhas de 13 a 24 meses em sua propriedade" max="1000000" min="0" name="novilha_13a24" required>
                    <label>Novilhas: 25-36 meses</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getNovilha2536()%>" placeholder="Insira a quantidade de novilhas de 25 a 36 meses em sua propriedade" max="1000000" min="0" name="novilha_25a36" required>
                    <label>Novilhas: Mais de 36 meses</label>
                    <input type="number" class="form-control" value="<%=passos.getLv1p2().getNovilha36()%>" placeholder="Insira a quantidade de novilhas com mais de 36 meses em sua propriedade" max="1000000" min="0" name="novilha_36" required><br>
                    <input type="submit" class="btn btn-success btn-lg center-block" value="Próximo Passo" >



                </form>
            </div>

        </div>

        <div class="col-md-6" id="infocalculo" >
            <button class="btn btn-danger btn-block" >Calcular</button><br>
            <div class="well well-sm">
                Total Machos: xx
            </div>
            <div class="well well-sm">
                Total Fêmeas: xx
            </div>
            <div class="well well-sm">
                Total Rebanho Bovino: xx
            </div>
            <div class="well well-sm">
                Total Rebanho com Atividade de Cria: xx
            </div>
        </div>

    </div>
</div>

</body>
</html>
