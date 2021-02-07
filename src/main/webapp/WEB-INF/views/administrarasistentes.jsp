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
    <!--Puglin Data Table-->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    
    <!--Validate-->
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>    
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.js"></script>
    <script src="resources/javascript/validarCrear.js"></script>
    
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
		
		<table id="listaasist" class="table table-hover">
		        	<thead>
                    <tr>
                        <th>Id Asistente</th>
                        <th>Nombre del Asistente</th>
                        <th>Correo Asistente</th>
                        <th>Teléfono de Asistente</th>
                        <th>Capacitacion de Asistente</th>
                        <th>Eliminar Asistente</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Id Asistente</th>
                        <th>Nombre del Asistente</th>
                        <th>Correo Asistente</th>
                        <th>Teléfono de Asistente</th>
                        <th>Capacitacion de Asistente</th>
                        <th>Eliminar Asistente</th>
                    </tr>
                </tfoot>
		         	<tbody>
		         	<c:forEach var="a" items="${asist}">
		        		<tr>
		        			<td><c:out value="${a.getRunAsistente()}"></c:out></td>
		        			<td><c:out value="${a.getAsistNombres()}"></c:out></td>
		        			<td><c:out value="${a.getAsistCorreo()}"></c:out></td>
		        			<td><c:out value="${a.getAsistTelefono()}"></c:out></td>
		        			<td><c:out value="${a.getCapacitacion_idCapacitacion()}"></c:out></td>
		        			<td><a href="${pageContext.request.contextPath}/eliminarasist/${a.getRunAsistente()}"><img id="imgeliminar" title="eliminar" src="resources/img/eliminar.png"></a> </td>
	        			</tr>
        			</c:forEach> 
		        </table>

	<br><br>
    
    <div class="container"> 
        <form id="agregarasist" action= "${pageContext.request.contextPath}/administrarasistentes" method="POST">      
            <div class="mb-3">
                <label for="runasistente" class="form-label">Run Asistente:</label>
                <input class="form-control" type="number" name="runasistente" id="runasistente" required>
            </div> 
                       
            <div class="mb-3">
                <label for="asistnombrecompleto"class="form-label">Nombre Asistente: </label>
                <input type="text" class="form-control" name="asistnombrecompleto" id="asistnombrecompleto" required>
            </div>
            <div class="mb-3">
                <label for="edadasist"class="form-label">Edad Asistente: </label>
                <input type="number" class="form-control" name="edadasist" id="edadasist" required>
            </div>
              <div class="mb-3">
                <label for="emailasist"class="form-label">E-mail Asistente: </label>
                <input type="text" class="form-control" name="emailasist" id="emailasist" required>
            </div>
              <div class="mb-3">
                <label for="telasist"class="form-label">Telefono Asistente: </label>
                <input type="number" class="form-control" name="telasist" id="telasist" required>
            </div>
            
             <div class="mb-3">
				<label class="form-label">Capacitacion:</label>
				
				<select class="form-select" name="capacitacion" required="required">
				<c:forEach var="c" items="${capa}">
					 <option value="${c.getIdCapacitacion()}">
						<c:out value="${c.getIdCapacitacion()}"></c:out> <c:out value="${c.getLugarCapacitacion()}"></c:out>
					</option> 
				</c:forEach>
				</select> 
				<input type="hidden" value="${p.getIdCapacitacion()}" id="capacitacion" name="capacitacion">
			</div> 
                 
            <div class="mb-3">
                <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
                <button type="submit" class="btn btn-primary"  >Guardar</button>
            </div>   
          </form> 

    </div>
    
</main>	 
    <%@include file="pie.jsp"%>
    
        <!--Datatable-->
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.6/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.6/js/responsive.bootstrap4.min.js"></script>
        
        <!--Jquery Datatable plugin-->
        <script>
            $(document).ready( function () {
                $('#listaasist').DataTable();
            } );
        
        </script>
       
        
  </body>
</html>