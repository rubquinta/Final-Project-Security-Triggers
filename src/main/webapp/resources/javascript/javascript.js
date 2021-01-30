function validarArray(){
            
    let monto = document.getElementById("montoPago").value;

    let montoNum = parseInt(monto);

    let mes = document.getElementById("mesPago").value;

    let anho = document.getElementById("anhoPago").value;

    let anhoNum = parseInt(anho);

    let rut = document.getElementById("rutCliente").value;

    let rutNum = parseInt(rut);

    let campos = [monto, mes, anho, rut];

    var errores = "";

    let sinErrores = true;

    let meses = ["enero","febrero", "marzo", "abril", "mayo", "junio", "julio", 
        "agosto", "septiembre", "octubre", "noviembre", "diciembre"];
    
    campos.forEach(
        function(elemento, indice) {
            
           
            if ( (indice == 0 && isNaN(elemento)) || (indice == 0 && (montoNum < 0 || montoNum > 99999999)) ) {

                alert("Id de Venta: Debe ser Un numero mayor o igual a 0 y menor a 99.999.999 ");

                document.getElementById("montoPago").style.backgroundColor = "red";

                document.getElementById("montoPago").style.borderTopColor = "blue"
                //no me funcionan los de borde
                
                
                sinErrores = false;
            
            }else if((indice == 1 && !isNaN(elemento) && elemento != "") || indice == 1 && (meses.forEach(function(objeto, indice){
                elemento != objeto
            }))){

                alert("Mes de Pago debe ser correcto");

                document.getElementById("mesPago").style.backgroundColor = "red";

                sinErrores = false;

            }else if ((indice == 2 && isNaN(elemento)) || indice == 2 && (anhoNum < 2010 || anhoNum > 2050)) {

                alert("Anho de Pago debe ser numero entre 2010 y 2050");                    

                document.getElementById("anhoPago").style.backgroundColor = "red";

                sinErrores = false;
            
            }else if (indice == 0 && monto == ""){

                alert("Campo: Monto de Pago es Obligatorio");

                document.getElementById("montoPago").style.backgroundColor = "red";

                sinErrores = false;

            }else if (indice == 1 && mes == ""){

                alert("Campo:Mes de Pago es Obligatorio");

                document.getElementById("mesPago").style.backgroundColor = "red";

                sinErrores = false;

            }else if (indice == 2 && anho == ""){

                alert("Campos:Anho de Pago es Obligatorio");

                document.getElementById("anhoPago").style.backgroundColor = "red";

                sinErrores = false;

            }else if (indice == 3 && rut == ""){

                alert("Campos:Rut de Cliente es Obligatorio");

                document.getElementById("rutCliente").style.backgroundColor = "red";

                sinErrores = false;

            }else {
                    if ((indice == 3) && sinErrores==true){

                        alert("Campos Verificados");                    
                }
            }

                
        })//forEach

        
        
    };//valida array

    