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
    <title>Listado de Pagos</title>
</head>
<body>

 <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
         <%@include file="menu.jsp"%>
        <h1>Listado de Pagos</h1>
    </header>

    <main>
        <table class="table table-hover">
        	<thead>
            <tr>
                <td><strong>Id del Pago</strong></td>
                <td><strong>Fecha del Pago</strong></td>
                <td><strong>Monto del Pago</strong></td>
                <td><strong>Mes del Pago</strong></td>
                <td><strong>Año del Pago </strong></td>
                <td><strong>Rut del Cliente </strong></td>
             
            </tr>
         	</thead>
         	<tbody>
         	<c:forEach var="p" items="${pagos}">
         		<tr>
         			<td><c:out value="${p.getIdPagos()}"></c:out></td>
         			<td><c:out value="${p.getFechaPago()}"></c:out></td>
         			<td><c:out value="${p.getMontoPago()}"></c:out></td>
         			<td><c:out value="${p.getMesPago()}"></c:out></td>
         			<td><c:out value="${p.getAnioPago()}"></c:out></td>
         			<td><c:out value="${p.getIdPagos_rutCliente()}"></c:out></td>
         		</tr>
         	</c:forEach>
         	</tbody>
         </table>

    </main>

   <%@include file="pie.jsp"%>

</body>
</html>