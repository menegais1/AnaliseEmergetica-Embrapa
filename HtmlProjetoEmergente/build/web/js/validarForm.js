





function validarForm() {



    var x = document.getElementsByClassName("form-control");
    var y = document.getElementsByClassName("label-control");
    var cont = 0;
    var teste;

    for (var i = 0; i < x.length; i++) {
        x[i].id = x[i].name;
        y[i].id = x[i].id + "-label";
        if (x[i].value === "") {
            $("#" + x[i].id).css({"border-color": "#ff0000"});
            $("#calcular").attr("href", "#" + x[i].id);

            y[i].innerHTML = "<span style='color:red'>Esse campo deve ser preenchido</span>";
            cont++;
        } else if (x[i].value < 0) {
            $("#" + x[i].id).css({"border-color": "#ff0000"});
            $("#calcular").attr("href", "#" + x[i].id);
            y[i].innerHTML = "<span style='color:red'>Valor deve ser maior que 0</span>";
            cont++;
        } else if (x[i].value > 9999999) {
            $("#" + x[i].id).css({"border-color": "#ff0000"});
            $("#calcular").attr("href", "#" + x[i].id);
            y[i].innerHTML = "<span style='color:red'>Valor muito alto</span>";
            cont++;
        } else if (x[i].value !== "" && x[i].value >= 0 && x[i].value <= 9999999) {
            $("#" + x[i].id).css({"border-color": "#00ff00"});
            y[i].innerHTML = "<span class='glyphicon glyphicon-ok' style='color:green'></span>";
        }
        
        teste = y[i].id;
        $("#" + x[i].id).keyup(function () {
            if (this.value !== "" && this.value >= 0 && this.value <= 9999999) {
                $("#" + this.id).css({"border-color": "#00ff00"});
                $("[type=submit]").prop("disabled", false);
                $("#"+ this.id +"-label").html("<span class='glyphicon glyphicon-ok' style='color:green'></span>");
            } else if (this.value === "") {
                $("#" + this.id).css({"border-color": "#ff0000"});
                $("[type=submit]").prop("disabled", true);
                $("#"+ this.id +"-label").html("<span style='color:red'>Esse campo deve ser preenchido</span>");

            } else if (this.value < 0) {
                $("#" + this.id).css({"border-color": "#ff0000"});
                $("[type=submit]").prop("disabled", true);
                $("#"+ this.id +"-label").html("<span style='color:red'>Valor deve ser maior que 0</span>");
            } else if (this.value > 9999999) {
                $("#" + this.id).css({"border-color": "#ff0000"});
                $("[type=submit]").prop("disabled", true);
                $("#"+ this.id +"-label").html("<span style='color:red'>Valor muito alto</span>");
            }

        });





    }
    if (cont >= 1) {
        return false;
    }

    return true;
}


