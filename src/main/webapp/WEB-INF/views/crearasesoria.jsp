<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Crear Asesorias</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.js"></script>
    <script src="resources/javascript/validarForm.js"></script>
</head>
<body>
<header  >
    <div class="imgHeader">
        <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
    </div>  
     <%@include file="menu.jsp"%>
    <h1>Crear Asesorias</h1>
 </header>
<main> 
    
    <div class="container"> 
        <form id="crearasesoria" action= "${pageContext.request.contextPath}/crearasesoria" method="POST">      
            <div class="mb-3">
                <label for="nombreUsuario" class="form-label">Codigo unico:</label>
                <input class="form-control" type="number" name="codigounico" id="codigounico" required>
            </div> 
                       
            <div class="mb-3">
                <label for="fecharealizacion"class="form-label">Fecha de realización: </label>
                <input type="text" class="form-control" name="fecharealizacion" id="fecharealizacion" required>
            </div>
            <div class="mb-3">
                <label for="motivoasesoria"  class="form-label">Motivo: </label>
                <input type="text" class="form-control" name="motivoasesoria" id="motivoasesoria"  required>
            </div>
            
             <div class="mb-3">
				<label class="form-label">Clientes:</label>
				
				<select class="form-select" name="cliente_runUsuario" required="required">
				<c:forEach var="c" items="${clientes}">
					 <option value="${c.getCliente_runUsuario()}">
						<c:out value="${c.getCliente_runUsuario()}"></c:out> <c:out value="${c.getNombres()}"></c:out>
					</option> 
				</c:forEach>
				</select> 
				<input type="hidden" value="${p.getProf_runUsuario()}" id="cliente_runUsuario" name="cliente_runUsuario">
			</div> 
             
            <div class="mb-3">
				<label class="form-label">Profesional:</label>
				
				<select class="form-select" name="prof_runUsuario" required="required">
				<c:forEach var="p" items="${profess}">
					 <option value="${p.getProf_runUsuario() }">
						<c:out value="${p.getProf_runUsuario()}"></c:out> <c:out value="${p.getTitulo()}"></c:out>
					</option> 
				</c:forEach>
				</select> 
				<input type="hidden" value="${p.getProf_runUsuario()}" id="prof_runUsuario" name="prof_runUsuario">
			</div>     
         
            <div class="mb-3">
                <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
                <button type="submit" class="btn btn-primary" onclick="validarForm();">Guardar</button>
            </div>
                      
          </form> 

    </div>
    
</main>	
 
    <%@include file="pie.jsp"%>
  </body>
</html>