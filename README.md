Sistema de Alquiler de Películas - Evaluación LP2

Este es un proyecto desarrollado como parte de la evaluación de la asignatura **Lenguaje de Programación II (LP2)**. La aplicación permite registrar alquileres de películas a clientes, gestionando el estado del alquiler y el stock disponible.

---

# Tecnologías Usadas

-  Java 17
-  Spring Boot 3
   -  Spring Web
   -  Spring Data JPA
   -  Spring DevTools
-  Thymeleaf
-  Bootstrap 5
-  MySQL (Base de datos: `BD2_CHATI`)
-  Maven
-  Git y GitHub

---

# Estructura del Proyecto

src/
├── controller/ -> Controladores web (Spring MVC)
├── model/ -> Entidades JPA (Cliente, Pelicula, Alquiler, DetalleAlquiler)
├── repository/ -> Interfaces que extienden JpaRepository
├── service/ -> Lógica del negocio (uso de @Service)
├── templates/ -> Vistas Thymeleaf (form_alquiler.html)
└── application.yml -> Configuración de conexión a la base de datos

# Requisitos del Proyecto

✅ Migración de JPA puro a Spring Data JPA
✅ Registro de alquileres desde formulario web
✅ Uso de combo box para relaciones foráneas (clientes y películas)
✅ Cálculo automático del total del alquiler
✅ Validación de campos (obligatorios, enum, cantidades)
✅ Gestión de stock de películas
✅ Enum EstadoAlquiler con valores: ACTIVO, DEVUELTO, RETRASADO
✅ Uso de Thymeleaf para vistas web sin necesidad de JavaScript

# Base de Datos: BD2_CHATI

Incluye las siguientes tablas:

-> clientes(id_cliente, nombre, email) → 3 registros

-> peliculas(id_pelicula, titulo, genero, stock) → 3 registros

-> alquileres(id_alquiler, fecha, id_cliente, total, estado)

-> detalle_alquiler(id_alquiler, id_pelicula, cantidad)

El script SQL se encuentra en el archivo: BD2_CHATI_SCRIPT_SQL

# Pasos para Registrar un Alquiler

-> Seleccionar un cliente desde el combo.

-> Seleccionar películas marcando checkboxes e ingresando cantidades.

-> Seleccionar el estado del alquiler.

-> Procesar el formulario.

-> Se actualiza automáticamente el stock y se muestra un mensaje de éxito.

# Control de Versiones (Git)

Se creó una rama feature-upgrade para implementar mejoras.

Se realizaron commits con:

-> Implementación de Spring Data JPA.

-> Vista web con formulario funcional.

-> Script de base de datos.

-> Finalmente, se hizo un Pull Request hacia la rama main.

👨‍💻 Autor
José Edinson
Estudiante de Computación e Informática - Cibertec
GitHub: @cypez-dev
