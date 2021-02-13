<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
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
    <title>Listado Asesorias</title>
</head>
<body>

 <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
         <%@include file="menu.jsp"%>
        <h1>Listado Asesorias</h1>
    </header>

    <main>
        <table class="table table-hover">
        	<thead>
            <tr>
                <td><strong>Id de Asesoria</strong></td>
                <td><strong>Fecha de Realizacion</strong></td> 
                <td><strong>Cliente</strong></td>
                <td><strong>Profesional: Run/Titulo</strong></td> 
             	<td><strong>Motivo Asesoria</strong></td>
            </tr>
         	</thead>
         	<tbody>
         	<c:forEach var="a" items="${asesorias}">
         		<tr>
         			<td><c:out value="${a.getIdAsesorias()}"></c:out></td>
         			<td><c:out value="${a.getAsefecharealizacion()}"></c:out></td>
         			
         			<td>
         				<c:forEach var="cli" items="${clientes}">
         					<c:if test="${a.getAsesorias_idCliente() == cli.getCliente_runUsuario()}">
         						<c:out value="${cli.getNombres()}"></c:out>
         					</c:if>
         				</c:forEach>
         			</td>
         			<td>
         				<c:forEach var="prof" items="${prof}">
         					<c:if test="${a.getAsesorias_idPro() == prof.getProf_runUsuario()}">
         						<c:out value="${prof.getProf_runUsuario()}"></c:out> <c:out value="${prof.getTitulo()}"></c:out>
         					</c:if>
         				</c:forEach>
         			</td>
         			<td><c:out value="${a.getAsemotivo()}"></c:out></td>
         		</tr>
         	</c:forEach>
         	
         	</tbody>
         </table>

    </main>

   <%@include file="pie.jsp"%>

</body>
</html>