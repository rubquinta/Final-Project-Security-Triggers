<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/style/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de capacitacion</title>
</head>
<body>
     <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
      <%@include file="menu.jsp"%>
        <h1>Formulario de capacitacion</h1>
    </header>

    <main>
        <form action="${pageContext.request.contextPath}/crearcapacitacion" method="post">
        	<div class="mb-3">
                <label for="idCapacitacion" class="form-label">Id Capacitacion</label>
                <input type="number" class="form-control" name="idCapacitacion" id="idCapacitacion" required>
            </div>
            <div class="mb-3">
                <label for="rutCliente" class="form-label">RUT Cliente</label>
                <input type="text" class="form-control" name="rutCliente" id="rutCliente" required>
            </div>            
            <div class="mb-3">
                <label for="diaCapacitacion" class="form-label">Dia</label>
                <input type="text" class="form-control" name="diaCapacitacion" id="diaCapacitacion" required>
            </div>
            <div class="mb-3">
                <label for="horaCapacitacion" class="form-label">Hora</label>
                <input type="text" class="form-control" name="horaCapacitacion" id="horaCapacitacion" required>
              </div>
            <div class="mb-3">
                <label for="lugarCapacitacion" class="form-label">Lugar</label>
                <input type="text" class="form-control" name="lugarCapacitacion" id="lugarCapacitacion" required>
            </div>
            <div class="mb-3">
                <label for="duracionCapacitacion" class="form-label">Duracion</label>
                <input type="text" class="form-control" name="duracionCapacitacion" id="duracionCapacitacion" required>
            </div>
            <div class="mb-3">
                <label for="cantidadAsistentes" class="form-label">Cantidad de Asistentes</label>
                <input type="number" class="form-control" name="cantidadAsistentes" id="cantidadAsistentes" required>
            </div>
            
            <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
            <button type="submit" class="btn btn-primary">Guardar</button>
          </form>

    </main>

    <%@include file="pie.jsp"%>
</body>
</html>