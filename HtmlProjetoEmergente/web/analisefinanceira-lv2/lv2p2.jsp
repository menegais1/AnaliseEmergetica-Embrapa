
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
            <form action="lv2p3.jsp" method="post">
                <div class="row">

                    <div class="col-md-6">

                        <h3>Vacas de Cria</h3>

                        <label>Vacas de Cria de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de cria de janeiro a março" name="vaca_de_cria_janmar" max="1000000" min="0" required>
                        <label>Vacas de Cria de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de cria de abril a junho" name="vaca_de_cria_abrjun" max="1000000" min="0" required>
                        <label>Vacas de Cria de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de cria de julho a setembro" name="vaca_de_cria_julset" max="1000000" min="0" required>
                        <label>Vacas de Cria de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de cria de outubro a dezembro" name="vaca_de_cria_outdez" max="1000000" min="0" required>

                        <h3>Vacas de Descarte</h3>

                        <label>Vacas de Descarte de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de descarte de janeiro a março" name="vaca_de_descarte_janmar" max="1000000" min="0" required>
                        <label>Vacas de Descarte de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de descarte de abril a junho" name="vaca_de_descarte_abrjun" max="1000000" min="0" required>
                        <label>Vacas de Descarte de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de descarte de julho a setembro" name="vaca_de_descarte_julset" max="1000000" min="0" required>
                        <label>Vacas de Descarte de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de vacas de descarte de outubro a dezembro" name="vaca_de_descarte_outdez" max="1000000" min="0" required>

                        <h3>Touros</h3>

                        <label>Touros de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de touros de janeiro a março" name="touro_janmar" max="1000000" min="0" required>
                        <label>Touros de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de touros de abril a junho" name="touro_abrjun" max="1000000" min="0" required>
                        <label>Touros de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de touros de julho a setembro" name="touro_julset" max="1000000" min="0" required>
                        <label>Touros de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de touros de outubro a dezembro" name="touro_outdez" max="1000000" min="0" required>

                        <h3>Terneiros</h3>

                        <label>Terneiros de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiros de janeiro a março" name="terneiros_janmar" max="1000000" min="0" required>
                        <label>Terneiros de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiros de abril a junho" name="terneiros_abrjun" max="1000000" min="0" required>
                        <label>Terneiros de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiros de julho a setembro" name="terneiros_julset" max="1000000" min="0" required>
                        <label>Terneiros de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiros de outubro a dezembro" name="terneiros_outdez" max="1000000" min="0" required>

                        <h3>Terneiras</h3>

                        <label>Terneiras de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiras de janeiro a março" name="terneiras_janmar" max="1000000" min="0" required>
                        <label>Terneiras de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiras de abril a junho" name="terneiras_abrjun" max="1000000" min="0" required>
                        <label>Terneiras de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiras de julho a setembro" name="terneiras_julset" max="1000000" min="0" required>
                        <label>Terneiras de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de terneiras de outubro a dezembro" name="terneiras_outdez" max="1000000" min="0" required>

                    </div>
                    <div class="col-md-6">
                        <h3>Novilhos: 13 a 24 Meses</h3>

                        <label>Novilhos: 13 a 24 Meses de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de janeiro a março" name="novilhos_13a24_janmar" max="1000000" min="0" required>
                        <label>Novilhos: 13 a 24 Meses de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de abril a junho" name="novilhos_13a24_abrjun" max="1000000" min="0" required>
                        <label>Novilhos: 13 a 24 Meses de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de julho a setembro" name="novilhos_13a24_julset" max="1000000" min="0" required>
                        <label>Novilhos: 13 a 24 Meses de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 13 a 24 Meses de outubro a dezembro" name="novilhos_13a24_outdez" max="1000000" min="0" required>

                        <h3>Novilhas: 13 a 24 Meses</h3>

                        <label>Novilhas: 13 a 24 Meses de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de janeiro a março" name="novilhas_13a24_janmar" max="1000000" min="0" required>
                        <label>Novilhas: 13 a 24 Meses de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de abril a junho" name="novilhas_13a24_abrjun" max="1000000" min="0" required>
                        <label>Novilhas: 13 a 24 Meses de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de julho a setembro" name="novilhas_13a24_julset" max="1000000" min="0" required>
                        <label>Novilhas: 13 a 24 Meses de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 13 a 24 Meses de outubro a dezembro" name="novilhas_13a24_outdez" max="1000000" min="0" required>

                        <h3>Novilhos: 25 a 36 Meses</h3>

                        <label>Novilhos: 25 a 36 Meses de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de janeiro a março" name="novilhos_25a36_janmar" max="1000000" min="0" required>
                        <label>Novilhos: 25 a 36 Meses de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de abril a junho" name="novilhos_25a36_abrjun" max="1000000" min="0" required>
                        <label>Novilhos: 25 a 36 Meses de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de julho a setembro" name="novilhos_25a36_julset" max="1000000" min="0" required>
                        <label>Novilhos: 25 a 36 Meses de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: 25 a 36 Meses de outubro a dezembro" name="novilhos_25a36_outdez" max="1000000" min="0" required>

                        <h3>Novilhas: 25 a 36 Meses</h3>

                        <label>Novilhas: 25 a 36 Meses de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de janeiro a março" name="novilhas_25a36_janmar" max="1000000" min="0" required>
                        <label>Novilhas: 25 a 36 Meses de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de abril a junho" name="novilhas_25a36_abrjun" max="1000000" min="0" required>
                        <label>Novilhas: 25 a 36 Meses de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de julho a setembro" name="novilhas_25a36_julset" max="1000000" min="0" required>
                        <label>Novilhas: 25 a 36 Meses de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhas: 25 a 36 Meses de outubro a dezembro" name="novilhas_25a36_outdez" max="1000000" min="0" required>

                        <h3>Novilhos: Mais de 36 Meses</h3>

                        <label>Novilhos: Mais de 36 Meses de Janeiro a Março</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: mais de 36 meses de janeiro a março" name="novilho_36_janmar" max="1000000" min="0" required>
                        <label>Novilhos: Mais de 36 Meses de Abril a Junho</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de abril a junho" name="novilho_36_abrjun" max="1000000" min="0" required>
                        <label>Novilhos: Mais de 36 Meses de Julho a Setembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de julho a setembro" name="novilho_36_julset" max="1000000" min="0" required>
                        <label>Novilhos: Mais de 36 Meses de Outubro a Dezembro</label>
                        <input type="number" class="form-control" placeholder="Insira a quantidade de novilhos: mais de 36 meses 25 a 36 Meses de outubro a dezembro" name="novilho_36_outdez" max="1000000" min="0" required>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 conteudo">
                        <button class="btn btn-block btn-danger">Calcular</button><br>
                        <div class="well well-sm">Total de Bovinos de Janeiro a Março: xx</div>
                        <div class="well well-sm">Total de Bovinos de Abril a Junho</div>
                        <div class="well well-sm">Total de Bovinos de Julho a Setembro</div>
                        <div class="well well-sm">Total de Bovinos de Outubro a Dezembro</div>
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
