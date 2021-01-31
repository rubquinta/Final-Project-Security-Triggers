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
    <title>Listado de usuarios</title>
</head>
<body>
   <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
        <%@include file="menu.jsp"%>
        <h1>Listado de usuarios</h1>
    </header>

    <main>
    
  
    
       <table class="table table-hover">
            <thead>
            <tr>
                <th><strong>RUN</strong></th>
                <th><strong>Nombres</strong></th>               
                <th><strong>Tipo de Usuario</strong></th>
                <th><strong>Eliminar y Modificar Usuario</strong></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="u" items="${usuarios}">
	            <tr>
	                <td><c:out value="${u.getRun()}"></c:out></td>
	                <td><c:out value="${u.getNombre()}"></c:out></td>       
	                <td><c:out value="${u.getTipoUsuario()}"></c:out></td>
	                <td> <a href="${pageContext.request.contextPath}/editar/${u.getTipoUsuario()}/${u.getRun()}"> <img id="imgeditar" src="resources/img/editar.png" title="editar"></a>
	                &nbsp;
	                &nbsp;
	                &nbsp;
	                <a href="${pageContext.request.contextPath}/eliminar/${u.getTipoUsuario()}/${u.getRun()}"><img id="imgeliminar" title="eliminar" src="resources/img/eliminar.png"></a> </td>
	            </tr>
            </c:forEach>
            
            </tbody>
        </table>

    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>
</body>
</html>