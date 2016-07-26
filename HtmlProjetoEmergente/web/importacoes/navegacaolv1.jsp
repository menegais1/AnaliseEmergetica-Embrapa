<%@page import="dao.Passoslv1"%>
<%

    String p2 = "", p3 = "", p4 = "", resul = "", p1a = "", p2a = "", p3a = "", p4a = "", resula = "";
    Integer porcento = 20;

    Passoslv1 passo = (Passoslv1) session.getAttribute("Passoslv1");

    if (session.getAttribute("Link") != null) {
        Integer link = Integer.parseInt(session.getAttribute("Link").toString());
        switch (link) {
            case 1: {
                p1a = "active";
                break;
            }
            case 2: {
                p2a = "active";

                break;
            }
            case 3: {
                p3a = "active";

                break;
            }
            case 4: {
                p4a = "active";

                break;
            }
            case 5: {
                resula = "active";

                break;
            }
        }
    }

    if (passo.getLv1p2() == null) {
        p2 = "disabled";
    } else {
        porcento = 40;
    }
    if (passo.getLv1p3() == null) {
        p3 = "disabled";
    } else {
        porcento = 60;
    }
    if (passo.getLv1p4() == null) {
        p4 = "disabled";
    } else {
        porcento = 80;
    }
    if (passo.getLv1resultado() == null) {
        resul = "disabled";
    } else {
        porcento = 100;
    }


%>


<div class="row">
    <%if (passo.getLv1p2() != null) {%>
    <div class="alert alert-info">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Dica!</strong> Passe o mouse sobre um passo já feito para ver informações adicionais.
    </div>

    <%}%>
    <div class="navegacao">
        <a  href="lv1p1.jsp">
            <div class="col-md-2 col-md-offset-1 text-center <%=p1a%> " id="passo1">

                <span class="glyphicon glyphicon-home"></span><br>
                <span>Passo 1</span>

            </div>

        </a>
    </div>


    <div class="navegacao">
        <!--CLASS="DISABLED"-->
        <a  class="<%=p2%>" href="lv1p2.jsp">
            <div class="col-md-2 text-center <%=p2a%>"id="passo2">

                <span class="glyphicon glyphicon-grain"></span><br>
                <span>Passo 2</span>

            </div>
        </a>
    </div>
    <div class="navegacao">
        <a class="<%=p3%>" href="lv1p3.jsp">
            <div class="col-md-2  text-center <%=p3a%> "id="passo3">


                <span class="glyphicon glyphicon-briefcase"></span><br>
                <span>Passo 3</span>

            </div>
        </a>
    </div>
    <div class="navegacao">
        <a class="<%=p4%>" href="lv1p4.jsp">
            <div class="col-md-2  text-center <%=p4a%> "id="passo4">

                <span class="glyphicon glyphicon-euro"></span><br>
                <span>Passo 4</span>

            </div>
        </a>
    </div>
    <div class="navegacao">
        <a class="<%=resul%>" href="lv1resultados.jsp">
            <div class="col-md-2 text-center <%=resula%> "id="resultado">

                <span class="glyphicon glyphicon-barcode"></span><br>
                <span>Resultados</span>

            </div>
        </a>
    </div>
</div>
<div class="row" id="parente">

    <%if (passo.getLv1p2() != null) {%>
    <div class="navegacao" id="filho1" hidden>
        <div class="col-md-2 col-md-offset-1 text-center  ">

            <br>
            <ul class="list-group">
                <li class="list-group-item list-group-item-success">Area Média: <span id="area"><%=passo.getLv1p1().getAreaApro().toPlainString()%></span> HM²</li>
            </ul>

            <br>
        </div>

    </div>
    <%}%>

    <%if (passo.getLv1p3() != null) {%>
    <div class="navegacao" id="filho2" hidden>
        <!--CLASS="DISABLED"-->

        <div class="col-md-2 text-center">

            <br>
            <ul class="list-group">
                <li class="list-group-item list-group-item-success">Lotação Média da Propriedade: <span id="lotacao"><%=passo.lotacaoMedia().toPlainString()%></span> Cabeças/HM²</li>
            </ul>
            <br>
        </div>

    </div>
    <%}%>

    <%if (passo.getLv1p4() != null) {%>
    <div class="navegacao" id="filho3"  hidden>
        <!--CLASS="DISABLED"-->

        <div class="col-md-2 text-center">

            <br>
            <ul class="list-group">
                <li class="list-group-item list-group-item-success">Receita por Hectare: <span id="receita"><%=passo.receitaHectare().toPlainString()%></span> R$/HM²</li>
            </ul>
            <br>
        </div>

    </div>
    <%}%>

    <%if (passo.getLv1resultado() != null) {%>
    <div class="navegacao" id="filho4"  hidden>
        <!--CLASS="DISABLED"-->

        <div class="col-md-2 text-center">

            <br>
            <ul class="list-group">
                <li class="list-group-item list-group-item-success">Custo por Hectare: <span id="custo"><%=passo.custoHectare().toPlainString()%></span> R$/HM²</li>
            </ul>
            <br>
        </div>

    </div>

    <div class="navegacao"  id="filho5"  hidden>
        <!--CLASS="DISABLED"-->

        <div class="col-md-2 text-center">

            <br>
            <ul class="list-group">
                <li class="list-group-item list-group-item-success">xxxxxxxxxx: 200</li>
            </ul>
            <br>
        </div>

    </div>
    <%}%>
</div>
<br>
<div class="row">
    <div class="col-md-12">
        <div class="progress">
            <div class="progress-bar progress-bar-info" style="width: <%=porcento%>%; z-index:1;">
                <span><%=porcento%>% Completo</span>
            </div>
        </div>
    </div>
</div>
<hr>

<script src="../js/infoNav.js"></script>

<script>$(document).ready(function () {
        $('#area').mask('0.000.000,00', {reverse: true});
         $('#lotacao').mask('0.000.000,00', {reverse: true});
          $('#receita').mask('0.000.000,00', {reverse: true});
           $('#custo').mask('0.000.000,00', {reverse: true});
    });</script>

