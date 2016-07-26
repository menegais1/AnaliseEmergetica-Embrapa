<%@page import="dao.Lv1p2DAO"%>
<%@page import="modelo.Lv1p2"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassoslv1.jsp"%>

<%    session.setAttribute("Link", 2);

    Passoslv1 passos = (Passoslv1) session.getAttribute("Passoslv1");

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Lv1p2 lv1p2 = passos.getLv1p2dao().buscarPorPropriedade(id, ano);

    if (passos.getLv1p1() == null) {
        response.sendRedirect("lv1p1.jsp");
    }

    if (passos.getLv1p2() == null) {

        passos.setLv1p2(new Lv1p2(id, ano));
        session.setAttribute("Passoslv1", passos);
    }

    if (lv1p2 == null && request.getParameter("vaca_de_cria") != null) {
        lv1p2 = new Lv1p2(id, ano);

        lv1p2.setVacaDeCria(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria"))));
        lv1p2.setVacaDeDescarte(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte"))));
        lv1p2.setTouro(Integer.parseInt(passos.conversor(request.getParameter("touro"))));
        lv1p2.setTerneiro(Integer.parseInt(passos.conversor(request.getParameter("terneiro"))));
        lv1p2.setTerneira(Integer.parseInt(passos.conversor(request.getParameter("terneira"))));
        lv1p2.setNovilho36(Integer.parseInt(passos.conversor(request.getParameter("novilho_36"))));
        lv1p2.setNovilha36(Integer.parseInt(passos.conversor(request.getParameter("novilha_36"))));
        lv1p2.setNovilho25a36(Integer.parseInt(passos.conversor(request.getParameter("novilho_25a36"))));
        lv1p2.setNovilha25a36(Integer.parseInt(passos.conversor(request.getParameter("novilha_25a36"))));
        lv1p2.setNovilho13a24(Integer.parseInt(passos.conversor(request.getParameter("novilho_13a24"))));
        lv1p2.setNovilha13a24(Integer.parseInt(passos.conversor(request.getParameter("novilha_13a24"))));

        passos.setLv1p2dao(new Lv1p2DAO());
        passos.getLv1p2dao().incluir(lv1p2);
        passos.setLv1p2(lv1p2);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1p3.jsp");
        return;
    } else if (lv1p2 != null && request.getParameter("vaca_de_cria") != null) {

        lv1p2.setVacaDeCria(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_cria"))));
        lv1p2.setVacaDeDescarte(Integer.parseInt(passos.conversor(request.getParameter("vaca_de_descarte"))));
        lv1p2.setTouro(Integer.parseInt(passos.conversor(request.getParameter("touro"))));
        lv1p2.setTerneiro(Integer.parseInt(passos.conversor(request.getParameter("terneiro"))));
        lv1p2.setTerneira(Integer.parseInt(passos.conversor(request.getParameter("terneira"))));
        lv1p2.setNovilho36(Integer.parseInt(passos.conversor(request.getParameter("novilho_36"))));
        lv1p2.setNovilha36(Integer.parseInt(passos.conversor(request.getParameter("novilha_36"))));
        lv1p2.setNovilho25a36(Integer.parseInt(passos.conversor(request.getParameter("novilho_25a36"))));
        lv1p2.setNovilha25a36(Integer.parseInt(passos.conversor(request.getParameter("novilha_25a36"))));
        lv1p2.setNovilho13a24(Integer.parseInt(passos.conversor(request.getParameter("novilho_13a24"))));
        lv1p2.setNovilha13a24(Integer.parseInt(passos.conversor(request.getParameter("novilha_13a24"))));

        passos.setLv1p2dao(new Lv1p2DAO());

        passos.getLv1p2dao().alterar(lv1p2);
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


    <div class="form-group">
        <form action="lv1p2.jsp" onsubmit="return validarForm()" method="post">
            <div class="row" >
                <div class="col-md-5">






                    <h3>Atividade de Cria</h3>
                    <label>Touros <span class="label-control"></span></label>
                    <input type="text" class="form-control" value="<%=passos.getLv1p2().getTouro()%>" placeholder="Insira a quantidade de touros em sua propriedade"  name="touro" >
                    <label>Terneiros <span class="label-control"></span></label>
                    <input type="text" class="form-control" value="<%=passos.getLv1p2().getTerneiro()%>" placeholder="Insira a quantidade de terneiros em sua propriedade" name="terneiro" >

                    <label>Vacas de cria <span class="label-control"></span></label>
                    <input type="text" class="form-control" value="<%=passos.getLv1p2().getVacaDeCria()%>" placeholder="Insira a quantidade de vacas de cria em sua propriedade"  name="vaca_de_cria" >
                    <label>Vacas de descarte <span class="label-control"></span></label>
                    <input type="text" class="form-control" value="<%=passos.getLv1p2().getVacaDeDescarte()%>" placeholder="Insira a quantidade de vacas de descarte em sua propriedade" name="vaca_de_descarte" >
                    <label>Terneiras <span class="label-control"></span></label>
                    <input type="text" class="form-control" value="<%=passos.getLv1p2().getTerneira()%>" placeholder="Insira a quantidade de terneiras em sua propriedade"  name="terneira" >
                </div>

                <div class="col-md-6 col-md-offset-1">
                    <div class="row">
                        <h3>Recria e Terminação</h3>
                        <div class="col-md-6">
                            <h4>Machos</h4>

                            <label>Novilhos: 13-24 meses <span class="label-control"></span></label>
                            <input type="text" class="form-control" value="<%=passos.getLv1p2().getNovilho13a24()%>" placeholder="Insira a quantidade de novilhos de 13 a 24 meses em sua propriedade"  name="novilho_13a24" >
                            <label>Novilhos: 25-36 meses <span class="label-control"></span></label>
                            <input type="text" class="form-control" value="<%=passos.getLv1p2().getNovilho25a36()%>" placeholder="Insira a quantidade de novilhos de 25 a 36 meses em sua propriedade"  name="novilho_25a36" >
                            <label>Novilhos: Mais de 36 meses <span class="label-control"></span></label>
                            <input type="text" class="form-control" value="<%=passos.getLv1p2().getNovilho36()%>" placeholder="Insira a quantidade de novilhos com mais de 36 meses em sua propriedade"  name="novilho_36" >
                        </div>
                        <div class="col-md-6">
                            <h4>Fêmeas</h4>
                            <label>Novilhas: 13-24 meses <span class="label-control"></span></label>
                            <input type="text" class="form-control" value="<%=passos.getLv1p2().getNovilha13a24()%>" placeholder="Insira a quantidade de novilhas de 13 a 24 meses em sua propriedade" name="novilha_13a24" >
                            <label>Novilhas: 25-36 meses <span class="label-control"></span></label>
                            <input type="text" class="form-control" value="<%=passos.getLv1p2().getNovilha25a36()%>" placeholder="Insira a quantidade de novilhas de 25 a 36 meses em sua propriedade"  name="novilha_25a36" >
                            <label>Novilhas: Mais de 36 meses <span class="label-control"></span></label>
                            <input type="text" class="form-control" value="<%=passos.getLv1p2().getNovilha36()%>" placeholder="Insira a quantidade de novilhas com mais de 36 meses em sua propriedade"  name="novilha_36" ><br>
                        </div>
                    </div>
                </div>

            </div>



            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <br>
                    <span class="glyphicon glyphicon-asterisk"></span><span style="color:red"> Todos os campos são obrigatórios</span><br><br>
                    <a class="btn btn-danger btn-block" id="calcular" href="#infocalculo" >Calcular</a>
                    <br/>
                </div>
            </div>



            <div class="row">
                <div class="col-md-6 col-md-offset-3" hidden id="infocalculo" >





                </div>

            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3" hidden id="botao" >



                    <input  type="submit" disabled class="btn btn-success btn-lg center-block" value="Próximo Passo" >

                </div>

            </div>
        </form>

    </div>






</div>


<script src="../js/calculos.js"></script>
<script src="../js/validarForm.js"></script>
<script>$(document).ready(function () {
                $('.form-control').mask('0.000.000', {reverse: true});
            });</script>
<script>
    $(document).ready(function () {

        lv1p2(<%=passos.getLv1p1().getAreaApro().doubleValue()%>);

    });</script>



</body>
</html>
