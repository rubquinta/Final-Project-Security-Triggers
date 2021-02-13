<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/style/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Visitas</title>
</head>
<body>
     <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
      <%@include file="menu.jsp"%>
        <h1>Formulario de Visitas</h1>
    </header>

    <main>
        <form action="${pageContext.request.contextPath}/crearvisita" method="post">
        	<div class="mb-3">
                <label for="idVisita" class="form-label">Id Visita</label>
                <input type="number" class="form-control" name="idVisita" id="idVisita" required>
            </div>
                       
             <div class="mb-3">
				<label for="rutCliente" class="form-label">Clientes:</label>
				
				<select class="form-select" name="rutCliente" required="required">
				<c:forEach var="c" items="${clientes}">
					 <option value="${c.getCliente_runUsuario()}">
						<c:out value="${c.getCliente_runUsuario()}"></c:out> <c:out value="${c.getNombres()}"></c:out>
					</option> 
				</c:forEach>
				</select> 
				<input type="hidden" value="${p.getCliente_runUsuario()}" id="rutCliente" name="rutCliente">
			</div> 
            
            
            <div class="mb-3">
                <label for="fecha" class="form-label">Fecha</label>
                <input type="text" class="form-control" name="fecha" id="fecha" required>
            </div>
            <div class="mb-3">
                <label for="hora" class="form-label">Hora</label>
                <input type="text" class="form-control" name="hora" id="hora" required>
              </div>
            <div class="mb-3">
                <label for="lugar" class="form-label">Lugar</label>
                <input type="text" class="form-control" name="lugar" id="lugar" required>
            </div>
            <div class="mb-3">
                <label for="comentarios" class="form-label">Comentarios</label>
                <input type="text" class="form-control" name="comentarios" id="comentarios" required>
            </div>
            <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
            <button type="submit" class="btn btn-primary">Guardar</button>
          </form>

    </main>

   <%@include file="pie.jsp"%>
</body>
</html>