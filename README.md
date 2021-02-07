# Final-Proyect-Security-Triggers
Proyecto Final JPA Spring Security API Rest
Curso: 156-3

Nombre del Grupo: Los Triggers


Nombre de los integrantes del grupo.

	Francisca Lastra { https://github.com/FranLastra/Final-Project-Security-Triggers }
	Rubén Quintana {https://github.com/rubquinta/Final-Project-Security-Triggers }
	Jeffrey Bustamante { https://github.com/yeeyee/Final-Project-Security-Triggers }


Contextualización del problema

Empresa de asesorías en prevención de riesgo necesita un sistema de información que le permita administrar toda la cantidad de información, que se genera, controlar las actividades y el recurso humano. El problema en sí, es la gestión, control y planificación de actividades, ya que por lo general los profesionales de la empresa están en terreno y no se cuenta con el tiempo suficiente para realizar reuniones y describir planificación, visitas y mejoras por objetivos.

Proceso

Desarrollo de un sitio web dinámico bajo el patrón de diseño MVC usando el framework de desarrollo Spring, conectándose a una base de datos Oracle.

Solución

Se ha desarrollado un sistema que asegura la mejor gestión de los procesos, la seguridad y la pronta eficacia al mostrar los datos al usuario.
Se diseña un sistema que permite la mejor distribución de cada uno de sus usuarios como Administrativos, profesionales y Cliente, para saber de forma mas eficaz y rápida en el momento de ocurrido un incidente.

El sistema delimita responsabilidades según el tipo de usuario navegando en la aplicación. 
Es decir uno tiene acceso denegado a diferentes áreas dependiente

Acceso a Usuario
<---Cliente--->
Usuario: cliente
Password: cliente
Accesos: Crear Capacitación, Listar Capacitación.  

<---Profesional--->
Usuario: pro
Password: pro
Acceso: Crear Asesoria, listar asesoria, crear visita, listar visita.  

<---Administrativo--->
Usuario: admin
Password: admin
Acceso: Crear Usuario, listary editar usuarios(cliente, administrativo o profesional), crear pagos y listar pagos. 

Todos los usuario tienen acceso a la página de inicio y a la página de contacto.
