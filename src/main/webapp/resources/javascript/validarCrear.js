$().ready(function(){

    $("#agregarasist").validate({
        rules: {
            idAsistente: {
                required: true,
                range: [0,10000]
            },
            nombreCompleto: {
                required: true,
                maxlength: 100
            },
            edad : {
                required : true,
                range : [0, 150]
            },
            email: {
                required: true,
                email: true
            },
            telefono:{                
                required: true,
                digits: true
            }
        },
        messages: {
            idAsistente: {
                required: "Por favor ingresa el codigo unico",
                range: "Ingresa un numero mayor a 0 y menor a 10000"
            },
            nombreCompleto: {
                required: "Por favor ingresa un Nombre Completo",
                maxlength: "Debe ser menor a 100 caracteres"
            },
            edad: {
                required: "Ingrese edad, campo abligatorio",
                range: "Edad debe ser un numero mayor a 0 y menor a 150"
            },
            email:{
                required: "Email obligatorio",
                email: "Ingresar Email Correcto"
            },
            telefono: {
                required: "Debe ingresar un numero de telefono",
                digits: "Solo se deben ingresar numero en este campo"            
            }
        }
    });         

})
