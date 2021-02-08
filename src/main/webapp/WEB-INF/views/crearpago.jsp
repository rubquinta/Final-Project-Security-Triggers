<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resources/style/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	<title>Crear Pago</title>
</head>
<body>
	<header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
        <%@include file="menu.jsp"%>
        <h1>Crear Pago</h1>
    </header>

    <main>
        <form action= "${pageContext.request.contextPath}/crearpago" method="POST">
             <div class="mb-3">
                <label for="idPagos" class="form-label">Id del Pago</label>
                <input type="number" class="form-control" id="idPagos" name="idPagos" required>
            </div>
             <div class="mb-3">
                <label for="fechaPago" class="form-label">Fecha del Pago</label>
                <input type="text" class="form-control" id="fechaPago" name="fechaPago" required>
            </div>
            <div class="mb-3">
                <label for="montoPago" class="form-label">Monto del Pago</label>
                <input type="number" class="form-control" id="montoPago" name="montoPago" required>
            </div>
            <div class="mb-3">
                <label for="mesPago" class="form-label">Mes del pago</label>
                <input type="text" class="form-control" id="mesPago" name="mesPago" required>
              </div>
            <div class="mb-3">
                <label for="anioPago" class="form-label">Año del pago</label>
                <input type="text" class="form-control" id="anioPago" name="anioPago" required>
            </div>      
            
            <div class="mb-3">
				<label class="form-label">RUT Cliente:</label>
				
				<select class="form-select" name="idPagos_rutCliente" required="required">
				<c:forEach var="c" items="${clientes}">
					 <option value="${c.getCliente_runUsuario()}">
						<c:out value="${c.getCliente_runUsuario()}"></c:out> <c:out value="${c.getNombres()}"></c:out>
					</option> 
				</c:forEach>
				</select> 
				<input type="hidden" value="${p.getCliente_runUsuario()}" id="idPagos_rutCliente" name="idPagos_rutCliente">
			</div>   
            <div class="mb-3">
                <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
            
          </form>

    </main>

   <%@include file="pie.jsp"%>


</body>
</html>