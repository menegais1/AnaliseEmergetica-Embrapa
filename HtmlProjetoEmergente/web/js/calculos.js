



function lv1p2(area) {
    var cont = 0;
    $("[type=submit]").prop("disabled", true);

    $("#calcular").click(function () {
        if (cont === 0) {
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalm = 0;
                var totalf = 0;
                var totalcria = 0;
                var total = 0;
                var lotacaomedia = 0;
                for (i = 0; i < x.length; i++) {
                    if (i < 5) {

                        totalm += parseInt(x[i].value);

                    }

                    if (i >= 5) {
                        totalf += parseInt(x[i].value);
                    }

                    if (i === 0 || i === 1 || i >= 5 && i <= 7) {
                        totalcria += parseInt(x[i].value);

                    }
                    total += parseInt(x[i].value);

                }
                lotacaomedia = total / area;
                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("totalm").innerHTML += " " + totalm + " Cabeças";
                document.getElementById("totalf").innerHTML += " " + totalf + " Cabeças";
                document.getElementById("totalcria").innerHTML += " " + totalcria + " Cabeças";
                document.getElementById("total").innerHTML += " " + total + " Cabeças";
                document.getElementById("lotacaomedia").innerHTML += " " + lotacaomedia + " Cabeça(s) por Hectare";
                $("[type=submit]").prop("disabled", false);
                cont = 1;
                $("#calcular").attr("href", null);
            }
        } else {
            $("[type=submit]").prop("disabled", true);
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalm = 0;
                var totalf = 0;
                var totalcria = 0;
                var total = 0;
                var lotacaomedia = 0;
                for (i = 0; i < x.length; i++) {
                    if (i < 5) {

                        totalm += parseInt(x[i].value);

                    }

                    if (i >= 5) {
                        totalf += parseInt(x[i].value);
                    }

                    if (i === 0 || i === 1 || i >= 5 && i <= 7) {
                        totalcria += parseInt(x[i].value);

                    }
                    total += parseInt(x[i].value);


                }
                lotacaomedia = total / area;
                document.getElementById("totalm").innerHTML = "Total Machos: " + totalm + " Cabeças";
                document.getElementById("totalf").innerHTML = "Total Fêmeas: " + totalf + " Cabeças";
                document.getElementById("totalcria").innerHTML = "Total Rebanho com Atividade de Cria: " + totalcria + " Cabeças";
                document.getElementById("total").innerHTML = "Total Rebanho Bovino: " + total + " Cabeças";
                document.getElementById("lotacaomedia").innerHTML = "Lotação Média da Propriedade: " + lotacaomedia + " Cabeça(s) por Hectare";

                $("#calcular").attr("href", null);
                $("[type=submit]").prop("disabled", false);
            }

        }

    });


}
;

function lv1p4() {
    var cont = 0;
    $("[type=submit]").prop("disabled", true);

    $("#calcular").click(function () {
        if (cont === 0) {
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalcustoproducao = 0;

                for (i = 0; i < x.length; i++) {

                    totalcustoproducao += parseInt(x[i].value);


                }
                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("totalcustoproducao").innerHTML += " " + totalcustoproducao + " R$";

                $("[type=submit]").prop("disabled", false);
                cont = 1;
                $("#calcular").attr("href", null);
            }
        } else {
            $("[type=submit]").prop("disabled", true);
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalcustoproducao = 0;

                for (i = 0; i < x.length; i++) {

                    totalcustoproducao += parseInt(x[i].value);


                }
                document.getElementById("totalcustoproducao").innerHTML = "Total Custos de Produção: " + totalcustoproducao + " R$";

                $("#calcular").attr("href", null);
                $("[type=submit]").prop("disabled", false);
            }

        }

    });
}
;


