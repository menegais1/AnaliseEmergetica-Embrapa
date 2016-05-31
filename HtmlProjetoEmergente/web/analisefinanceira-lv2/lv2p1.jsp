
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

        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <form action="lv2p2.jsp" method="post">
                        <label>Pastagem Nativa</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de pastagens nativas em sua propriedade" class="form-control" name="pastagem_nativa" required>
                        <label>Pastagem Nativa Melhorada</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de pastagens nativas melhoradas em sua propriedade" class="form-control" name="pastagem_nativa_melhorada" required>
                        <label>Pastagem Cultivada Perene</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de pastagens cultivadas perenes em sua propriedade" class="form-control" name="pastagem_cultivada_perene" required>
                        <label>Pastagem Anual de Inverno</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de pastagens anuais de inverno em sua propriedade" class="form-control" name="pastagem_anuais_de_verao" required>
                        <label>Pastagem Anual de Verão</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de pastagens anuais de verão em sua propriedade" class="form-control" name="pastagem_anuais_de_inverno" required>
                        <label>Agricultura de Inverno</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de agricultura de inverno em sua propriedade" class="form-control" name="agricultura_i" required>
                        <label>Agricultura de Verão</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de agricultura de verão em sua propriedade" class="form-control" name="agricultura_v" required>
                        <label>Florestas Plantadas</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de florestas plantadas em sua propriedade" class="form-control" name="florestas_plantadas" required>
                        <label>Matas Nativas</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de matas nativas em sua propriedade" class="form-control" name="matas_nativas" required>
                        <label>Outras culturas</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de outras culturas em sua propriedade" class="form-control" name="outras_culturas" required>
                        <label>Sede, Estradas e Açudes</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de sede,estradas e açudes em sua propriedade" class="form-control" name="sea" required>
                        <label>Inaproveitavel</label>
                        <input type="number" max="10000000" min="0" placeholder="Insira a quantidade (em Hectares) de terreno inaproveitável em sua propriedade" class="form-control" name="inaproveitavel" required><br>
                        <input type="submit" value="Próximo Passo" class="btn btn-lg btn-success center-block">

                    </form>
                </div>
            </div>
            <div class="col-md-6" id="infocalculo">
                <button class="btn btn-block btn-danger">Calcular</button><br>
                <div class="well well-sm">
                    Área Total da Pecúaria: xx
                </div>
                <div class="well well-sm">
                    Total de Área Aproveitável: xx
                </div>
                <div class="well well-sm">
                    Área Total: xx
                </div>  
            </div>
        </div>
    </div>
</body>
</html>
