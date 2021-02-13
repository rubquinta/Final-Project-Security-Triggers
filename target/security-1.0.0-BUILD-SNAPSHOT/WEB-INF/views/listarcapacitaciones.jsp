<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <title>Listado de Capacitaciones</title>
</head>
<body>
 <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
       <%@include file="menu.jsp"%>
        <h1>Listado de capacitaciones</h1>
    </header>

    <main>
        <table class="table table-hover">
            <tr>
                <td><strong>Id de capacitación</strong></td>
                <td><strong>RUT cliente</strong></td>
                <td><strong>Dia</strong></td>
                <td><strong>Hora</strong></td>
                <td><strong>Lugar</strong></td>
                <td><strong>Duracion</strong></td>
                <td><strong>Cantidad de Asistentes</strong></td>
            </tr>
            <c:forEach var="cap" items="${capa}">
            	<tr>
                <td><c:out value="${cap.getIdCapacitacion()}"></c:out></td>
                <td><c:out value="${cap.getRutCliente()}"></c:out></td>
                <td><c:out value="${cap.getdiaCapacitacion()}"></c:out></td>
                <td><c:out value="${cap.getHoraCapacitacion()}"></c:out></td>
                <td><c:out value="${cap.getLugarCapacitacion()}"></c:out></td>
                <td><c:out value="${cap.getDuracionCapacitacion()}"></c:out></td>
                <td><c:out value="${cap.getCantidadAsistentes()}"></c:out></td>
            </tr>
            </c:forEach>
            
            </table>

    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>
</body>
</html>