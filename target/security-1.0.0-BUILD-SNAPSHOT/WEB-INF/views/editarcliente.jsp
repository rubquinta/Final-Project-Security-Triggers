<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.js"></script>
    <script src="/resources/javascript/editarcliente.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Cliente</title>
</head>
<body>
 <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
       <%@include file="menu.jsp"%>
        <h1>Editar Cliente</h1>
    </header>

    <main>
    <div class="container">
    	<form>
    		<div class="mb-3">
                <label for="nombreUsuario" class="form-label">Nombres</label>
                <input type="text" class="form-control" id="nombreUsuario" name="nombre" readonly="readonly" value="${usuario.getNombre()}" required>
            </div>  
            <div class="mb-3">
                <label for="run" class="form-label">Run</label>
                <input type="number" class="form-control" id="run" name="run" readonly="readonly" value="${usuario.getRun()}" required>
            </div>
            <div class="mb-3">
                <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
                <input type="text" class="form-control" id="fechaNacimiento" name="fechaNacimiento" readonly="readonly" value="${usuario.getFechaNacimiento()}" required>
            </div>
            <div class="mb-3">
                <label for="tipoUsuario" class="form-label">Tipo de Usuario</label>
                <input type="text" class="form-control" id="tipoUsuario" name="tipoUsuario" readonly="readonly" value="${usuario.getTipoUsuario()}" required>
            </div>
            
    	</form>
    </div>
    
    <div class="container"> 
        <form action= "${pageContext.request.contextPath}/editar/Cliente" method="POST" >      
  		        
                 
                <input type="hidden" class="form-control" id="run" name="run" readonly="readonly" value="${usuario.getRun()}" required>
             
            <div class="mb-3">
                <label for="runCliente" class="form-label">RUT Cliente</label>
                <input type="text" name="rutCliente" class="form-control" id="rutCliente" value="${cliente.getRut()}">
            </div>
            <div class="mb-3">
                <label for="nombresCliente" class="form-label">Nombres</label>
                <input type="text" name="nombresCliente" class="form-control" id="nombresCliente" value="${cliente.getNombres()}">
            </div>
            <div class="mb-3">
                <label for="apellidosCliente" class="form-label">Apellidos</label>
                <input type="text" name="apellidosCliente" class="form-control" id="apellidosCliente" value="${cliente.getApellidos()}">
            </div>
            <div class="mb-3">
                <label for="telefonoCliente" class="form-label">Telefono</label>
                <input type="tel" name="telefonoCliente" class="form-control" id="telefonoCliente" value="${cliente.getTelefono()}">
            </div>
            <div class="mb-3">
                <label for="afp" class="form-label">AFP</label>
                <input type="text" name="afp" class="form-control" id="afp" value="${cliente.getAfp()}">
            </div>
            <div class="mb-3">
                <label for="select" class="form-label" id="sistemadesalud">Sistema de salud</label>       
                <select class="form-select" id="sistema">  
                    <option selected value="${cliente.getSistemaSalud()}">${cliente.getSistemaSalud()}</option>           
                   <c:if test="${cliente.getSistemaSalud() == 'Fonasa'}">
						<option value="Isapre">Isapre</option>
						 
					</c:if> 					  
					<c:if test="${cliente.getSistemaSalud() == 'Isapre'}">
						<option value="Fonasa">Fonasa</option>
						 
					</c:if>       
				
				</select>       
                  
                <input type="hidden" name="sistemadesalud" id = "tipoSist" value="${cliente.getSistemaSalud()}">
            </div>
            <div class="mb-3">
                <label for="direccion" class="form-label">Direccion</label>
                <input type="text" name="direccion" class="form-control" id="direccion" value="${cliente.getDireccion()}">
            </div>
            <div class="mb-3">
                <label for="comuna" class="form-label">Comuna</label>
                <input type="text" name="comuna" class="form-control" id="comuna" value="${cliente.getComuna()}">
            </div>
            <div class="mb-3">
                <label for="edad" class="form-label">Edad</label>
                <input type="number" name="edad" class="form-control" id="edad" value="${cliente.getEdad()}">
            </div>
            <div class="mb-3">
                <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
                <input type="submit" class="btn btn-primary" value="Guardar">
            </div>
            
          </form>
          </div>

    </main>
    
    <script>
    $("select").change(function(){

  	  //Normalmente se envía el value del select
  	  var inputSelect = $("#sistema").val();
  	  console.log(inputSelect);
  	  
  	  //Puedes capturar el texto seleccionado
  	  var tipoS = $("select option:selected").text();
  	  
  	  //Y asignar el texto al input
  	  $("#tipoSist").val(tipoS);
  	});
    
    
    </script>

   <%@include file="pie.jsp"%>
</body>
</html>