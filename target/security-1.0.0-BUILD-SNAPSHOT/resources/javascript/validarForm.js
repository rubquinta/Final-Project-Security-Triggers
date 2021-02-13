
    $().ready(function(){
        $("#crearasesoria").validate({
            rules: {
                codigounico: "required",
                fecharealizacion: "required",
                motivoasesoria : "required",
                profesional: "required"
            },
            messages: {
                codigounico: "Por favor ingresa el codigo unico",
                fecharealizacion: "Por favor ingresa una fecha",
                motivoasesoria: "Por favor ingrea un motivo",
                profesional: "Por favor ingresa un profesional"
            }
        })
    })
