
$().ready(function(){

$("#editarclienteForm").validate({
    rules: {
        runCliente: "required",
        nombresCliente: "required",
        apellidosCliente: "required",
        telefonoCliente: {
            required: true,
            minlength: 9
        },
        afp: "required",
        sistemadesalud: "required",
        direccion: "required",
        comuna: "required",
        edad: "required"

    },
    messages: {
        runCliente: "Por favor ingresa un Run Cliente",
        nombresCliente: "Por favor ingresa los nombres",
        apellidosCliente: "Por favor ingresa los apellidos",
        telefonoCliente : {
            required: "Por favor ingresa un telefono",
            minlength: "Por favor ingresa al menos 9 numeros"
        },
        afp: "por favor ingresa el nombre de la afp",
        sistemadesalud: "Por favor eligr un sistema de salud",
        direccion: "Por favor ingresa la direccion",
        comuna: "Por favor ingresa la comuna",
        edad: "Por favor ingresa la edad"

    }
});

})