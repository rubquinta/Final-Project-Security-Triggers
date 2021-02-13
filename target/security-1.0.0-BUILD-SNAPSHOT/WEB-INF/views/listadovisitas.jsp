<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/style.css">
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Listado de visitas</title>
</head>
<body>
	<header>
		<div class="imgHeader">
			<img src="https://nana.pe/assets/images/Header/header-bg.jpg">
		</div>
		<%@include file="menu.jsp"%>
		<h1>Listado de visitas</h1>
	</header>

	<main>
		<table class="table table-hover" id="tabla">
			<tr>
				<td><strong>Id de Visita</strong></td>
				<td><strong>Fecha de Visita</strong></td>
				<td><strong>Hora de Visita </strong></td>
				<td><strong>Rut del cliente </strong></td>
				<td><strong>Nombre del cliente </strong></td>
				<td><strong>Chequeos</strong></td>
			</tr>
			<c:forEach var="v" items="${visita}">
				<tr>
					<td><c:out value="${v.getIdVisita()}"></c:out></td>
					<td><c:out value="${v.getFecha()}"></c:out></td>
					<td><c:out value="${v.getHora()}"></c:out></td>
					<td><c:out value="${v.getLugar()}"></c:out></td>
					<td><c:out value="${v.getComentarios()}"></c:out></td>
					<td><svg id="bot" width="50px" onclick="alerta();"
							height="50px" viewBox="0 0 16 16" class="bi bi-card-checklist"
							fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd"
								d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                    <path fill-rule="evenodd"
								d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z" />
                  	</svg></td>
				</tr>
			</c:forEach>
		</table>


	</main>

	<footer>
		<p>© 2020 Los Triggers, Inc.</p>
	</footer>

	<script>
		function alerta() {
			var mensaje;
			var opcion = confirm("¿Desea validar y modificar los chequeos de esta visita?");
			if (opcion == true) {
				redireccionar();
			}

		}

		function redireccionar() {
			console.log("aloha");
			document.location.href = "${pageContext.request.contextPath}/responderchecklist";
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>