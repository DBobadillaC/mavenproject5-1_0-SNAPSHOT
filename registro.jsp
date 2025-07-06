<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f1f1;
            padding: 50px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        button:hover {
            background-color: #218838;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Registro de Usuario</h2>
    <form action="RegistroServlet" method="post">
        <input type="text" name="nombre" placeholder="Nombre completo" required>
        <input type="number" name="edad" placeholder="Edad (mínimo 15)" required min="15">
        <select name="sexo" required>
            <option value="">Seleccione su sexo</option>
            <option value="M">Masculino</option>
            <option value="F">Femenino</option>
        </select>
        <input type="number" name="estatura" placeholder="Estatura en metros (1.0 a 2.5)" step="0.01" min="1" max="2.5" required>
        <input type="text" name="usuario" placeholder="Nombre de usuario" required>
        <input type="password" name="clave" placeholder="Contraseña" required>
        <button type="submit">Registrarse</button>
    </form>
    <a href="index.jsp" class="back-link">Volver al inicio</a>
</div>
</body>
</html>
