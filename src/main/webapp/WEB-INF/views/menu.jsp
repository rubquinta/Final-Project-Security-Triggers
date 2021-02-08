<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Menu</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Inicio</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/contacto">Contacto</a>
                  </li>  
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/login">Login</a>
                  </li>                
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Capacitacion 
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/crearcapacitacion ">Crear capacitacion</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/listarcapacitacion ">Listar capacitaciones</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/administrarasistentes ">Administrar Asistentes</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Usuarios 
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/crearusuario">Crear usuario</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/listadousuarios">Listar usuarios</a></li>
                      
                    </ul>
                  </li>
                   <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Visita
                    </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/listadovisitas">Listado de Visitas</a></li>
                      <li> <a class="nav-link active" href="${pageContext.request.contextPath}/crearvisita" tabindex="-1">Crear Visita</a></li>                 
                    </ul>
                  </li>
                  
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Pagos
                    </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="nav-link active" href="${pageContext.request.contextPath}/listarpagos" tabindex="-1">Listado de Pagos</a></li>
                      <li> <a class="nav-link active" href="${pageContext.request.contextPath}/crearpago" tabindex="-1">Crear Pago</a></li>                 
                    </ul>
                  </li> 
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Asesorias
                    </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="nav-link active" href="${pageContext.request.contextPath}/listarasesoria" tabindex="-1">Listado de Asesorias</a></li>
                      <li> <a class="nav-link active" href="${pageContext.request.contextPath}/crearasesoria" tabindex="-1">Crear Asesorias</a></li>                 
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Reportes</a>
                  </li> 
                  <li class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/logout" tabindex="-1" >Salir</a>
                  </li>
                </ul>
              </div>
            </div>
        </nav>