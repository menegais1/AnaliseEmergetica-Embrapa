<%@page import="dao.Passoslv2"%>
<%

    String p2 = "", p3 = "", p4 = "", resul = "", p1a = "", p2a = "", p3a = "", p4a = "", resula = "";
    Integer porcento = 20;

    Passoslv2 passo = (Passoslv2) session.getAttribute("Passoslv2");

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

    if (passo.getLv2p2() == null) {
        p2 = "disabled";
    } else {
        porcento = 40;
    }
    if (passo.getLv2p3() == null) {
        p3 = "disabled";
    } else {
        porcento = 60;
    }
    if (passo.getLv2p4() == null) {
        p4 = "disabled";
    } else {
        porcento = 80;
    }
    if (passo.getLv2resultado() == null) {
        resul = "disabled";
    } else {
        porcento = 100;
    }


%>


<div class="row">

    <div class="navegacao">
        <a  href="lv2p1.jsp">
            <div class="col-md-2 col-md-offset-1 text-center <%=p1a%>">

                <span class="glyphicon glyphicon-home"></span><br>
                <span>Passo 1</span>

            </div>
        </a>
    </div>

    <div class="navegacao">
        <!--CLASS="DISABLED"-->
        <a  class="<%=p2%>" href="lv2p2.jsp">
            <div class="col-md-2 text-center <%=p2a%>">

                <span class="glyphicon glyphicon-grain"></span><br>
                <span>Passo 2</span>

            </div>
        </a>
    </div>
    <div class="navegacao">
        <a class="<%=p3%>" href="lv2p3.jsp">
            <div class="col-md-2  text-center <%=p3a%>">


                <span class="glyphicon glyphicon-briefcase"></span><br>
                <span>Passo 3</span>

            </div>
        </a>
    </div>
    <div class="navegacao">
        <a class="<%=p4%>" href="lv2p4.jsp">
            <div class="col-md-2  text-center <%=p4a%>">

                <span class="glyphicon glyphicon-euro"></span><br>
                <span>Passo 4</span>

            </div>
        </a>
    </div>
    <div class="navegacao">
        <a class="<%=resul%>" href="lv2resultados.jsp">
            <div class="col-md-2 text-center <%=resula%> ">

                <span class="glyphicon glyphicon-barcode"></span><br>
                <span>Resultados</span>

            </div>
        </a>
    </div>
</div>
<br>
<div class="row">
    <div class="col-md-12">
        <div class="progress">
            <div class="progress-bar progress-bar-success" style="width: <%=porcento%>%;">
                <span><%=porcento%>% Completo</span>
            </div>
        </div>
    </div>
</div>
<hr>