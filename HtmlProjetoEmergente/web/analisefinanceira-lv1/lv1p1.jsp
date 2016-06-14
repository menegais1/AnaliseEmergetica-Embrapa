<%@page import="modelo.Lv1p1"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>
<%@include file="../jsp/testepassos.jsp"%>

<%    
    
    session.setAttribute("Link", 1);


    Passos passos = (Passos) session.getAttribute("Passos");
    
    
    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv1p1 lv1p1 = passos.getLv1p1dao().buscarPorPropriedade(id, ano);

    
    if (passos.getLv1p1() == null) {
       
        passos.setLv1p1(new Lv1p1(id, ano));
        session.setAttribute("Passos", passos);
    }

    if (lv1p1 == null && request.getParameter("area_apro") != null) {
         lv1p1 = new Lv1p1(id, ano);
         
        lv1p1.setArea_apro(Double.parseDouble(request.getParameter("area_apro")));

        passos.getLv1p1dao().inserir(lv1p1);
        passos.setLv1p1(lv1p1);
        session.setAttribute("Passos", passos);
        response.sendRedirect("lv1p2.jsp");
        return;
    } else if (lv1p1 != null && request.getParameter("area_apro") != null) {

        lv1p1.setArea_apro(Double.parseDouble(request.getParameter("area_apro")));

        passos.getLv1p1dao().atualizar(lv1p1);
        passos.setLv1p1(lv1p1);
        session.setAttribute("Passos", passos);
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



    <hr>

    <%@include file="../importacoes/navegacaolv1.jsp"%>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <form action="lv1p1.jsp" method="post">
                    <label>Area Aproximada: </label>
                    <input type="number" value="<%=passos.getLv1p1().getArea_apro()%>" class="form-control" max="10000000" min="0" placeholder="Insira a area aproximada de sua propriedade em hectares" name="area_apro" required><br>
                    <input type="submit" class="btn btn-success btn-lg center-block" value="Próximo Passo">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>



