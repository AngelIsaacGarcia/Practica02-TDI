# Practica02-TDI

## Libreria

Aplicación Web desarrollada bajo la arquitectura MVC(Model - View - Controller) y la comunicación entre capas mediante el Servlet que funge como controlador y JSP cuyo proposito es la vista. Ambas partes necesarias para la recepción y muestra de la información procesada por el modelo.

Se trata de un CRUD simple sobre un catálogo de libros que nos permite añadir y obtener un listado de libros filtrados mediante nombre, autor o un rango de precio definido.

### Arquitectura MVC

```
Vista (JSP)  <---->  Controlador (Servlet)  <---->  Modelo (DAO / Book)
index.jsp             BookServlet                    BookDAO
add.jsp               (/libreria)                    Book
```

### Tecnologías
 
- Java 8 (JDK 1.8)
- Servlets + JSP (Java EE / Jakarta EE Web 3.1)
- GlassFish Server 4.1.1
- NetBeans

### Cómo ejecutar
 
1. Abre el proyecto en NetBeans.
2. Configura GlassFish 4.1.1 como servidor del proyecto.
3. Clic derecho en el proyecto → **Clean and Build**.
4. Clic derecho en el proyecto → **Run**.
5. Se abrirá en la URL `http://localhost:8080/Libreria/`.
