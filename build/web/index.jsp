<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Book"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Serendipia</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="top-bar">
        <div>
            <h1>Serendipia</h1>
            
            <p class="subtitle">Catálogo de libros disponibles</p>
        </div>
        <a href="add.jsp" class="btn btn-gold">+ Añadir Libro</a>
    </div>

    <div class="box">
        <h2>Catálogo y Búsqueda</h2>

        
        <form action="libreria" method="GET">
            <div class="filter-group">
                <input type="text" name="searchName" placeholder="Título..." value="${param.searchName}">
                <input type="text" name="searchAuthor" placeholder="Autor..." value="${param.searchAuthor}">
            </div>
            <div class="filter-group">
                <input type="number" step="0.01" name="minPrice" placeholder="Precio mín" value="${param.minPrice}">
                <input type="number" step="0.01" name="maxPrice" placeholder="Precio máx" value="${param.maxPrice}">

                <button type="submit" class="btn-bronze">Filtrar</button>
                <a href="libreria" class="btn btn-outline" style="color:#330E29; border-color:#330E29;">Limpiar</a>
            </div>
        </form>

        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Book> books = (List<Book>) request.getAttribute("bookList");

                    if (books != null && !books.isEmpty()) {
                        for (Book b : books) {
                %>
                <tr>
                    <td><%= b.getName() %></td>
                    <td><%= b.getAuthor() %></td>
                    <td>$<%= String.format("%.2f", b.getPrice()) %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="3" style="text-align: center; color: #888;">No hay libros que coincidan con la búsqueda.</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

</body>
</html>
