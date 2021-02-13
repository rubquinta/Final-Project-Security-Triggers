<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesion</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" type="text/css" href="resources/style/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/inputmask/inputmask.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/jquery.inputmask.bundle.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/css/inputmask.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="resources/javascript/funciones2.js"></script>
   
</head>
<body>
    <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
        <%@include file="menu.jsp"%>
        <h1>Iniciar Sesion</h1>
    </header>

    <main>
		 <h3  style="color: red;">SESION CERRADA</h3>
		 
        <form id="accessform" action="${pageContext.request.contextPath}/login" method="post">
            <div class="mb-3">
                <label class="form-label"><b>Rut: </b><span>(Usuario: "cliente" o "admin" o "pro")</span></label>
                <br>
                <input type="text" name="username" class="form-control" id="rut" value="" required>
            </div>
            <div class="mb-3">
                <label class="form-label"><b>Contraseña: </b><span>(Contraseñas: "cliente" o "admin" o "pro")</span></label>
                <br>
                <input class="form-control" type="password" name="password" id="password" required>
            </div>
            <div class="mb-3">
                <input name="reset" type="reset" value="Limpiar" >
                <button name="submit" type="submit" class="btn-primary submit">Entrar</button>
            </div>
            
        </form>
		 
    </main>

    <%@include file="pie.jsp"%>
</body>
</html>