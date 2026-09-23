<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Añadir Libro - Librería en Línea</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="form-page">
        <a href="libreria" class="back-link">&larr; Volver al catálogo</a>

        <div class="box">
            <h2>Añadir Nuevo Libro</h2>
            <form action="libreria" method="POST">
                <label>Título:</label>
                <input type="text" name="name" required>

                <label>Autor:</label>
                <input type="text" name="author" required>

                <label>Precio ($):</label>
                <input type="number" step="0.01" min="0" name="price" required>

                <button type="submit" class="btn-gold" style="width:100%;">Guardar Libro</button>
            </form>
        </div>
    </div>

</body>
</html>
