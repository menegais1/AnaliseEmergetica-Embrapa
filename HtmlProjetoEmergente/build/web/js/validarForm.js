





function validarForm() {



    var x = document.getElementsByClassName("form-control");
    var cont = 0;
    var teste;
    var valor=0;

    for (var i = 0; i < x.length; i++) {
        x[i].id = x[i].name;
        valor = x[i].value.replace(/\./g, "");
        valor = valor.replace(",", ".");

        
        if (valor === "") {
            $("#" + x[i].id).css({"border-color": "#ff0000"});
            $("#calcular").attr("href", "#" + x[i].id);
            x[i].value = 0;

        } else if (valor < 0) {
            $("#" + x[i].id).css({"border-color": "#ff0000"});
            $("#calcular").attr("href", "#" + x[i].id);
            cont++;
        } else if (valor > 9999999) {
            $("#" + x[i].id).css({"border-color": "#ff0000"});
            $("#calcular").attr("href", "#" + x[i].id);
            cont++;
        } else if (valor !== "" && valor >= 0 && valor <= 9999999 ) {
            $("#" + x[i].id).css({"border-color": "#00ff00"});
        }



        $("#" + x[i].id).keyup(function () {
            if (this.value !== "" && this.value >= 0 && this.value <= 9999999) {
                $("#" + this.id).css({"border-color": "#00ff00"});
                $("[type=submit]").prop("disabled", false);
            } else if (this.value === "") {
                $("#" + this.id).css({"border-color": "#ff0000"});
                $("[type=submit]").prop("disabled", true);

            } else if (this.value < 0) {
                $("#" + this.id).css({"border-color": "#ff0000"});
                $("[type=submit]").prop("disabled", true);
            } else if (this.value > 9999999) {
                $("#" + this.id).css({"border-color": "#ff0000"});
                $("[type=submit]").prop("disabled", true);
            }


        });





    }
    if (cont >= 1) {
        return false;
    }

    return true;
}


