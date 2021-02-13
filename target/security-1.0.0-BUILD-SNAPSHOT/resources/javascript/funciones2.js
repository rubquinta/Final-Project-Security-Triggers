function validaForm() {
    $("#accessform").validate({
        rules: {
            rut: {
                required: true,
                minlength: 11,
                maxlength: 12
              },
              password: {
                required: true,
                number: true,
                minlength: 8,
                maxlength: 20
              }
            },
              messages: {
                rut: {
                    required: "Campo olbigatorio",
                    minlength: "Min Rut con largo incorrecto",
                    maxlength: "Max Rut con largo incorrecto"
                },
                password: {
                    required: "Campo olbigatorio",
                    number: "Favor ingresar solo numeros",
                    minlength: "Min Password con largo incorrecto",
                    maxlength: "Max Password con largo incorrecto"
                  }
              }
    });
}

function redireccionar(){
    document.location.href="listadousuarios.html";
    } 


function validaAcceso()
{
    var rut = document.getElementById("rut").value;
    var pass = document.getElementById("password").value;

    if(rut.length > 10 && rut.length < 13) 
    {
        if(pass.length > 8 && pass.length < 21)
        {
            alert("Ingreso exitoso");

            redireccionar();
        }
    }
}