function lv2p1() {
    var cont = 0;
    $("[type=submit]").prop("disabled", true);

    $("#calcular").click(function () {
        if (cont === 0) {
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var areatotalpecuariainverno = 0;
                var areatotalpecuariaverao = 0;
                var areaaproveitavelinverno = 0;
                var areaaproveitavelverao = 0;
                var areatotal = 0;
                var areamedia = 0;

                for (i = 0; i < x.length; i++) {

                    if (i <= 2) {
                        areatotalpecuariainverno += parseInt(x[i].value);
                        areatotalpecuariaverao += parseInt(x[i].value);
                    }
                    if (i === 3) {
                        areatotalpecuariainverno += parseInt(x[i].value);
                    }
                    if (i === 4) {
                        areatotalpecuariaverao += parseInt(x[i].value);
                    }
                    if (i === 5) {
                        areaaproveitavelinverno += parseInt(x[i].value);
                    }
                    if (i === 6) {
                        areaaproveitavelverao += parseInt(x[i].value);
                    }

                    if (i === 7 || i === 9) {
                        areaaproveitavelinverno += parseInt(x[i].value);
                        areaaproveitavelverao += parseInt(x[i].value);
                    }


                    if (i === 8 || i === 10 || i === 11) {
                        areatotal += parseInt(x[i].value);
                    }


                }


                areaaproveitavelinverno += areatotalpecuariainverno;
                areaaproveitavelverao += areatotalpecuariaverao;
                areamedia = (areatotalpecuariainverno + areatotalpecuariaverao) / 2;
                areatotal += areaaproveitavelverao;
                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("areatotalpecuariainverno").innerHTML += " " + areatotalpecuariainverno + " HM²";
                document.getElementById("areatotalpecuariaverao").innerHTML += " " + areatotalpecuariaverao + " HM²";
                document.getElementById("areaaproveitavelinverno").innerHTML += " " + areaaproveitavelinverno + " HM²";
                document.getElementById("areaaproveitavelverao").innerHTML += " " + areaaproveitavelverao + " HM²";
                document.getElementById("areatotal").innerHTML += " " + areatotal + " HM²";
                document.getElementById("areamedia").innerHTML += " " + areamedia + " HM²";

                $("[type=submit]").prop("disabled", false);
                cont = 1;
                $("#calcular").attr("href", null);
            }
        } else {
            $("[type=submit]").prop("disabled", true);
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var areatotalpecuariainverno = 0;
                var areatotalpecuariaverao = 0;
                var areaaproveitavelinverno = 0;
                var areaaproveitavelverao = 0;
                var areatotal = 0;
                var areamedia = 0;

                for (i = 0; i < x.length; i++) {

                    if (i <= 2) {
                        areatotalpecuariainverno += parseInt(x[i].value);
                        areatotalpecuariaverao += parseInt(x[i].value);
                    }
                    if (i === 3) {
                        areatotalpecuariainverno += parseInt(x[i].value);
                    }
                    if (i === 4) {
                        areatotalpecuariaverao += parseInt(x[i].value);
                    }
                    if (i === 5) {
                        areaaproveitavelinverno += parseInt(x[i].value);
                    }
                    if (i === 6) {
                        areaaproveitavelverao += parseInt(x[i].value);
                    }

                    if (i === 7 || i === 9) {
                        areaaproveitavelinverno += parseInt(x[i].value);
                        areaaproveitavelverao += parseInt(x[i].value);
                    }
                    if (i === 8 || i === 10 || i === 11) {
                        areatotal += parseInt(x[i].value);
                    }



                }

                areaaproveitavelinverno += areatotalpecuariainverno;
                areaaproveitavelverao += areatotalpecuariaverao;
                areamedia = (areatotalpecuariainverno + areatotalpecuariaverao) / 2;
                areatotal += areaaproveitavelverao;
                document.getElementById("areatotalpecuariainverno").innerHTML = "Área Total da Pecuária no Inverno: " + areatotalpecuariainverno + " HM²";
                document.getElementById("areatotalpecuariaverao").innerHTML = "Área Total da Pecuária no Verão: " + areatotalpecuariaverao + " HM²";
                document.getElementById("areaaproveitavelinverno").innerHTML = "Total de Área Aproveitável no Inverno: " + areaaproveitavelinverno + " HM²";
                document.getElementById("areaaproveitavelverao").innerHTML = "Total de Área Aproveitável no Verão: " + areaaproveitavelverao + " HM²";
                document.getElementById("areatotal").innerHTML = "Área Total: " + areatotal + " HM²";
                document.getElementById("areamedia").innerHTML = "Área Média da Pecuária: " + areamedia + " HM²";

                $("#calcular").attr("href", null);
                $("[type=submit]").prop("disabled", false);
            }

        }

    });
}
;










