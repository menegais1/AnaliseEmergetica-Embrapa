


function validarFormCadastro() {









    var cont = 0;
    var teste;
    if (document.getElementById("senhaconf").value !== document.getElementById("senha").value) {
        $("#senhaconf").css({"border-color": "#ff0000"});
        document.getElementById("senhaconf-label").innerHTML = "<span style='color:red'>As senhas devem ser iguais</span>";
        cont++;
    } else {
        $("#senhaconf").css({"border-color": "#00ff00"});
        document.getElementById("senhaconf-label").innerHTML = "<span class='glyphicon glyphicon-ok' style='color:green'></span>";
    }







    if (cont >= 1) {
        return false;
    }
    return true;
}





