<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calcular IMC</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f5f5f5;
            padding: 40px;
        }

        .box {
            max-width: 500px;
            margin: auto;
            background: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #17a2b8;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        button:hover {
            background-color: #138496;
        }

        .nav-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="box">
    <h2>Calcular tu IMC</h2>
    <form action="CalculoIMCServlet" method="post">
        <input type="number" name="masa" placeholder="Ingrese su masa (kg)" step="0.01" min="1" required>
        <button type="submit">Calcular IMC</button>
    </form>
    <a class="nav-link" href="historial.jsp">Ver historial de cálculos</a>
</div>
</body>
</html>
