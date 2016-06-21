





function validarForm() {
   
        
        
        var x= document.getElementsByClassName("form-control");
        
        for (var i = 0; i < x.length; i++) {

            if (x[i].value === "") {
                alert("Preencha todos os campos");
                return false;
            }
            if (x[i].value < 0 || x[i].value > 9999999) {
                alert("O valor deve ser maior ou igual a 0");
                return false;
            }

        }
         return true;

}