function lv2p2(area) {
    var cont = 0;
    $("[type=submit]").prop("disabled", true);

    $("#calcular").click(function () {
        if (cont === 0) {
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalb = 0;
                var totalbjm = 0;
                var totalbaj = 0;
                var cont1 = 0;
                var totalbjs = 0;
                var totalbod = 0;
                var percentualrebanhocomcria = 0;
                var lotacaomedia = 0;

                for (i = 0; i < x.length; i++) {
                    if (cont1 === 4) {
                        cont1 = 0;
                    }
                    if (cont1 === 0) {
                        totalbjm += parseInt(x[i].value);

                    }
                    if (cont1 === 1) {
                        totalbaj += parseInt(x[i].value);

                    }
                    if (cont1 === 2) {
                        totalbjs += parseInt(x[i].value);

                    }
                    if (cont1 === 3) {
                        totalbod += parseInt(x[i].value);


                    }
                    if ((i >= 0 && i <= 3) || (i >= 8 && i <= 11) || (i >= 12 && i <= 19) || (i >= 24 && i <= 27) || (i >= 32 && i <= 35)) {
                        percentualrebanhocomcria += parseInt(x[i].value);
                    }
                    totalb += parseInt(x[i].value);

                    cont1++;


                }

                percentualrebanhocomcria = (percentualrebanhocomcria / totalb) * 100;
                lotacaomedia = totalb / area;

                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("totalb").innerHTML += " " + totalb + " Cabeça(s)";
                document.getElementById("totalbjm").innerHTML += " " + totalbjm + " Cabeça(s)";
                document.getElementById("totalbaj").innerHTML += " " + totalbaj + " Cabeça(s)";
                document.getElementById("totalbjs").innerHTML += " " + totalbjs + " Cabeça(s)";
                document.getElementById("totalbod").innerHTML += " " + totalbod + " Cabeça(s)";
                document.getElementById("percentualrebanhocomcria").innerHTML += " " + percentualrebanhocomcria + " %";
                document.getElementById("lotacaomedia").innerHTML += " " + lotacaomedia + " Cabeça(s)/Hectare";

                $("[type=submit]").prop("disabled", false);
                cont = 1;
                $("#calcular").attr("href", null);
            }
        } else {
            $("[type=submit]").prop("disabled", true);
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalb = 0;
                var totalbjm = 0;
                var totalbaj = 0;
                var cont1 = 0;
                var totalbjs = 0;
                var totalbod = 0;
                var percentualrebanhocomcria = 0;
                var lotacaomedia = 0;

                for (i = 0; i < x.length; i++) {
                    if (cont1 === 4) {
                        cont1 = 0;
                    }
                    if (cont1 === 0) {
                        totalbjm += parseInt(x[i].value);

                    }
                    if (cont1 === 1) {
                        totalbaj += parseInt(x[i].value);

                    }
                    if (cont1 === 2) {
                        totalbjs += parseInt(x[i].value);

                    }
                    if (cont1 === 3) {
                        totalbod += parseInt(x[i].value);

                    }
                    if ((i >= 0 && i <= 3) || (i >= 8 && i <= 11) || (i >= 12 && i <= 19) || (i >= 24 && i <= 27) || (i >= 32 && i <= 35)) {
                        percentualrebanhocomcria += parseInt(x[i].value);
                    }
                    totalb += parseInt(x[i].value);
                    cont1++;



                }

                percentualrebanhocomcria = (percentualrebanhocomcria / totalb) * 100;
                lotacaomedia = totalb / area;

                document.getElementById("totalb").innerHTML = "Total de Bovinos: " + totalb + " Cabeça(s)";
                document.getElementById("totalbjm").innerHTML = "Total de Bovinos de Janeiro a Março: " + totalbjm + " Cabeça(s)";
                document.getElementById("totalbaj").innerHTML = "Total de Bovinos de Abril a Junho: " + totalbaj + " Cabeça(s)";
                document.getElementById("totalbjs").innerHTML = "Total de Bovinos de Julho a Setembro: " + totalbjs + " Cabeça(s)";
                document.getElementById("totalbod").innerHTML = "Total de Bovinos de Outubro a Dezembro: " + totalbod + " Cabeça(s)";
                document.getElementById("percentualrebanhocomcria").innerHTML = "Percentual do Rebanho com Atividade de Cria: " + percentualrebanhocomcria + " %";
                document.getElementById("lotacaomedia").innerHTML = "Lotação Média da Propriedade: " + lotacaomedia + " Cabeça(s)/Hectare";

                $("[type=submit]").prop("disabled", false);
                $("#calcular").attr("href", null);
            }

        }

    });
}
;

