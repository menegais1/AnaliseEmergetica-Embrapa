
<%@page import="dao.Passoslv2"%>
<%@page import="dao.Passoslv1"%>
<%@page import="modelo.Propriedade"%>
<%@page import="dao.PropriedadeDAO"%>
<%@include file="../jsp/testelogin.jsp"%>
<%@include file="../jsp/testepropriedade.jsp"%>
<%@include file="../jsp/testeano.jsp"%>

<%    Propriedade p = new Propriedade();

    PropriedadeDAO dao = new PropriedadeDAO();
    p = dao.buscarPorChavePrimaria(Integer.parseInt(session.getAttribute("Propriedade_id").toString()));

    Integer id = Integer.parseInt(session.getAttribute("Propriedade_id").toString());
    String ano = session.getAttribute("Ano").toString();

    Passoslv1 passoslv1 = new Passoslv1();

    passoslv1.setLv1p1(passoslv1.getLv1p1dao().buscarPorPropriedade(id, ano));
    passoslv1.setLv1p2(passoslv1.getLv1p2dao().buscarPorPropriedade(id, ano));
    passoslv1.setLv1p3(passoslv1.getLv1p3dao().buscarPorPropriedade(id, ano));
    passoslv1.setLv1p4(passoslv1.getLv1p4dao().buscarPorPropriedade(id, ano));
    passoslv1.setLv1resultado(passoslv1.getLv1resultadodao().buscarPorPropriedade(id, ano));

    Integer porcento = 0, porcento1 = 0;

    if (passoslv1.getLv1p1() != null) {
        porcento = 20;
    }
    if (passoslv1.getLv1p2() != null) {
        porcento = 40;
    }
    if (passoslv1.getLv1p3() != null) {
        porcento = 60;
    }

    if (passoslv1.getLv1p4() != null) {
        porcento = 80;
    }
    if (passoslv1.getLv1resultado() != null) {
        porcento = 100;
    }

    Passoslv2 passoslv2 = new Passoslv2();

    passoslv2.setLv2p1(passoslv2.getLv2p1dao().buscarPorPropriedade(id, ano));
    passoslv2.setLv2p2(passoslv2.getLv2p2dao().buscarPorPropriedade(id, ano));
    passoslv2.setLv2p3(passoslv2.getLv2p3dao().buscarPorPropriedade(id, ano));
    passoslv2.setLv2p4(passoslv2.getLv2p4dao().buscarPorPropriedade(id, ano));
    passoslv2.setLv2resultado(passoslv2.getLv2resultadodao().buscarPorPropriedade(id, ano));

    if (passoslv2.getLv2p1() != null) {
        porcento1 = 20;
    }
    if (passoslv2.getLv2p2() != null) {
        porcento1 = 40;
    }
    if (passoslv2.getLv2p3() != null) {
        porcento1 = 60;
    }

    if (passoslv2.getLv2p4() != null) {
        porcento1 = 80;
    }
    if (passoslv2.getLv2resultado() != null) {
        porcento1 = 100;
    }

%> 

<%@include file="../importacoes/cabecalho.jsp"%>

<div class="container conteudo">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center">Análise Financeira</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 well well-sm text-center">
            <h4>Propriedade: <%=p.getNome()%></h4>
        </div>
        <div class="col-md-3  well well-sm text-center">
            <h4>Cidade: <%=p.getCidade()%></h4>
        </div>
        <div class="col-md-3  well well-sm text-center">
            <h4>UF: <%=p.getUf()%></h4>
        </div>
        <div class="col-md-3 well well-sm text-center">
            <h4>Ano: <%=session.getAttribute("Ano").toString()%></h4>
        </div>
    </div>

    <hr>
    <br>
    <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
            <h1>Escolha um nível para começar</h1>
        </div>
    </div>
    <br>

    <div class="row">

        <div class="navegacao">
            <a  href="../analisefinanceira-lv1/lv1escolha.jsp">
                <div class="col-md-2 col-md-offset-4 text-center lv">


                    <span>Nível 1</span>

                </div>

            </a>
        </div>

        <div class="navegacao">
            <a  href="../analisefinanceira-lv2/lv2escolha.jsp">
                <div class="col-md-2 text-center lv">


                    <span>Nível 2</span>

                </div>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 col-md-offset-4">
            <br>
            <span class="text-center">Completo:</span>

            <div class="progress">
                <div class="progress-bar progress-bar-info" style="width: <%=porcento%>%; z-index:1; color:black;">
                    <span><%=porcento%>%</span>
                </div>
            </div>
        </div>


        <div class="col-md-2">
            <br>
            <span class="text-center">Completo:</span>
            <div class="progress">
                <div class="progress-bar progress-bar-info" style="width: <%=porcento1%>%; z-index:1; color:black;">
                    <span><%=porcento1%>%</span>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    O que você encontrará em cada um dos níveis
                </div>
                <div class="panel-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et aliquam massa. Proin vitae massa augue. Proin condimentum quis magna vitae dapibus. Donec eu sem ipsum. Ut pretium congue imperdiet. Quisque a dictum mi. Praesent placerat a tellus ut porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="navegacao">
         <a href="lv1p3.jsp">
             <div class="col-md-2  text-center">


                 <span class="glyphicon glyphicon-briefcase"></span><br>
                 <span>Passo 3</span>

             </div>
         </a>
     </div>
     <div class="navegacao">
         <a  href="lv1p4.jsp">
             <div class="col-md-2  text-center ">

                 <span class="glyphicon glyphicon-euro"></span><br>
                 <span>Passo 4</span>

             </div>
         </a>
     </div>
     <div class="navegacao">
         <a  href="lv1resultados.jsp">
             <div class="col-md-2 text-center">

                 <span class="glyphicon glyphicon-barcode"></span><br>
                 <span>Resultados</span>

             </div>
         </a>
     </div>
    
    -->
</div>
<br>
<hr>

</div>