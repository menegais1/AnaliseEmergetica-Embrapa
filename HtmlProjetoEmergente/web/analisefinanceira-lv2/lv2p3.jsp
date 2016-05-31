
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp"%>
    <div class="container conteudo">


        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Análise Financeira</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4  well well-sm text-center nivel2">
                <h4>Propriedade: xxxxxxx</h4>
            </div>
            <div class="col-md-4 well well-sm text-center nivel2">
                <h4>Ano: xxxx</h4>
            </div>

            <div class="col-md-4 well well-sm text-center nivel2">
                <h4>Nivel: 2</h4>
            </div>
        </div>

        <hr>
        <%@include file="../importacoes/navegacaolv2.jsp"%>


        <div class="form-group">
            <form action="lv2p4.jsp" method="post">
                <div class="row">

                    <div class="col-md-6">

                        <h3>Cabeças</h3>

                        <label>Terneiros</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiros" name="terneiros_quant" max="1000000" min="0" required>
                        <label>Terneiras</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiras" name="terneiras_quant" max="1000000" min="0" required>
                        <label>Novilhas</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas" name="novilhas_quant" max="1000000" min="0" required>
                        <label>Vacas de Descarte</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de descarte" name="vacas_de_descarte_quant" max="1000000" min="0" required>


                        <label>Vacas Prenhas</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas prenhas" name="vaca_prenha_quant" max="1000000" min="0" required>
                        <label>Vacas com Cria</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas com cria" name="vaca_com_cria_quant" max="1000000" min="0" required>
                        <label>Vacas Gordas</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade vacas gordas" name="vaca_gorda_quant" max="1000000" min="0" required>
                        <label>Novilhos para Recria</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos para recria" name="novilho_pra_recria_quant" max="1000000" min="0" required>



                        <label>Novilhos Gordos</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos gordos" name="novilho_gordo_quant" max="1000000" min="0" required>
                        <label>Torunos</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de torunos" name="torunos_quant" max="1000000" min="0" required>
                        <label>Touros</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de touros" name="touro_quant" max="1000000" min="0" required>


                    </div>
                    <div class="col-md-6">
                        <h3>Valor Unitário</h3>

                        <label>Terneiros</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por terneiro" name="terneiros_valor" max="1000000" min="0" required>
                        <label>Terneiras</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por terneira" name="terneiras_valor" max="1000000" min="0" required>
                        <label>Novilhas</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por novilha" name="novilhas_valor" max="1000000" min="0" required>
                        <label>Vacas de Descarte</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por vaca de descarte" name="vacas_de_descarte_valor" max="1000000" min="0" required>


                        <label>Vacas Prenhas</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por vaca prenha" name="vaca_prenha_valor" max="1000000" min="0" required>
                        <label>Vacas com Cria</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por vaca com cria" name="vaca_com_cria_valor" max="1000000" min="0" required>
                        <label>Vacas Gordas</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por vaca gorda" name="vaca_gorda_valor" max="1000000" min="0" required>
                        <label>Novilhos para Recria</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por novilho para recria" name="novilho_pra_recria_valor" max="1000000" min="0" required>



                        <label>Novilhos Gordos</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por novilho gordo" name="novilho_gordo_valor" max="1000000" min="0" required>
                        <label>Torunos</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por toruno" name="torunos_valor" max="1000000" min="0" required>
                        <label>Touros</label>
                        <input type="number" class="form-control" placeholder="Insira o valor unitário por touro" name="touro_valor" max="1000000" min="0" required>



                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 conteudo">
                        <button class="btn btn-block btn-danger">Calcular</button><br>
                        <div class="well well-sm">Total de Bovinos: </div>
                        <div class="well well-sm">Total de Receita de Bovinos:</div>

                    </div>
                </div>
                <div class="row conteudo">
                    <div class="col-md-12">                   
                        <input type="submit" value="Próximo Passo" class="btn btn-success btn-lg center-block">
                    </div>
                </div>

            </form> 
        </div>



    </div>

</body>
</html>
