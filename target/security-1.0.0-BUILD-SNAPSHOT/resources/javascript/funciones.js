var ctx = document.getElementById("clientesXcomuna").getContext("2d");
var myChart = new Chart(ctx,{
    type: "bar",
    data: {
        labels: ['Las Condes', 'Vitacura', 'Ñuñoa', 'Providencia', 'Lo Barnechea'],
        datasets: [{
            data: [150, 100, 50, 25, 180],
            backgroundColor: [
                'rgb(255, 151, 51)',
                'rgb(74, 181, 41)',
                'rgb(55, 204, 190)',
                'rgb(33, 32, 163)'
            ],
        }]
    },
    options: {
        title: {
            display: true,
            text: 'Clientes x Comuna',
            position: 'top'
        },
        scales:{
            yAxes:[{
                ticks:{
                    beginAtZero:true
                }
            }]
        }
    }
});

var ctx = document.getElementById("accidentesXvisitas").getContext("2d");
var myChart = new Chart(ctx,{
    type: "line",
    data: {
        labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo',
                'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre','Noviembre','Diciembre'],
        datasets: [{
            label: 'Accidentes',
            borderColor: 'rgb(255, 99, 132)',
            data: [150, 100, 50, 25, 200, 150, 43, 98, 123, 65, 70, 100],
            yAxesID: 'A'
        }, {
            label: 'Visitas',
            yAxisID:'B',
            data: [25, 15, 50, 140, 200, 80, 120, 60, 87, 100, 50, 68]
        }]
    },
    options:{
        title: {
            display: true,
            text: 'Accidentes x Visitas',
            position: 'top'
        },
        scales:{
            yAxes:[{
                id: 'A',
                type: 'linear',
                position: 'left',
            },{
                id: 'B',
                type: 'linear',
                position: 'right',
                ticks:{
                    beginAtZero:true
                }
            }]
        }
    }
});


var ctx = document.getElementById("chequeos").getContext("2d");
var myChart = new Chart(ctx,{
    type: "pie",
    data: {
        datasets: [{
            data: [70, 10, 20],
            backgroundColor: [
                'rgb(180,182,172)',
                'rgb(130,152,53)',
                'rgb(83,48,22)'
            ],
        }],
        labels: ['Chequeos Cumplidos', 'Chequeos no Cumplidos', 'Chequeos Cumplidos con Observación'],
    },
        options: {
            plugins: {
                datalabels: {
                    formatter: (value) => {
                        return value + "%";
                      }
                }
            },
            title: {
                display: true,
                text: 'Chequeos de Visitas',
                position: 'top'
            }
        }
});

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
