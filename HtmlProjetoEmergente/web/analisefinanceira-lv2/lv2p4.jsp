
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../importacoes/cabecalho.jsp" %>
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
        <div class="row" >
            <div class="col-md-6">
                <div class="form-group">
                    <form action="lv2resultados.jsp" method="post">


                        <label>Medicamento</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com medicamentos em sua propriedade" max="1000000" min="0" name="medicamento" required>
                        <label>Carrapaticidas</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com carrapaticidas em sua propriedade" max="1000000" min="0" name="carrapaticidas" required>
                        <label>Sal</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com sal em sua propriedade" max="1000000" min="0" name="sal" required>
                        <label>Ração</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com ração em sua propriedade" max="1000000" min="0" name="racao" required>
                        <label>Compra de Bovinos</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com compras de bovinos  em sua propriedade" max="1000000" min="0" name="compra_de_bovinos" required>
                        <label>Utensílios de Uso Geral </label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com utensílios de uso geral em sua propriedade" max="1000000" min="0" name="utensilios_de_uso_geral" required>
                        <label>Sêmen</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com sêmen em sua propriedade" max="1000000" min="0" name="semem" required>
                        <label>Semente</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com semente em sua propriedade" max="1000000" min="0" name="semente" required>
                        <label>Defensivos Agrícolas para Pastagem</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com defensivos agrícolas em sua propriedade" max="1000000" min="0" name="defensivos-agri_para_pastagem" required>
                        <label>Adubos para Pastagem</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com adubos para pastagem em sua propriedade" max="1000000" min="0" name="adubos_para_pastagem" required>
                        <label>Combustível</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com combustível em sua propriedade" max="1000000" min="0" name="combustivel" required>
                        <label>Frete</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com fretes em sua propriedade" max="1000000" min="0" name="frete" required>
                        <label>Arrendamentos de Campo Nativo</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com arrendamentos de campo nativo em sua propriedade" max="1000000" min="0" name="arrendamentos_de_campo_nativo" required>
                        <label>Arrendamentos de Pastagem Cultivada</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com arrendamentos de pastagem cultivada em sua propriedade" max="1000000" min="0" name="arrendamentos_de_pastagem_cultivado" required>
                        <label>Impostos</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com impostos em sua propriedade" max="1000000" min="0" name="impostos" required>
                        <label>Outras Despesas</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com outras despesas em sua propriedade" max="1000000" min="0" name="outras_despesas" required>



                        <label>Mão de Obra Fixa</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com mão de obra em sua propriedade" max="1000000" min="0" name="mao_de_obra_fixa" required>
                        <label>Mão de Obra Variavel</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto com mão de obra em sua propriedade" max="1000000" min="0" name="mao_de_obra_variavel" required>
                        <label>Reparos de Maquinas </label>
                        <input type="number" class="form-control" placeholder="Insira o gasto em reparos de maquinas em sua propriedade" max="1000000" min="0" name="reparos_de_maquina" required>
                        <label>Reparos de Benfeitorias</label>
                        <input type="number" class="form-control" placeholder="Insira o gasto em reparos de benfeitorias em sua propriedade" max="1000000" min="0" name="reparos_de_benfeitorias" required>


                        <br>

                        <input type="submit" class="btn btn-success btn-lg center-block" value="Resultados">



                    </form>
                </div>

            </div>
            <div id="infocalculo1">
                <div class="col-md-6 conteudo" id="infocalculo" >
                    <button class="btn btn-danger btn-block" >Calcular</button><br>
                    <div class="well well-sm">
                        Total Custos de Produção: xx
                    </div>

                </div>

            </div>
        </div>
    </div>

</body>
</html>
