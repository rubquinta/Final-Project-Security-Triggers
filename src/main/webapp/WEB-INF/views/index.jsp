<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resources/style/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Inicio</title>
</head>
<br>


<br>
<body>
    <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
       <%@include file="menu.jsp"%>
        
        
    </header>

    <main>
        <section class="articles">
            <article>
                <h2>Objetivo</h2>
                <p>En esta plataforma, usted podrá administrar los principales
                procesos en prevención de riesgos que se llevan a cabo día a día.</p>
            </article>
            <article>
                <h2>Quienes</h2>
                <p>Los principales usuarios de esta plataforma serán aquellos que 
                sean capaces de Administrar, posean una contratación de nuestros 
                servicios y aquellas personas encargadas de llevar un control de los posibles riesgos.</p>
                <p><b>Admisnitrativos, profesionales y clientes.</b></p>
            </article>
            <article>
                <h2>Procesos</h2>
                <p>En esta plataforma usted como usuario podra acceder a diferentes herramientas 
                dependiendo del tipo al que corresponda.</p>
            </article>
        </section>
        
    </main>   
        
    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>
    
</body>
</html>