function lv2p3(area) {
    var cont = 0;
    $("[type=submit]").prop("disabled", true);

    $("#calcular").click(function () {
        if (cont === 0) {
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalb = 0;
                var totalreceita = 0;
                var receitahectare = 0;


                for (i = 0; i < x.length; i++) {

                    if (i >= 0 && i <= 10) {
                        totalb += parseInt(x[i].value);
                        totalreceita += parseInt(x[i].value) * parseInt(x[i + 11].value);

                    }



                }



                receitahectare = totalreceita / area;
                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("totalb").innerHTML += " " + totalb + " Cabeça(s)";
                document.getElementById("totalreceita").innerHTML += " " + totalreceita + " R$";
                document.getElementById("receitahectare").innerHTML += " " + receitahectare + " R$/HM²";


                $("[type=submit]").prop("disabled", false);
                cont = 1;
                $("#calcular").attr("href", null);
            }
        } else {
            $("[type=submit]").prop("disabled", true);
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalb = 0;
                var totalreceita = 0;
                var receitahectare = 0;


                for (i = 0; i < x.length; i++) {

                    if (i >= 0 && i <= 10) {
                        totalb += parseInt(x[i].value);
                        totalreceita += parseInt(x[i].value) * parseInt(x[i + 11].value);

                    }



                }

                receitahectare = totalreceita / area;
                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("totalb").innerHTML = "Total de Bovinos: " + totalb + " Cabeça(s)";
                document.getElementById("totalreceita").innerHTML = "Total de Receita de Bovinos " + totalreceita + " R$";
                document.getElementById("receitahectare").innerHTML = "Receita por Hectare " + receitahectare + " R$/HM²";

                $("#calcular").attr("href", null);
                $("[type=submit]").prop("disabled", false);
            }

        }

    });
}
;


function lv2p4(area, terneiros, porcentagem) {
    var cont = 0;
    $("[type=submit]").prop("disabled", true);

    $("#calcular").click(function () {
        if (cont === 0) {
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalcustoproducao = 0;
                var custoatividadecria = 0;
                var custoproducaohectar = 0;
                var custoterneiro = 0;

                for (i = 0; i < x.length; i++) {

                    totalcustoproducao += parseInt(x[i].value);



                }
                custoatividadecria += totalcustoproducao * (porcentagem / 100);
                custoproducaohectar += custoatividadecria / area;
                custoterneiro += custoatividadecria / terneiros;



                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("totalcustoproducao").innerHTML += " " + totalcustoproducao + " R$";
                document.getElementById("custoatividadecria").innerHTML += " " + custoatividadecria + " R$";
                document.getElementById("custoproducaohectar").innerHTML += " " + custoproducaohectar + " R$/HM²";
                document.getElementById("custoterneiro").innerHTML += " " + custoterneiro + " R$/Cabeça(s)";


                $("[type=submit]").prop("disabled", false);
                cont = 1;
                $("#calcular").attr("href", null);
            }
        } else {
            $("[type=submit]").prop("disabled", true);
            if (validarForm()) {
                var x = document.getElementsByClassName("form-control");
                var totalcustoproducao = 0;
                var custoatividadecria = 0;
                var custoproducaohectar = 0;
                var custoterneiro = 0;

                for (i = 0; i < x.length; i++) {

                    totalcustoproducao += parseInt(x[i].value);



                }
                custoatividadecria += totalcustoproducao * (porcentagem * 100);
                custoproducaohectar += custoatividadecria / area;
                custoterneiro += custoatividadecria / terneiros;



                $("#infocalculo").fadeIn(3000, "linear");
                document.getElementById("totalcustoproducao").innerHTML += "Total Custos de Produção: " + totalcustoproducao + " R$";
                document.getElementById("custoatividadecria").innerHTML += "Custo Atividade de Cria: " + custoatividadecria + " R$";
                document.getElementById("custoproducaohectar").innerHTML += "Custo de Produção por Hectare: " + custoproducaohectar + " R$/HM²";
                document.getElementById("custoterneiro").innerHTML += "Custo de Produção por Terneiro Desmamado: " + custoterneiro + " R$/Cabeça(s)";

                $("#calcular").attr("href", null);
                $("[type=submit]").prop("disabled", false);
            }

        }

    });
}
;