


$(document).ready(function () {

    
    $("#calcular").click(function () {
        if (validarForm()) {
            var x = document.getElementsByClassName("form-control");
            var totalm = 0;
            var totalf = 0;
            var totalcria = 0;
            var total = 0;
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
            $("#infocalculo").fadeIn(3000,"linear");
            document.getElementById("totalm").innerHTML += totalm;
            document.getElementById("totalf").innerHTML += totalf;
            document.getElementById("totalcria").innerHTML += totalcria;
            document.getElementById("total").innerHTML += total;
            $("[type=submit]").prop("disabled",false);
        }

    });
});


